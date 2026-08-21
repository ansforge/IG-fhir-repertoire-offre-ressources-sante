# Impacts pour les consommateurs des API JSON FHIR (main → update-dependencies-fr-core-annuaire)

## Comment lire ce document

Ce document complète [`impacts.md`](./impacts.md) (qui décrit les impacts côté **modèle FSH / StructureDefinition**) en se plaçant du point de vue d'un **client qui consomme l'API FHIR du ROR** : que reçoit-il en JSON aujourd'hui (branche `main`), que va-t-il recevoir demain (cette branche) ?

Pour chaque cas : un exemple JSON **avant**, un exemple JSON **après**, et une explication de ce qu'un client doit changer dans son code.

⚠️ **Avertissement méthodologique** : le projet ne possède pas d'instance d'exemple FSH pour `ROROrganization`, `RORPerson`, `RORPractitioner` ou `RORPractitionerRole` (seuls `RORLocation`, `RORHealthcareService`, `RORTask` et `RORQuestionnaire` ont des exemples dans `input/fsh/examples/`). Les JSON présentés ici pour ces ressources sont donc des **exemples reconstitués à la main** à partir des définitions de profils (FSH avant/après + `StructureDefinition` des dépendances `hl7.fhir.fr.core 2.2.0` / `ans.fhir.fr.annuaire 1.2.0-snapshot-2` inspectées dans le cache local `~/.fhir/packages`), et non générés par SUSHI. Les valeurs métier (numéros FINESS/RPPS, codes de profession, libellés...) sont fictives et illustratives. Les exemples issus de `input/fsh/examples/` (RORHealthcareService, RORLocation) sont en revanche fidèles au projet.

## Résumé — ce qui casse, ce qui ne casse pas

| # | Sujet | Rupture pour un client ? | Détail |
|---|---|---|---|
| 1 | `ROROrganization` (EJ/EG) : systèmes de code des identifiants | **Oui** | §1 — `identifier.type.coding.system`/`.code` changent de référentiel |
| 2 | `ROROrganization` : pôles/services deviennent `RORInternalOrganization` | **Oui** | §2 — nouveau `resourceType`/profil, plus jamais renvoyé comme `ROROrganization` |
| 3 | `ROROrganization` : UF médicales deviennent `RORCoreOrganizationUF` | **Oui** | §3 — idem |
| 4 | `type[statutJuridiqueINSEE]` / `type[sphParticipation]` : extension `as-ext-organization-types` | **À valider** (impact potentiel, cf. §4) | Point non tranché, signalé aussi dans `impacts.md` §9.3 |
| 5 | `RORHealthcareService.providedBy` : cible élargie/changée | **Oui** (côté résolution de référence) | §5 |
| 6 | `RORHealthcareService.location` / `.coverageArea` : `Location` nue interdite | **Oui** (si un client envoyait/attendait `Location` non-ROR) | §5 |
| 7 | `RORHealthcareServicePatientType` : système UCUM de `ageRange` | **Oui (silencieux)** | §6 — le système d'unité change de référentiel |
| 8 | `RORLocation` : parent technique `FRCoreLocationProfile` | **Non** | §7 — transparent pour le JSON produit par le ROR |
| 9 | `RORLocation.managingOrganization` : cible `fr-organization` → `fr-core-organization` | **Non pour la donnée, oui pour la validation** | §7 |
| 10 | `RORLocation.identifier[...].type` : `.system` désormais renseigné | **Non (additif / correctif)** | §7 |
| 11 | `RORPractitioner`/`RORPractitionerRole` : éclatement en 3 ressources (`RORPerson` + `RORPractitioner` + `RORPractitionerRole`) | **Oui, majeur** | §8 |
| 12 | Savoir-faire (spécialités, compétences...) : de `PractitionerRole.specialty` à `Practitioner.qualification` | **Oui, majeur** | §8.3 |
| 13 | Extensions `contracted`/`hasCAS`/`vitalAccepted` : nouvelle URL | **Oui** | §8.4 |
| 14 | Boîte MSS de `ROROrganization` (EJ/EG) : élément `telecom` supprimé du profil | **Oui** | §9a |
| 15 | Boîte MSS de `RORPractitioner`/`RORHealthcareService`/`RORInternalOrganization`/`RORCoreOrganizationUF` : migrées vers `AsMailboxMSSProfile` (`system`/`emailType` requis) | **Oui** | §9b |
| 16 | `RORTask`/`RORMeasureReport` : nouvelles cibles de référence possibles | **Non-bloquant, additif** | §10 |
| 17 | Dépendances (`sushi-config.yaml`) | **Indirect** | §11 |

---

## 1. `ROROrganization` (EJ/EG) : les identifiants changent de système de code

