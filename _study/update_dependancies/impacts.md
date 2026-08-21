# Impacts de la mise à jour des dépendances (hl7.fhir.fr.core, ans.fhir.fr.annuaire)

## 1. Dépendances (`sushi-config.yaml`)

| Dépendance | Avant | Après | Remarque |
|---|---|---|---|
| `ans.annuaire.fhir.r4` | `0.2.0` | — | **Package renommé** `ans.fhir.fr.annuaire`, remplacé par la ligne suivante |
| `ans.fhir.fr.annuaire` | — | `1.2.0-snapshot-2` | Dernière version stable publiée = `1.1.0`, mais elle dépend de `hl7.fhir.fr.core 2.1.0`. Les profils `AsOrganizationProfile`/`AsPersonProfile`/`AsPractitionerProfile`/`AsPractitionerRoleProfile` visés par la demande existent dans les deux, mais le snapshot `1.2.0-snapshot-2` est la version alignée avec `hl7.fhir.fr.core 2.2.0` (celle que vous aviez pointée). **⚠️ C'est une version "draft/preview", pas une release stable** : à surveiller jusqu'à la publication d'une `1.2.0` officielle. |
| `hl7.fhir.fr.core` | `1.1.0` | `2.2.0` | Dernière version stable publiée |
| `hl7.fhir.uv.extensions.r4` | `5.2.0` | `5.3.0` | Requis par `ans.fhir.fr.annuaire 1.2.0-snapshot-2` |

## 2. ROROrganization → 3 profils

L'ancien `ROROrganization` mélangeait 3 objets métier (EJ, EG, OI) en un seul profil hérité de `fr-organization`. Ce profil `fr-organization` **n'existe plus** dans `hl7.fhir.fr.core 2.2.0` (renommé `fr-core-organization`).

| Nouveau profil | Id | Parent | Objet métier | Fichier |
|---|---|---|---|---|
| `ROROrganization` | `ror-organization` | `AsOrganizationProfile` | EJ + EG | `ROROrganization.fsh` |
| `RORInternalOrganization` | `ror-internal-organization` | `FRCoreOrganizationProfile` | Pôles / services | `RORInternalOrganization.fsh` (nouveau) |
| `RORCoreOrganizationUF` | `ror-core-organization-uf` | `FRCoreOrganizationUFProfile` | UF médicales | `RORCoreOrganizationUF.fsh` (nouveau) |

