<!-- ## Consignes de fiche de saisie -->
###  Construction de la requête de base

<table>
<tbody>
<tr>
<td width="215">
<p><strong>Interaction FHIR</strong></p>
</td>
<td width="465">
<p>Create<a href="#_ftn1" name="_ftnref1">[1]</a></p>
<p>Update<a href="#_ftn1" name="_ftnref1">[2]</a></p>
</td>
<td width="465">
<p>Search<a href="#_ftn2" name="_ftnref2"><sup>[4]</sup></a></p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>M&eacute;thode http associ&eacute;e</strong></p>
</td>
<td width="465">
<p>POST</p>
<p>PUT</p>
</td>
<td width="465">
<p>GET</p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>Ressource(s) ciblée(s)</strong></p>
</td>
<td width="465">
<p><a href="https://hl7.org/fhir/R4/questionnaire.html">Questionnaire</a></p>
</td>
<td width="465">
<p><a href="https://hl7.org/fhir/R4/questionnaire.html">Questionnaire</a></p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>Construction requ&ecirc;te de base</strong></p>
</td>
<td width="465">
<p><code>POST [base]/Questionnaire {?_format=[mime-type]}</code></p>
<p><code>PUT [base]/Questionnaire/[id]{?&_format=[mime-type]}</code></p>
</td>
<td width="465">
<p><code>GET [base]/Questionnaire{?[parameters]{&amp;_format=[mime-type]}}</code></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://hl7.org/fhir/R4/http.html#create">https://hl7.org/fhir/R4/http.html#create</a> et <a href="https://hl7.org/fhir/R4/http.html#general">https://www.hl7.org/fhir/R4/http.html#general</a></p>
<p><a href="#_ftnref2" name="_ftn2">[2]</a> <a href="https://hl7.org/fhir/R4/http.html#update">https://hl7.org/fhir/R4/http.html#update</a> et <a href="http://hl7.org/fhir/R4/http.html#general">http://hl7.org/fhir/R4/http.html#general</a> &nbsp;</p>
<p><a href="#_ftnref3" name="_ftn3">[3]</a> <a href="https://hl7.org/fhir/R4/http.html#search">https://hl7.org/fhir/R4/http.html#search</a> et <a href="http://hl7.org/fhir/R4/http.html#general">http://hl7.org/fhir/R4/http.html#general</a> &nbsp;</p>

### Construction de la réponse de base

#### Create, Update

##### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/R4/http.html >

Si la création est un succès, le serveur répond en renvoyant a minima:
-	Un header avec un code 201 Created HTTP.
-	Un header Location contenant le nouvel identifiant technique et l’identifiant de version de la ressource créée.
-	L’identifiant fonctionnel de la ressouce créée.


##### Réponse de base -- Echec