`ROROrganization` continue d'exister avec le même id canonique (`ror-organization`) pour les entités juridiques (EJ) et entités géographiques (EG). Mais son parent passe de `fr-organization` (FR Core 1.1.0) à `AsOrganizationProfile` (Annuaire Santé), qui **fixe déjà** le système de code de `identifier.type` sur `https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203` avec des codes mnémoniques, alors que le ROR utilisait jusqu'ici `TRE-G07-TypeIdentifiantStructure` avec des codes numériques.

**Avant :**

```json
{
  "resourceType": "Organization",
  "id": "eg-999999",
  "meta": {
    "profile": ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization"],
    "tag": [{ "system": ".../TRE-R30-RegionOM", "code": "06" }]
  },
  "identifier": [
    {
      "type": {
        "coding": [{
          "system": "https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure",
          "code": "1"
        }]
      },
      "system": "https://finess.esante.gouv.fr",
      "value": "060785432"
    },
    {
      "type": {
        "coding": [{
          "system": "https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure",
          "code": "3"
        }]
      },
      "system": "https://sirene.fr",
      "value": "26060785400012"
    }
  ],
  "name": "CENTRE HOSPITALIER EXEMPLE"
}
```

**Après :**

```json
{
  "resourceType": "Organization",
  "id": "eg-999999",
  "meta": {
    "profile": ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization"],
    "tag": [{ "system": ".../TRE-R30-RegionOM", "code": "06" }]
  },
  "identifier": [
    {
      "type": {
        "coding": [{
          "system": "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
          "code": "FINEG"
        }]
      },
      "system": "https://finess.esante.gouv.fr",
      "value": "060785432"
    },
    {
      "type": {
        "coding": [{
          "system": "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
          "code": "SIRET"
        }]
      },
      "system": "https://sirene.fr",
      "value": "26060785400012"
    }
  ],
  "name": "CENTRE HOSPITALIER EXEMPLE"
}
```

**Ce qui change concrètement :** `identifier.value` et `identifier.system` (`https://finess.esante.gouv.fr`, `https://sirene.fr`, `https://rppsrang.esante.gouv.fr`) restent **identiques**. Seul `identifier.type.coding.system`/`.code` change de référentiel :

| Identifiant | Ancien `type.coding.system` | Ancien code | Nouveau `type.coding.system` | Nouveau code |
|---|---|---|---|---|
| idNatSt | `TRE-G07-TypeIdentifiantStructure` | `40` | `fr-core-cs-v2-0203` | `IDNST` |
| numFINESS | `TRE-G07-TypeIdentifiantStructure` | `1` | `fr-core-cs-v2-0203` | `FINEJ`/`FINEG` |
| numSIREN | `TRE-G07-TypeIdentifiantStructure` | `2` | `fr-core-cs-v2-0203` | `SIREN` |
| numSIRET | `TRE-G07-TypeIdentifiantStructure` | `3` | `fr-core-cs-v2-0203` | `SIRET` |
| rppsRang | `TRE-G07-TypeIdentifiantStructure` | `4` | `fr-core-cs-v2-0203` | `RPPSRG` |
| adeliRang | `TRE-G07-TypeIdentifiantStructure` | `0` | *(inchangé)* `TRE-G07-TypeIdentifiantStructure` | `0` |

**Impact client :** tout code qui filtre/route les `identifier` de `ROROrganization` sur `identifier.type.coding.system = ".../TRE_G07-TypeIdentifiantStructure/..."` et/ou sur le code numérique (`"1"`, `"2"`, `"3"`, `"4"`, `"40"`) cesse de fonctionner pour idNatSt/FINESS/SIREN/SIRET/rppsRang. Seul `adeliRang` continue avec l'ancien référentiel. Il est recommandé de router plutôt sur `identifier.system` (inchangé) que sur `identifier.type`.

---

## 2. Pôles et services : ils ne sont plus des `ROROrganization`, mais des `RORInternalOrganization`

Avant, un pôle ou un service hospitalier était exposé comme une ressource `Organization` conforme à `ror-organization`, avec `type[OIType]` pour le distinguer d'une EJ/EG. Après, c'est toujours une ressrouce `Organization` mais conforme à un profil dédié `ror-internal-organization` (toujours `resourceType: Organization`, mais un autre `meta.profile`).

**Avant** (`meta.profile = ror-organization`) :

```json
{
  "resourceType": "Organization",
  "id": "oi-pole-chirurgie",
  "partOf": { "reference": "Organization/eg-999999" },
  "identifier": [{
    "type": { "coding": [{ "system": ".../TRE_R345-TypeIdentifiantAutre", "code": "42" }] },
    "system": "https://oi.esante.gouv.fr",
    "value": "OI-060785432-001"
  }],
  "name": "Pôle Chirurgie",
  "type": [{
    "coding": [{ "system": ".../JDV_J203-TypeOrganisationInterne-ROR", "code": "1" }]
  }]
}
```