**Décisions / impacts notables :**
- Le contenu "OI" (identifiant `identifierOI`, `type[OIType]`, boîte MSS, date de réouverture, période d'ouverture/fermeture) qui était mêlé à `ROROrganization` a été **dupliqué** entre `RORInternalOrganization` et `RORCoreOrganizationUF`, faute d'un ancêtre ROR commun aux deux (leurs parents FR Core respectifs sont indépendants). *À revoir avec le métier si une partie de ce contenu ne concerne en réalité que l'un des deux niveaux.*
- `AsOrganizationProfile` slice déjà `identifier` (`idNatSt`, `finess`, `siren`, `siret`, `rppsRang`) et fixe déjà `identifier.type` sur un système différent (`fr-core-cs-v2-0203`) de celui utilisé jusqu'ici par le ROR (`TRE-G07-TypeIdentifiantStructure`). Les anciens slices `sirene`/`numSIRET` ont donc été **renommés** `siren`/`siret` pour réutiliser les slices existants, et les fixations `.type=`/`.system=` ont été retirées (déjà posées par le parent). `adeliRang` reste un slice propre au ROR (non fourni par `AsOrganizationProfile`).
- `AsOrganizationProfile` slice déjà `type` (`statutJuridiqueINSEE`, `sphParticipation`, etc.) : le ROR ne fait plus que resserrer ces slices existants (MS + `from`), `categorieEtablissement` reste un slice propre au ROR (pas de correspondance native).
- `AsOrganizationProfile` slice déjà les extensions d'adresse ISO 21090 (`careOf`, `additionalLocator`, `houseNumber`, `buildingNumberSuffix`, `streetNameType`, `streetNameBase`, `lieuDit`) : le ROR ne fait que les resserrer. Seul `postalBox` reste ajouté par le ROR (absent du parent).
- Le slicing `type[statutJuridiqueINSEE]`/`type[sphParticipation]` impose, côté `AsOrganizationProfile`, une extension `as-ext-organization-types` obligatoire (`min = 1`, héritée telle quelle). Après inspection de sa structure (`Extension.extension` interdit, `value[x]` de type `code` simple, `pattern` déjà fixé par AS à la valeur littérale du nom de la slice — `"statutJuridiqueINSEE"`/`"sphParticipation"`), il s'agit d'un **jeton technique fixe servant uniquement à discriminer les slices**, pas d'une seconde source de vérité pour le code métier : celui-ci reste porté par `type.coding`, comme avant. Le binding ROR posé directement sur `type[slice].coding` reste donc correct sans ambiguïté ; le seul point restant est que les ressources `Organization` produites doivent désormais aussi émettre ce jeton fixe pour être conformes (cf. `impacts2.md` §4 pour le détail JSON).
- **Toute référence `Reference(fr-organization or ROROrganization)`** a été mise à jour dans tout le projet. Là où l'objet référencé peut être n'importe quel niveau d'organisation (EJ/EG/pôle/service/UF), les 3 profils sont désormais proposés en union (ex : `RORHealthcareService.providedBy`, `RORTask.*`, `RORMeasureReport.reporter`).

## 3. RORHealthcareService

- `Parent` : `HealthcareService` → **`FRCoreHealthcareServiceProfile`**.
- `providedBy` : `Reference(fr-organization or ROROrganization)` → `Reference(ROROrganization or RORInternalOrganization or RORCoreOrganizationUF)` (une offre peut être portée par une EJ/EG, un pôle/service ou une UF).
- `location` / `coverageArea` : **doivent** maintenant cibler uniquement `RORLocation`, car `FRCoreHealthcareServiceProfile` restreint déjà sa cible à `fr-core-location` — cf. point RORLocation ci-dessous (conflit résolu techniquement).

## 4. RORLocation — conflit non anticipé par la demande

La demande précise que `RORLocation` ne doit **pas changer** (héritage direct de `Location`), car les compléments FR Core sur `Location` concernent la description d'une chambre, un usage différent de celui du ROR.

**Problème constaté à la construction (SUSHI) :** `FRCoreHealthcareServiceProfile.location` et `AsPractitionerRoleProfile.location` **restreignent déjà** leur cible à `fr-core-location` uniquement. Une fois `RORHealthcareService` et `RORPractitionerRole` alignés sur ces parents FR Core (demandé explicitement), ils ne peuvent plus référencer un profil `Location` qui ne descend pas de `fr-core-location` : le build échoue si `RORLocation` reste sur `Location` nu.

**Résolution appliquée :** `RORLocation` hérite maintenant de `FRCoreLocationProfile` plutôt que de `Location`. Les compléments FR Core ajoutés par ce profil (`typeChambre`, `positionLit`) sont tous **optionnels (0..1)** et restent simplement non utilisés/non peuplés par le ROR — la sémantique fonctionnelle voulue (une Location ROR = un ensemble de chambres, pas une chambre) n'est pas affectée, seule la ligne d'héritage technique change.

**⚠️ Point à faire valider explicitement** : c'est un écart par rapport à l'instruction initiale ("pas de changement"), rendu nécessaire par les autres évolutions demandées (RORHealthcareService et RORPractitionerRole alignés sur FR Core/AS). Sans ce changement, l'IG ne compile pas.

## 5. RORPractitioner → RORPerson

- Renommé et changement de ressource support : `Practitioner` → **`Person`** (parent `AsPersonProfile`).
- L'identité pérenne (nom de naissance, civilité, sexe, date de naissance) reste sur `RORPerson`.
- L'identifiant national du professionnel (`idNat_PS`/RPPS, système `urn:oid:1.2.250.1.71.4.2.1`) et la boîte MSS professionnelle **déménagent** vers `RORPractitioner` (voir §6) car `AsPersonProfile` ne porte pas ces informations — c'est `AsPractitionerProfile` qui les définit nativement.
- Lien natif ajouté : `RORPerson.link[as-practitioner-exercice-professionnel].target` resserré sur `RORPractitioner`.
- **Impact référentiel** : `Person` n'est **pas** un type de cible valide pour `Task.requester/owner/restriction.recipient` ni pour `MeasureReport.subject/reporter` (contrainte FHIR de base, indépendante du ROR). `RORTask` et `RORMeasureReport` référencent donc désormais `RORPractitioner`/`RORPractitionerRole` mais **pas** `RORPerson` sur ces éléments.

## 6. L'ancien RORPractitionerRole (parent PractitionerRole nu) → 2 profils

Ces deux profils réutilisent les noms `RORPractitioner`/`RORPractitionerRole` (libérés par le renommage du §5),
mais leur parent et leur périmètre métier sont désormais différents de l'ancien modèle.

| Nouveau profil | Id | Parent | Objet métier |
|---|---|---|---|
| `RORPractitioner` | `ror-practitioner` | `AsPractitionerProfile` | Exercice professionnel (profession, savoir-faire, identité d'exercice) |
| `RORPractitionerRole` | `ror-practitionerrole` | `AsPractitionerRoleProfile` | Situation d'exercice opérationnelle |

**Répartition des données (basée sur la structure réelle d'`AsPractitionerProfile`/`AsPractitionerRoleProfile`) :**

- **Identité d'exercice** (`civiliteExercice`/`nomExercice`/`prenomExercice`) : portée nativement par `Practitioner.name.suffix/family/given` dans `AsPractitionerProfile`. L'extension `RORPractitionerRoleName` (créée pour porter cette même donnée sur `PractitionerRole`) est **devenue redondante et a été supprimée**.
- **Profession** (`code` sur l'ancien `RORPractitionerRole`, lié à `JDV-J229-ProfessionSante-ROR`) : déplacée vers `RORPractitioner.qualification[exercicePro].code.coding[profession]`, car `PractitionerRole.code` dans le modèle AS porte désormais d'autres notions (`genreActivite`, `modeExercice`, `typeActiviteLiberale`, `statutHospitalier`, `fonction`...) sans rapport avec l'ancienne "profession" du ROR.
- **Savoir-faire** (les 8 facettes `specialty`/`competence`/`exclusiveCompetence`/`specificOrientation`/`expertiseCapacity`/`qualificationPAC`/`nonQualifyingDESC`/`supplementaryExerciseRight`, plus `expertiseType` qui disparaît en tant que tel) : déplacées vers `RORPractitioner.qualification`, sous la forme de **reslices** `qualification[savoirFaire/rorXxx]` du slice natif `qualification[savoirFaire]` d'`AsPractitionerProfile`, portant chacune un couple de codings — `coding[typeSavoirFaire]` fixé sur le code `TRE-R04-TypeSavoirFaire` correspondant (codes réellement récupérés depuis le serveur de terminologie ANS : `S`, `C`, `CEX`, `OP`, `CAPA`, `PAC`, `DNQ`, `DEC`) et `coding[valeur]` lié au value set ROR historique (`JDV-J210`, `JDV-J232`, etc.).
  - **Reslicing FHIR natif retenté et réussi** (contrairement à une première tentative infructueuse) : la syntaxe FSH `qualification[savoirFaire/rorXxx]` fonctionne avec SUSHI 3.20, à deux conditions non documentées explicitement par SUSHI : (1) le nouveau discriminant doit être déclaré sur la **slice `qualification[savoirFaire]` elle-même** (`^slicing` posé sur cette slice) — c'est le mécanisme standard FHIR de reslicing (trancher une slice existante en lui donnant sa propre slicing). **Point de vigilance important** : SUSHI émet un avertissement contraire (*"An element with a slice name should not define its own slicing. Instead, append additional discriminators to the original slicing on the base element."*) qu'il ne faut **pas** suivre — une première version de ce correctif l'a suivi (`qualification ^slicing.discriminator[+]` sur l'élément de **base**) et compilait avec `sushi .` (0 erreur), mais `[+]` sur un élément de base sans discriminant déjà déclaré dans le différentiel **écrase silencieusement** le discriminant hérité du parent au lieu de l'étendre. SUSHI ne détecte pas ce problème, mais le vrai générateur de snapshot de l'IG Publisher (`fhir-ig-publisher`) l'a rejeté en publication avec `Exception generating snapshot ... Slicing rules on differential ... do not match those on base`, faisant échouer le build GitHub Pages. L'approche correcte (slicing sur la slice, pas sur la base) a été **vérifiée avec le vrai IG Publisher 2.3.2 en local** (téléchargé et exécuté sur ce projet) : génération des snapshots et validation de conformité passent sans erreur pour `ror-practitioner`. (2) Le sous-slicing fermé de `code.coding` (`typeSavoirFaire`/`valeur`), déjà présent sur le slice natif `savoirFaire`, doit être **redéclaré localement dans chaque reslice** — ni SUSHI ni le mécanisme de reslicing ne le reportent automatiquement, et sans cela toute règle visant `qualification[savoirFaire/rorXxx].code.coding[typeSavoirFaire]` échoue avec `No element found at path`. Une fois ces deux points appliqués, l'arborescence du `StructureDefinition` généré est exactement celle d'un reslicing FHIR standard (`sliceName: "savoirFaire/rorSpecialty"`, etc.). Le contenu clinique/les codes sont inchangés — cette correction n'a aucun impact sur le JSON produit (le `sliceName` interne n'est pas sérialisé dans les instances), elle ne change que la conformité structurelle du `StructureDefinition` publié vis-à-vis d'`AsPractitionerProfile`. **Leçon retenue : `sushi .` sans erreur ne garantit pas qu'un IG se publie — le générateur de snapshot de l'IG Publisher applique des contrôles plus stricts sur la cohérence différentiel/base que SUSHI, notamment sur le slicing.**
  - `specialty[specificCompetence]` (compétence spécifique facilitant l'accueil, `JDV-J33`) reste en revanche sur **`RORPractitionerRole.specialty`** (élément natif `PractitionerRole.specialty`, non utilisé par le modèle AS) : c'est une capacité propre à la situation d'exercice, pas une qualification professionnelle pérenne.
- **Le reste** (identifiant de situation opérationnelle, `availableTime`, `telecom` situationnel, `healthcareService`, `organization`, `location`, extensions `contracted`/`hasCAS`/`vitaleAccepted`/mode d'exercice/commentaire/date de création) reste sur `RORPractitionerRole`.
- `AsPractitionerRoleProfile` fournit déjà nativement les extensions `as-ext-practitionerrole-contracted`, `as-ext-practitionerrole-hascas`, `as-ext-practitionerrole-vitale-accepted` et le slice d'identifiant `idSituationExercice` : le ROR ne fait plus que les resserrer (MS + bindings), au lieu de redéfinir ses propres extensions pointant vers `apifhir.annuaire.sante.fr` (alias `$practitionerRole-contracted`/`-hasCAS`/`-vitaleAccepted`, **devenus inutiles et supprimés** de `aliases.fsh`).
- **Cibles de référence resserrées** par les parents AS/FR Core (contrainte FHIR, pas un choix ROR) :
  - `RORPractitionerRole.organization` : `AsPractitionerRoleProfile` restreint déjà à `AsOrganizationProfile` → uniquement `ROROrganization` (EG/EJ), **pas** `RORInternalOrganization`/`RORCoreOrganizationUF`. Un professionnel n'a donc une situation d'exercice rattachée qu'à une EG/EJ, jamais directement à un pôle/service/UF.
  - `RORPractitionerRole.healthcareService`/`.location` : restreints à `RORHealthcareService`/`RORLocation` uniquement (plus de cible `HealthcareService`/`Location` nue).

## 7. Autres profils impactés (références croisées)

- **`RORTask`** : `requester`/`owner`/`restriction.recipient` mis à jour vers `ROROrganization or RORInternalOrganization or RORCoreOrganizationUF or RORPractitioner or RORPractitionerRole` (`RORPerson` exclu, cf. §5).
- **`RORMeasureReport`** : `subject` → `RORPractitioner or RORPractitionerRole or RORLocation` ; `reporter` → idem + les 3 profils d'organisation.
- **`RORQuestionnaire`**, **`RORMeasure`**, extensions (`RORActType`, `RORHealthcareService*`, `ROROrganization*`, etc.) : **aucun changement nécessaire**, ils ne référencent pas directement les profils restructurés.

## 8. Non-régression

- `sushi .` compile avec **0 erreur** (1 avertissement bénin : la cardinalité du slice `mailbox-mss` de `PractitionerRole.telecom` héritée d'`AsPractitionerRoleProfile` est automatiquement réduite pour respecter `telecom 0..1` posé par le ROR — comportement attendu, sans impact fonctionnel).
- Non traité dans ce lot (hors périmètre "fichiers FSH") : les pages de documentation prose (`input/pagecontent/*.md`, notamment `change-log.md`) mentionnant encore les anciens noms `RORPractitioner`/`RORPractitionerRole` dans l'historique des versions — normal, ce sont des entrées historiques à ne pas réécrire. Les autres pages ne mentionnaient pas ces noms.
- Les exemples (`input/fsh/examples/*.fsh`) n'utilisaient pas directement les profils restructurés et n'ont pas eu besoin de modification.

## 9. Points restant à valider avec le métier / SME FHIR

1. Confirmer le choix de dépendre de `ans.fhir.fr.annuaire 1.2.0-snapshot-2` (draft) plutôt que d'attendre une release stable `1.2.0`.
2. Valider la répartition dupliquée du contenu "OI" entre `RORInternalOrganization` et `RORCoreOrganizationUF` (§2).
3. ~~Valider que le binding ROR sur `type[statutJuridiqueINSEE]`/`type[sphParticipation]` est cohérent avec le mécanisme `as-ext-organization-types`~~ — clarifié (§2) : il s'agit d'un jeton technique fixe sans ambiguïté métier, pas d'une seconde source de vérité. Reste une action non-FSH : le système producteur doit émettre ce jeton (cf. `impacts2.md` §4).
4. Valider le changement de parent de `RORLocation` vers `FRCoreLocationProfile` (§4), techniquement nécessaire mais en écart avec la consigne initiale.
5. ~~Revoir si souhaité le reslicing natif de `qualification[savoirFaire]`~~ — fait (§6) : les 8 facettes sont désormais des reslices `qualification[savoirFaire/rorXxx]` du slice natif.