Lien vers la spécification FHIR :
[https://www.hl7.org/fhir/R4/operationoutcome.html](https://www.hl7.org/fhir/R4/operationoutcome.html)

Si la création échoue, le serveur doit répondre :

Un header avec un un code erreur HTTP 4XX ou 5XX

Un body contenant une ressource OperationOutcome qui donne les
détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
[https://www.hl7.org/fhir/R4/http.html](https://www.hl7.org/fhir/R4/http.html)

#### Search

##### Réponse de base -- Succès

Lien vers la spécification FHIR : <http://hl7.org/fhir/R4/bundle.html>

Si la recherche est un succès, le serveur répond :

-   Un header avec un code 200 OK HTTP

-   Un body contenant une ressource Bundle[^27] dont le type = searchset.\ Le bundle encapsule 0 à n ressources Measure corespondant aux critères de recherche plus les ressources incluses correspondant aux critères de recherche.\ Le service développé renvoie les 200 premiers résultats et indique le total trouvé dans une balise \"total\". Dans le cas où il n'y a pas de résultat le service renvoie \"total\": 0.

Remarque : la recherche est un succès à partir du moment où la requête peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR  <http://hl7.org/fhir/R4/http.html>

##### Réponse de base -- Echec

Lien vers la spécification FHIR : <http://hl7.org/fhir/R4/operationoutcome.html>

Si la recherche échoue, le serveur doit répondre :

-   Un header avec un un code erreur HTTP 4XX ou 5XX

-   Un body contenant une ressource [OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html) qui donne les détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la requête, ce qui est différent d'aucune correspondance à la recherche. Plus de précision sur la spécification FHIR : <http://hl7.org/fhir/R4/http.html>

### Critères de recherche pour Search

-   Les critères de recherche, définis dans la spécifications FHIR [search parameters](https://hl7.org/fhir/R4/questionnaire.html#search) doivent être implémentés afin de pouvoir rechercher les fiches de saisie selon le besoin.

### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes sont décrits [ici](modifiers.html).

### Exemple de requêtes

#### Scénario 1 : Création d'une fiche de consignes de saisie

**Description du scénario :** Un consommateur souhaite créer une nouvelle fiche de consignes de saisie pour un cabinet de ville de médecine générale.

Exemple de ressource : [Example Questionnaire: Cabinet de ville de médecine générale](Questionnaire-ror-questionnaire-offre-de-ville.html)

**Requête :**

```json
POST [BASE]/Questionnaire
{
  {
  "resourceType" : "Questionnaire",
  "id" : "ror-questionnaire-offre-de-ville",
  "meta" : {
    "profile" : [
      🔗 "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-questionnaire"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/ror-questionnaire-offre-de-ville",
  "identifier" : [
    {
      "use" : "official",
      "value" : "FDS-109"
    }
  ],
  "version" : "0.2.0",
  "name" : "FDS-109",
  "title" : "Consignes fiche de saisie Cabinet de ville de médecine générale",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : [
    "HealthcareService",
    "Organization",
    "Practitioner",
    "Location",
    "PractitionerRole"
  ],
  "date" : "2023-12-05",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Dans le ROR, les cabinets de ville et les centres de santé prennent la forme d'une Entité Juridique, et d’un Établissement Géographique (EG), puis d’une unité élémentaire par professionnel. Ce document propose la description type d’un cabinet de ville de médecine générale.\n Vous pouvez télécharger le json [ici](Questionnaire-ror-questionnaire-offre-de-ville.json) et l'importer dans [https://lhcformbuilder.nlm.nih.gov/](https://lhcformbuilder.nlm.nih.gov/) pour le tester et le faire évoluer via cet IHM.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "purpose" : "Dans le ROR, l'offre de soins de ville comprend celle des cabinets et celle des centres de santé. Concernant les soins de médecine générale, le ROR référencera l’offre des médecins généralistes, qu’ils aient ou non une spécialité, dans leur cabinet, individuel ou de groupe, et les centres de santé.",
  "lastReviewDate" : "2023-12-05",
  "code" : [
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite",
      "code" : "SA05"
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite",
      "code" : "SA07"
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite",
      "code" : "SA08"
    }
  ],
  "item" : [
    {
      "linkId" : "TypeOffreInfoEJ",
      "prefix" : "1",
      "text" : "Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Information sur l'EJ",
      "type" : "group",
      "item" : [
        {
          "linkId" : "idNatstruct-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:idNatSt.value",
          "prefix" : "1.1",
          "text" : "IdNat_Struct (Identification nationale des Entités Juridiques définie dans le CI-SIS)",
          "type" : "string",
          "required" : true,
          "readOnly" : true
        },
        {
          "linkId" : "numFINESS-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:finess.value",
          "prefix" : "1.2",
          "text" : "Numéro FINESS de l'EJ",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "numSIREN-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:sirene.value",
          "prefix" : "1.3",
          "text" : "Numéro SIRET de l'EJ",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
            {
      "linkId" : "TypeEquipementInfo",
      "prefix" : "4",
      "text" : "Equipement(s) disponible(s)",
      "type" : "group",
      "repeats" : true,
      "item" : [
        {
          "linkId" : "equipmentType",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment#Extension.extension:equipmentType.value[x]",
          "prefix" : "4.a",
          "text" : "Type équipement",
          "type" : "choice",
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J18-EquipementSpecifique-ROR/FHIR/JDV-J18-EquipementSpecifique-ROR"
        },
        {
          "linkId" : "nbInService",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment#Extension.extension:nbInService.value[x]",
          "prefix" : "4.b",
          "text" : "Nombre équipement en service",
          "type" : "integer"
        },
        {
          "linkId" : "equipmentFeature",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit#Extension.extension:equipmentFeature.value[x]",
          "prefix" : "4.c",
          "text" : "Type caractéristique de l'équipement",
          "type" : "choice",
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J228-TypeCaracteristiqueEquipement-ROR/FHIR/JDV-J228-TypeCaracteristiqueEquipement-ROR"
        },
        {
          "linkId" : "limitValue",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit#Extension.extension:limitValue.value[x]",
          "prefix" : "4.d",
          "text" : "Valeur limite",
          "type" : "quantity"
        }
      ]
    }
  ]
}
}
```
 Vous pouvez télécharger le json [ici](Questionnaire-ror-questionnaire-offre-de-ville.json) et l'importer dans [https://lhcformbuilder.nlm.nih.gov/](https://lhcformbuilder.nlm.nih.gov/) pour le tester et le faire évoluer via cet IHM.


#### Scénario 2 : Un consommateur souhaite récupérer l'ensemble des fiches

**Description du scénario :** Un consommateur souhaite récupérer l'ensemble des fiches.


**Requête :**

`GET [BASE]/Questionnaire`

**Requête expliquée :**

```sh
GET [BASE]/Questionnaire #recherche sans critère pour récupérer toutes les fiches

```

#### Scénario 3 : Un consommateur souhaite récupérer une fiche

**Description du scénario :** Un consommateur souhaite récupérer une fiche


**Requête :**

`GET [BASE]/Questionnaire?identifier=XXX`

**Requête expliquée :**

```sh
GET [BASE]/Questionnaire?identifier=XXX #critère de recherche sur l’identifiant de la fiche

```


#### Scénario 4 : Un consommateur souhaite récupérer un ensemble de fiches de saisie sur un critère donné

**Description du scénario :** Un consommateur souhaite récupérer un ensemble de fiches de saisie pour une catégorie d'EG donnée. PAr exemple, un Centre de santé.


**Requête :**

`GET [BASE]/Questionnaire?code=https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement|124`

**Requête expliquée :**

```sh
GET [BASE]/Questionnaire?code=https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement|124 #critère de recherche sur le code qui référence toutes les catégorie d'EG (voir binding)

```

#### Autres scénarios

Pour construire d'autres requêtes selon vos besoins, vous pouvez consulter les spécifications du standard FHIR et utiliser ce que propose FHIR nativement :
* [Questionnaire - FHIR v4.0.1 (hl7.org)](https://hl7.org/fhir/R4/questionnaire.html#search)
* [Http - FHIR v4.0.1 (hl7.org)](https://hl7.org/fhir/R4/http.html)