**Après** (`meta.profile = ror-internal-organization`, nouveau profil) :

```json
{
  "resourceType": "Organization",
  "id": "oi-pole-chirurgie",
  "meta": {
    "profile": ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-internal-organization"]
  },
  "partOf": { "reference": "Organization/eg-999999" },
  "identifier": [{
    "type": { "coding": [{ "system": ".../TRE_R345-TypeIdentifiantAutre", "code": "42" }] },
    "system": "https://oi.esante.gouv.fr",
    "value": "OI-060785432-001"
  }],
  "name": "Pôle Chirurgie",
  "type": [{
    "coding": [{ "system": ".../JDV_J203-TypeOrganisationInterne-ROR", "code": "1" }]
  }]
}
```

**Impact client :** le contenu métier des pôles/services (identifiant OI, nom, type, boîte MSS, dates d'ouverture/fermeture) ne change pas de forme — c'est **`meta.profile`** (et, si le client filtre dessus, l'URL de canonical StructureDefinition) qui change. Tout client qui :
- identifie « c'est un pôle/service » en testant `meta.profile == ror-organization` **et** `type[OIType]` présent, doit désormais tester `meta.profile == ror-internal-organization` ;
- suit un `partOf` sur un pôle/service en s'attendant à une `ROROrganization` continue de fonctionner (le contenu de la ressource cible change de profil mais reste un `Organization`).

A noter: meta.profile n'était pas renseigné dans les flux retournés par l'API FHIR du modèle métier V3.
Sur cette nouvelle version de l'IG, il sera possible de filtrer sur les pôles/services en testant  `meta.profile == ror-internal-organization` avec une recherche FHIR `GET /Organization?_profile=.../ror-internal-organization` (de façon similaire pour les EG/EJ avec `?_profile=.../ror--organization` et pour les UF avec `?_profile=.../ror-core-organization-uf`)

---

## 3. Unités fonctionnelles (UF) : nouvelle ressource `RORCoreOrganizationUF`

Même changement que pour les pôles/services, mais pour les UF médicales, avec un troisième profil `ror-core-organization-uf` (hérité de `FRCoreOrganizationUFProfile`) :

```diff
- "profile": ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization"]
+ "profile": ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-core-organization-uf"]
```

Le contenu (identifiant OI, nom, `type[OIType]`, boîte MSS, dates) est structurellement identique à `RORInternalOrganization` — voir `impacts.md` §2 pour la remarque sur la duplication de ce contenu entre les deux nouveaux profils.

**Conséquence pratique pour un client qui affiche un organigramme EJ → EG → Pôle → Service → UF :** il devait auparavant faire un seul `GET /Organization?_profile=ror-organization` et distinguer les niveaux via `type`. Il doit désormais faire **jusqu'à 3 requêtes** (une par profil) ou effectuer un `_include`/`partOf` en cascade sur les 3 types de ressources pour reconstituer le même arbre.

---

## 4. `type[statutJuridiqueINSEE]` / `type[sphParticipation]` — point non tranché

`AsOrganizationProfile` porte nativement ces deux slices de `Organization.type`, mais impose une extension `as-ext-organization-types` (`min = 1`) sur le `CodeableConcept` lui-même, la valeur "officielle" étant censée être portée par `extension.value[x]` plutôt que directement par `type.coding`. Le ROR conserve son binding `required` directement sur `type[...].coding` sans peupler cette extension (`impacts.md` §2 et §9.3 demandent une revue métier sur ce point).

**Avant :**

```json
"type": [{
  "coding": [{ "system": ".../JDV_J199-StatutJuridique-ROR", "code": "01" }]
}]
```

**Après, tel que modélisé actuellement (extension non peuplée — à valider) :**

```json
"type": [{
  "coding": [{ "system": ".../JDV_J199-StatutJuridique-ROR", "code": "01" }]
}]
```

**Après, si la contrainte `min=1` d'`AsOrganizationProfile` sur l'extension est appliquée strictement (interprétation alternative) :**

```json
"type": [{
  "extension": [{
    "url": "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types",
    "valueCodeableConcept": { "coding": [{ "system": ".../JDV_J199-StatutJuridique-ROR", "code": "01" }] }
  }],
  "coding": [{ "system": ".../JDV_J199-StatutJuridique-ROR", "code": "01" }]
}]
```

**Impact client :** à ce stade, **aucun changement de forme n'est requis côté ROR** (le JSON produit reste la première forme), mais un client qui valide strictement les ressources contre `AsOrganizationProfile` avec un validateur FHIR pourrait signaler une non-conformité sur l'extension manquante. À surveiller jusqu'à ce que ce point (déjà identifié comme ouvert) soit tranché avec le métier.

---

## 5. `RORHealthcareService` : cibles de référence resserrées

- `providedBy` : `Reference(fr-organization or ROROrganization)` → `Reference(ROROrganization or RORInternalOrganization or RORCoreOrganizationUF)`
- `location` / `coverageArea` : `Reference(Location or RORLocation)` → `Reference(RORLocation)` uniquement

Le champ JSON `providedBy`/`location` lui-même (`{ "reference": "Organization/xxx" }`) ne change pas de forme, mais :

```diff
  "providedBy": { "reference": "Organization/oi-pole-chirurgie" }
```

est **désormais valide** (avant, seule une `ROROrganization` — EJ/EG — ou une `fr-organization` générique était une cible autorisée ; une offre portée par un pôle/service/UF n'était pas modélisable proprement). À l'inverse :

```diff
- "location": { "reference": "Location/generic-fr-core-location-42" }
```

n'est **plus valide** si cette `Location` n'est pas conforme à `RORLocation` — auparavant une `Location` FHIR R4 nue (non-ROR) pouvait être référencée.

**Impact client :** un client qui déréférence `providedBy` doit être prêt à recevoir une ressource `Organization/{id}` conforme à l'un de 3 profils désormais (contre 1 seul avant), et adapter en conséquence son affichage (« cette offre est portée par un pôle, pas par l'établissement lui-même »). Un client qui *envoie* des données vers l'API doit vérifier qu'il ne référence plus de `Location` générique.

Par ailleurs `identifier.type` de `RORHealthcareService` devient formellement `1..1 MS` (fixé à `TRE-R355-TypeIdentifiantOffre#35`) — dans la pratique, l'exemple projet le renseignait déjà avant ce changement, donc **aucune rupture réelle attendue** pour des données déjà conformes aux bonnes pratiques du projet, mais c'est désormais une exigence de validation stricte.

---

## 6. `RORHealthcareServicePatientType` : le système UCUM change (changement silencieux)

L'extension `ror-healthcareservice-patient-type.extension[ageRange]` (tranche d'âge du public pris en charge) fixait jusqu'ici l'unité sur le référentiel MOS `TRE-R247-UcumUniteMesure`. Elle utilise désormais directement le système UCUM standard `http://unitsofmeasure.org`, et le code est maintenant lié à la JDV `JDV-J37-UcumUniteTemps`.

**Avant :**

```json
{
  "url": "ageRange",
  "valueRange": {
    "low":  { "value": 15,  "system": "https://mos.esante.gouv.fr/NOS/TRE_R247-UcumUniteMesure/FHIR/TRE-R247-UcumUniteMesure", "code": "a" },
    "high": { "value": 150, "system": "https://mos.esante.gouv.fr/NOS/TRE_R247-UcumUniteMesure/FHIR/TRE-R247-UcumUniteMesure", "code": "a" }
  }
}
```

**Après :**

```json
{
  "url": "ageRange",
  "valueRange": {
    "low":  { "value": 15,  "system": "http://unitsofmeasure.org", "code": "a" },
    "high": { "value": 150, "system": "http://unitsofmeasure.org", "code": "a" }
  }
}
```

**Impact client :** le champ `code` (`a` = année, `d` = jour...) garde les mêmes valeurs UCUM, mais **`system` change d'URI**. Un client qui compare `system` à l'ancienne URL MOS pour interpréter l'unité doit être mis à jour — sinon il traitera silencieusement chaque tranche d'âge comme « unité inconnue ». C'est le seul changement de cette liste qui est **purement silencieux** (aucun changement de `resourceType` ou de cardinalité ne l'accompagne pour alerter un client).

---

## 7. `RORLocation` : essentiellement transparent, avec un correctif bienvenu

- **Parent technique** `Location` → `FRCoreLocationProfile` : les compléments FR Core ajoutés (`typeChambre`, `positionLit`) sont optionnels et non peuplés par le ROR. **Aucun changement de JSON produit.**
- **`managingOrganization`** : cible `Reference(fr-organization or ROROrganization)` → `Reference(fr-core-organization or ROROrganization)` (renommage de profil FR Core, cf. `impacts.md` §1). La donnée (`{ "reference": "Organization/xxx" }`) ne change pas ; seule la validation contre le canonical `fr-organization` (qui n'existe plus dans FR Core 2.2.0) doit être mise à jour vers `fr-core-organization`.
- **Correctif** sur `identifier[idExterneSynchro].type` / `identifier[idLocation].type` : l'ancienne écriture FSH (`identifier[idLocation].type.coding.code = ...`) ne fixait que le `code`, pas le `system` de la `Coding`. La nouvelle écriture (`identifier[idLocation].type = ...`) fixe les deux.

**Avant (system potentiellement absent) :**

```json
{
  "type": {
    "coding": [{ "code": "25" }]
  },
  "value": "LOC-042"
}
```

**Après (system désormais garanti) :**

```json
{
  "type": {
    "coding": [{
      "system": "https://mos.esante.gouv.fr/NOS/TRE_R354-TypeIdentifiantRessourceOperationnelle/FHIR/TRE-R354-TypeIdentifiantRessourceOperationnelle",
      "code": "25"
    }]
  },
  "value": "LOC-042"
}
```

**Impact client :** additif/correctif uniquement — un client qui routait déjà sur `code` seul n'est pas affecté ; un client qui exigeait `system` (validation stricte) était auparavant potentiellement bloqué et ne le sera plus.

---

## 8. Professionnels de santé : `RORPractitioner`/`RORPractitionerRole` éclatés en 3 ressources

C'est le changement le plus structurant de cette mise à jour pour les consommateurs.

### 8.1 Avant — 2 ressources

- **`RORPractitioner`** (`Practitioner`) -- *personne physique et professionnel (le RPPS est rattaché au professionnel)* -- portait à la fois l'**identité pérenne** (civilité, nom, prénom natifs `Practitioner.name`) et l'**identifiant national** (`idNat_PS`/RPPS).
- **`RORPractitionerRole`** (`PractitionerRole`) -- *exercice professionnel et situation d'exercice* -- portait la **profession** (`code`), le **savoir-faire** (8 facettes sur `specialty[...]`), l'**identité d'exercice** dupliquée via l'extension `ror-practitionerrole-name`, et la **situation opérationnelle** (horaires, télécom, `contracted`/`hasCAS`/`vitalAccepted` avec des extensions ROR propres pointant vers `apifhir.annuaire.sante.fr`).

```json
{
  "resourceType": "Practitioner",
  "id": "prat-0001",
  "meta": { "profile": ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner"] },
  "identifier": [{ "system": "urn:oid:1.2.250.1.71.4.2.1", "value": "10001234567" }],
  "name": [{ "prefix": ["Dr"] }]
}
```

```json
{
  "resourceType": "PractitionerRole",
  "id": "role-0001",
  "meta": { "profile": ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole"] },
  "practitioner": { "reference": "Practitioner/prat-0001" },
  "organization": { "reference": "Organization/eg-999999" },
  "healthcareService": [{ "reference": "HealthcareService/1234564" }],
  "code": [{
    "coding": [{ "system": ".../JDV_J229-ProfessionSante-ROR", "code": "10" }]
  }],
  "specialty": [
    {
      "extension": [{ "url": ".../ror-practitionerrole-name", "extension": [
        { "url": "civiliteExercice", "valueString": "Docteur" },
        { "url": "nomExercice", "valueString": "MARTIN" },
        { "url": "prenomExercice", "valueString": "Claire" }
      ]}]
    },
    {
      "extension": [{ "url": "expertiseType" }],
      "coding": [{ "system": ".../JDV_J210-SpecialiteOrdinale-ROR", "code": "SM54" }]
    }
  ],
  "extension": [
    {
      "url": "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitionerRole-contracted",
      "valueCodeableConcept": { "coding": [{ "system": ".../JDV_J218-CNAMAmeliSecteurConventionnement-ROR", "code": "1" }] }
    },
    {
      "url": "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitionerRole-vitaleAccepted",
      "valueBoolean": true
    }
  ]
}
```

### 8.2 Après — 3 ressources

- **`RORPerson`** (nouveau, `Person`, parent `AsPersonProfile`) -- *personne physique* -- : identité civile pérenne (nom de naissance, civilité).
- **`RORPractitioner`** (redéfini, toujours `Practitioner`, mais parent `AsPractitionerProfile`) -- *professionnel (RPPS) et son ou ses exercices professionnels (si plusieurs exercices professionnels, alors la recherche sur le RPPS retournera plusieurs résultats)* -- : identité **d'exercice** (`name.family`/`.given`/`.suffix` natifs), identifiant RPPS, **profession** et **savoir-faire** (déplacés depuis l'ancien `PractitionerRole`).
- **`RORPractitionerRole`** (redéfini, `PractitionerRole`, parent `AsPractitionerRoleProfile`) -- *situation d'exercice* -- : uniquement la **situation opérationnelle** (horaires, télécom, `contracted`/`hasCAS`/`vitalAccepted` — désormais nativement fournis par `AsPractitionerRoleProfile`).

```json
{
  "resourceType": "Person",
  "id": "pers-0001",
  "meta": { "profile": ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-person"] },
  "name": [{ "family": "MARTIN", "given": ["Claire"], "prefix": ["Mme"] }],
  "link": [{ "target": { "reference": "Practitioner/prat-0001" } }]
}
```

```json
{
  "resourceType": "Practitioner",
  "id": "prat-0001",
  "meta": { "profile": ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner"] },
  "identifier": [{ "system": "urn:oid:1.2.250.1.71.4.2.1", "value": "10001234567" }],
  "name": [{ "family": "MARTIN", "given": ["Claire"], "suffix": ["Docteur"] }],
  "qualification": [
    {
      "code": { "coding": [{ "system": ".../JDV_J229-ProfessionSante-ROR", "code": "10" }] }
    },
    {
      "code": { "coding": [
        { "system": "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire", "code": "S" },
        { "system": ".../JDV_J210-SpecialiteOrdinale-ROR", "code": "SM54" }
      ]}
    }
  ]
}
```

```json
{
  "resourceType": "PractitionerRole",
  "id": "role-0001",
  "meta": { "profile": ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole"] },
  "practitioner": { "reference": "Practitioner/prat-0001" },
  "organization": { "reference": "Organization/eg-999999" },
  "healthcareService": [{ "reference": "HealthcareService/1234564" }],
  "extension": [
    {
      "url": "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-contracted",
      "valueCodeableConcept": { "coding": [{ "system": ".../JDV_J218-CNAMAmeliSecteurConventionnement-ROR", "code": "1" }] }
    },
    {
      "url": "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-vitale-accepted",
      "valueBoolean": true
    }
  ]
}
```

### 8.3 Où sont passées les données ? (table de correspondance)

| Donnée | Avant | Après |
|---|---|---|
| Civilité, nom, prénom **civils** | `RORPractitioner.name.prefix` (civilité seule, pas de nom/prénom natifs portés) | `RORPerson.name.family`/`.given`/`.prefix` |
| Civilité, nom, prénom **d'exercice** | extension `ror-practitionerrole-name` sur `RORPractitionerRole.specialty` | `RORPractitioner.name.suffix`/`.family`/`.given` (natif) |
| Identifiant RPPS (`idNat_PS`) | `RORPractitioner.identifier` | `RORPractitioner.identifier[idNatPs]` |
| Profession (`code`) | `RORPractitionerRole.code` | `RORPractitioner.qualification[exercicePro].code.coding[profession]` |
| Savoir-faire (spécialité, compétence, capacité, DESC...) | `RORPractitionerRole.specialty[...]` (8 slices) | `RORPractitioner.qualification[ror...]` (8 slices, structure `code.coding[typeSavoirFaire]` + `code.coding[valeur]`) |
| Compétence spécifique d'accueil | `RORPractitionerRole.specialty[specificCompetence]` | **inchangé** : `RORPractitionerRole.specialty[specificCompetence]` |
| Horaires, télécom, identifiant de situation, `organization`/`healthcareService`/`location` | `RORPractitionerRole` | **inchangé**, reste sur `RORPractitionerRole` |
| `contracted`/`hasCAS`/`vitalAccepted` | extensions ROR (`apifhir.annuaire.sante.fr/.../practitionerRole-*`) | extensions natives AS (`interop.esante.gouv.fr/ig/fhir/annuaire/.../as-ext-practitionerrole-*`) |

### 8.4 Impact client (le plus important de ce document)

Un client qui aujourd'hui :
1. lit `RORPractitioner.name.prefix` pour afficher « Dr » et le nom : **il n'y a plus de nom/prénom sur `RORPractitioner` correspondant à l'identité civile** — il faut désormais lire `RORPerson.name` (nouvelle ressource, atteignable via `RORPerson.link[as-practitioner-exercice-professionnel].target` ou l'inverse `Practitioner` non lié directement à `Person` sans naviguer par `Person.link`) ;
2. lit `RORPractitionerRole.code` pour la profession : il doit lire **`RORPractitioner.qualification[exercicePro].code.coding[profession]`** ;
3. lit `RORPractitionerRole.specialty[...]` pour le savoir-faire (hors `specificCompetence`) : il doit lire **`RORPractitioner.qualification[...]`**, avec une structure de code à deux `coding` (type de savoir-faire + valeur) au lieu d'un seul ;
4. lit les extensions `https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitionerRole-{contracted,hasCAS,vitaleAccepted}` : ces URLs **ne seront plus jamais présentes** dans le flux, il faut basculer sur les URLs `as-ext-practitionerrole-*` ;
5. référence un `Practitioner` générique (non-ROR) dans `RORPractitionerRole.practitioner`, ou une `ROROrganization` incluant pôle/service/UF dans `.organization` : ce n'est plus possible, les cibles sont désormais strictement `RORPractitioner` et `ROROrganization` (EJ/EG uniquement, ni pôle/service ni UF) ;
6. s'appuie sur `Task.requester`/`owner`/`restriction.recipient` ou `MeasureReport.subject`/`reporter` pointant vers un `Practitioner`/`PractitionerRole` : le contenu de la ressource cible pointée a changé de forme comme décrit ci-dessus, mais **pas la référence elle-même** — sauf que `Person` (`RORPerson`) n'est **jamais** une cible valide de ces éléments (contrainte FHIR de base), donc l'identité civile n'est pas directement accessible depuis un `Task`/`MeasureReport`, il faut d'abord résoudre le `Practitioner`, puis son `Person` lié.

C'est un changement d'API cassant : tout client doit être mis à jour avant le déploiement de cette version, pas seulement adapté après coup.

---

## 9. Boîtes MSS (messagerie sécurisée de santé) : un impact réel, et un alignement sur le standard AS

Deux choses à corriger par rapport à une lecture rapide du §11 « Ce qui NE change PAS » : la boîte MSS des pôles/services/UF **suit bien** le changement de ressource conteneur (déjà classé « Oui, majeur » en §2/§3 — ce n'était pas manqué, mais valait d'être dit explicitement) ; et il existe un second point, non documenté au départ, sur `ROROrganization` (EJ/EG) et `RORPractitioner`, désormais traité (b).

**a) `ROROrganization` (EJ/EG) perd purement et simplement `telecom`.** Dans l'ancien modèle, `ROROrganization` portait la boîte MSS pour les 3 objets métier qu'il regroupait (EJ, EG, OI) — y compris donc quand l'instance représentait une OI (pôle/service/UF, identifiable via `type[OIType]`). Dans le nouveau modèle, l'élément `telecom` a été **retiré du profil `ROROrganization`** (EJ/EG) : il n'apparaît plus du tout dans le FSH. Il n'est donc plus jamais présent sur une ressource `Organization` conforme à `ror-organization`, quelle que soit la donnée. Un client qui allait chercher la boîte MSS d'une OI sur `Organization/{id}` avec `meta.profile = ror-organization` doit désormais aller la chercher sur `Organization/{id}` avec `meta.profile = ror-internal-organization` (pôle/service) ou `ror-core-organization-uf` (UF) — cf. §2/§3.

```diff
  {
    "resourceType": "Organization",
-   "meta": { "profile": [".../ror-organization"] },
+   "meta": { "profile": [".../ror-internal-organization"] },
    "name": "Pôle Chirurgie",
    "telecom": [{ "value": "pole-chirurgie@xxx.mssante.fr", "extension": [ /* extensions ROR */ ] }]
  }
```

**b) Toutes les boîtes MSS restantes du projet ont été migrées vers le profil standard `AsMailboxMSSProfile`.** `AsOrganizationProfile` et `AsPractitionerProfile` (nouveaux parents de `ROROrganization` et `RORPractitioner`) portent nativement, en plus de l'élément `telecom` générique, une slice nommée `mailbox-mss` conforme au profil `AsMailboxMSSProfile` (`ContactPoint` : `system` fixé à `"email"` + extension FR Core obligatoire `fr-core-contact-point-email-type`, liée à `TRE-R256-TypeMessagerie` — ex. `MSSANTE` — plus une extension optionnelle `as-ext-mailbox-mss-metadata` que le ROR n'exploite pas, faute d'équivalent métier). C'est cette slice qui est « la » façon standard AS/FR Core de porter une adresse MSS.

`AsMailboxMSSProfile` est un profil de **type de données** (`ContactPoint`), pas un profil de ressource : il n'est donc pas réservé aux ressources qui héritent d'`AsOrganizationProfile`/`AsPractitionerProfile`. Rien n'empêche un profil qui hérite de `hl7.fhir.fr.core` (donc sans cette slice native) de le référencer explicitement sur son propre `telecom`, en le déclarant lui-même via `only AsMailboxMSSProfile`. Les 4 profils du projet qui portent une boîte MSS ont donc tous été alignés :

| Profil | Parent | Slice `mailbox-mss` |
|---|---|---|
| `RORPractitioner` | `AsPractitionerProfile` (AS) | héritée nativement, référencée par `telecom[mailbox-mss]` |
| `RORHealthcareService` | `FRCoreHealthcareServiceProfile` (FR Core) | déclarée par le ROR (`telecom contains mailbox-mss ... only AsMailboxMSSProfile`) |
| `RORInternalOrganization` | `FRCoreOrganizationProfile` (FR Core) | déclarée par le ROR, idem |
| `RORCoreOrganizationUF` | `FRCoreOrganizationUFProfile` (FR Core) | déclarée par le ROR, idem |

Dans les 4 cas, le slicing d'extensions étant `open`, les 3 extensions ROR (`ror-telecom-communication-channel`/`ror-telecom-usage`/`ror-telecom-confidentiality-level`) — dont le **niveau de confidentialité**, qui pilote le filtrage d'accès aux données dans l'API — restent portées sur cette même slice, en plus des exigences natives :

```diff
  {
    "resourceType": "Practitioner",
    "telecom": [{
      "value": "dr.martin@xxx.mssante.fr",
+     "system": "email",
      "extension": [
+       { "url": "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type",
+         "valueCoding": { "system": "https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie", "code": "MSSANTE" } },
        { "url": ".../ror-telecom-communication-channel", "valueCodeableConcept": { "coding": [{ "code": "1" }] } },
        { "url": ".../ror-telecom-confidentiality-level", "valueCodeableConcept": { "coding": [{ "code": "1" }] } }
      ]
    }]
  }
```

(Même diff pour `RORHealthcareService`, `RORInternalOrganization` et `RORCoreOrganizationUF`, en remplaçant `resourceType` et l'adresse par le contexte concerné.)

Vérifié par un build SUSHI local (`sushi .`, 0 erreur) sur les 4 profils : chaque `StructureDefinition` généré confirme que `telecom:mailbox-mss` porte bien, dans l'ordre, l'extension native `emailType` (fixée à `MSSANTE`) et les 3 extensions ROR, avec les mêmes contraintes de cardinalité qu'avant (`value` 1..1, `ror-telecom-communication-channel`/`ror-telecom-confidentiality-level` 1..1, `ror-telecom-usage` 0..1).

**Impact client :** rupture identique sur les 4 profils — un `telecom` de boîte MSS doit désormais avoir `system: "email"` et porter l'extension `fr-core-contact-point-email-type` (fixée à `MSSANTE`) en plus des extensions ROR déjà attendues. Un client qui *envoie* des données vers l'API doit produire ces champs ; un client qui *lit* la boîte MSS et ignorait déjà `system`/les extensions inconnues n'est pas affecté en lecture (ajout de champs), mais un client qui valide strictement doit s'attendre à ces nouveaux éléments obligatoires. Pour `ROROrganization` (EJ/EG), la question est sans objet : `telecom` a disparu de ce profil (a).

---

## 10. `RORTask` / `RORMeasureReport` : cibles de référence élargies (non cassant)

- `RORTask.requester`, `.owner`, `.restriction.recipient` acceptent désormais aussi `RORInternalOrganization`/`RORCoreOrganizationUF` en plus de `ROROrganization`/`RORPractitioner`/`RORPractitionerRole`.
- `RORMeasureReport.reporter` idem.

```diff
  "requester": { "reference": "Organization/oi-pole-chirurgie" }
```

Ce genre de référence, invalide auparavant (un pôle ne pouvait pas être `requester` puisqu'il n'existait pas en tant que ressource distincte), devient possible. **Aucune référence existante n'est invalidée** — c'est un ajout de cibles possibles. Un client qui affiche le `requester`/`owner`/`reporter` doit simplement être prêt à dé-référencer une ressource conforme à l'un de ces nouveaux profils en plus des précédents.

---

## 11. Dépendances (`sushi-config.yaml`)

Rappel de `impacts.md` §1, avec la conséquence directe pour un client qui valide les ressources reçues avec son propre validateur FHIR (et pas seulement en consommant le JSON tel quel) :

| Dépendance | Avant | Après |
|---|---|---|
| `hl7.fhir.fr.core` | `1.1.0` | `2.2.0` |
| `ans.annuaire.fhir.r4` → `ans.fhir.fr.annuaire` | `0.2.0` | `1.2.0-snapshot-2` (pré-release) |
| `hl7.fhir.uv.extensions.r4` | `5.2.0` | `5.3.0` |

Un client qui embarque ces packages pour valider les ressources reçues (plutôt que de se fier uniquement au JSON) doit mettre à jour ses propres dépendances FHIR en parallèle, sous peine de rejeter des ressources désormais valides ou d'accepter des ressources qui ne le sont plus.

---

## 12. Ce qui NE change PAS

- `RORQuestionnaire`, `RORMeasure` et la plupart des extensions ROR (`RORActType`, `RORHealthcareService*`, `ROROrganization*`...) : aucun changement de forme.
- Les valeurs `identifier.system` de `ROROrganization` (FINESS, SIREN/SIRET, rppsRang, OI) : inchangées, seul `identifier.type` change (§1).
- Le contenu fonctionnel des pôles/services/UF (identifiant OI, nom, type, dates) : identique, seule la ressource conteneur (`resourceType`/`meta.profile`) change (§2, §3) — la boîte MSS suit ce même changement de conteneur, avec une nuance supplémentaire détaillée en §9.
- `RORLocation` : forme du JSON inchangée à l'exception du correctif `identifier.type` (additif, §7).
