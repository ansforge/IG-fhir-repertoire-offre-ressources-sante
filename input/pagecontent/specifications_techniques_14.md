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
</td>
<td width="465">
<p>Search<a href="#_ftn2" name="_ftnref2"><sup>[2]</sup></a></p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>M&eacute;thode http associ&eacute;e</strong></p>
</td>
<td width="465">
<p>POST</p>
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
<p><a href= https://hl7.org/fhir/R4/questionnaire.html>Questionnaire</a></p>
</td>
<td width="465">
<p><a href= https://hl7.org/fhir/R4/questionnaire.html>Questionnaire</a></p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>Construction requ&ecirc;te de base</strong></p>
</td>
<td width="465">
<p>POST [base]/Questionnaire {?_format=[mime-type]}</p>
</td>
<td width="465">
<p>GET [base]/Questionnaire{?[parameters]{&amp;_format=[mime-type]}}</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/R4/http.html#create">https://www.hl7.org/fhir/R4/http.html#create</a> et <a href="https://www.hl7.org/fhir/R4/http.html#general">https://www.hl7.org/fhir/R4/http.html#general</a></p>
<p><a href="#_ftnref2" name="_ftn2">[2]</a> <a href="https://hl7.org/fhir/R4/http.html#search">https://hl7.org/fhir/R4/http.html#search</a> et <a href="http://hl7.org/fhir/R4/http.html#general">http://hl7.org/fhir/R4/http.html#general</a> &nbsp;</p>

### Construction de la réponse de base

#### Create

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
  "resourceType" : "Questionnaire",
  "id" : "ror-questionnaire-offre-de-ville",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-questionnaire"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/ror-questionnaire-offre-de-ville",
  "identifier" : [
    {
      "use" : "official",
      "value" : "FDS-092"
    }
  ],
  "version" : "0.2.0",
  "name" : "FDS-offre-de-ville",
  "title" : "Cabinet de ville de médecine générale",
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
  "description" : "Dans le ROR, les cabinets de ville et les centres de santé prennent la forme d'une Entité Juridique, et d’un Établissement Géographique (EG), puis d’une unité élémentaire par professionnel. Ce document propose la description type d’un cabinet de ville de médecine générale.",
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
          "linkId" : "numEJ_RPPS_ADELI_Rang",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:rppsRang.value",
          "prefix" : "1.4",
          "text" : "Numéro EJ/RPPS/ADELIrang",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "raisonSociale-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.name",
          "prefix" : "1.5",
          "text" : "Raison sociale EJ",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "complementRaisonSociale-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.name.extension:ror-organization-additional-name",
          "prefix" : "1.6",
          "text" : "Complément Raison sociale (EJ)",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "statutJuridique-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.type:statutJuridiqueINSEE",
          "prefix" : "1.7",
          "text" : "Statut juridique (EJ)",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J199-StatutJuridique-ROR/FHIR/JDV-J199-StatutJuridique-ROR"
        },
        {
          "linkId" : "sousEnsembleAgregatStatutJuridique",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.type:sousEnsembleAgregatStatutJuridique",
          "prefix" : "1.8",
          "text" : "Ss Ens Agrégat Stat. Jur.",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J200-SousEnsembleAgregatStatutJuridique-ROR/FHIR/JDV-J200-SousEnsembleAgregatStatutJuridique-ROR"
        },
        {
          "linkId" : "adresseEJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.address.text",
          "prefix" : "1.9",
          "text" : "Adresse de l’EJ",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "dateCreation-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:ror-organization-creation-date",
          "prefix" : "1.10",
          "text" : "Veuillez indiquer la date de création de l’EJ",
          "type" : "date",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "dateFermeture-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:organization-period.end",
          "prefix" : "1.11",
          "text" : "Veuillez indiquer la date de fermeture de l’EJ",
          "type" : "date",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "typeFermeture-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:ror-organization-closing-type",
          "prefix" : "1.12",
          "text" : "Veuillez indiquer le type de fermeture de l’EJ",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J201-TypeFermeture-ROR/FHIR/JDV-J201-TypeFermeture-ROR"
        }
      ]
    },
    {
      "linkId" : "TypeOffreInfoEG",
      "prefix" : "2",
      "text" : "Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Information sur l'EG",
      "type" : "group",
      "item" : [
        {
          "linkId" : "idNatstruct-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:idNatSt.value",
          "prefix" : "2.1",
          "text" : "IdNat_Struct (Identification nationale des Entités Géographiques définie dans le CI-SIS)",
          "type" : "string",
          "required" : true,
          "readOnly" : true
        },
        {
          "linkId" : "numFINESS-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:finess.value",
          "prefix" : "2.2",
          "text" : "Numéro FINESS de l'EG",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "numSIRET",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:numSIRET.value",
          "prefix" : "2.3",
          "text" : "Numéro SIRET de l'EG",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "numEG_RPPS_ADELI_Rang",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:rppsRang.value",
          "prefix" : "2.4",
          "text" : "N°EG/RPPS/ADELIrang",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "nom-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.name",
          "prefix" : "2.5",
          "text" : "Dénomination EG",
          "type" : "string",
          "required" : true,
          "readOnly" : true
        },
        {
          "linkId" : "complementRaisonSociale-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.name",
          "prefix" : "2.6",
          "text" : "Complément Dénomination",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "cNomOperationnel-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.alias",
          "prefix" : "2.7",
          "text" : "Le cas échéant, veuillez renseigner le nom opérationnel de l’entité géographique",
          "type" : "string",
          "required" : false
        },
        {
          "linkId" : "categorieEG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.type:categorieEtablissement",
          "prefix" : "2.8",
          "text" : "Catégorie EG",
          "type" : "choice",
          "required" : true,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J55-CategorieEG-ROR/FHIR/JDV-J55-CategorieEG-ROR"
        },
        {
          "linkId" : "adresseEG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.address.text",
          "prefix" : "2.9",
          "text" : "Lieu EG",
          "type" : "string",
          "required" : false
        },
        {
          "linkId" : "contactEG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#diff_Organization.contact.telecom.value",
          "prefix" : "2.10",
          "text" : "Contact (Informations permettant de contacter l'accueil ou le secrétariat de l'entité géographique)",
          "type" : "string",
          "required" : false
        },
        {
          "linkId" : "accessibiliteLieu-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.type:sphParticipation",
          "prefix" : "2.12",
          "text" : "modaliteParticipationSPH",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J202-ESPIC-ROR/FHIR/JDV-J202-ESPIC-ROR"
        },
        {
          "linkId" : "dateOuverture-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:organization-period.start",
          "prefix" : "2.13",
          "text" : "Veuillez indiquer la date de création de l’EG",
          "type" : "date",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "dateFermeture-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:organization-period.end",
          "prefix" : "2.14",
          "text" : "Veuillez indiquer la date de fermeture de l’EG",
          "type" : "date",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "typeFermeture-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:ror-organization-closing-type",
          "prefix" : "2.15",
          "text" : "Veuillez indiquer le type de fermeture de l’EG",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J201-TypeFermeture-ROR/FHIR/JDV-J201-TypeFermeture-ROR"
        }
      ]
    },
    {
      "linkId" : "TypeOffreInfo",
      "prefix" : "3",
      "text" : "Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Informations sur l'offre",
      "type" : "group",
      "item" : [
        {
          "linkId" : "IdentifiantOffre",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.identifier.value",
          "prefix" : "3.1",
          "text" : "Identifiant Offre (Fourni par le ROR)",
          "type" : "string",
          "readOnly" : true
        },
        {
          "linkId" : "NomOffre",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.name",
          "prefix" : "3.2",
          "text" : "Nom Offre",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "modePriseEnCharge",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:careMode.coding",
          "prefix" : "3.3",
          "text" : "Mode de prise en charge",
          "type" : "choice",
          "required" : true,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J19-ModePriseEnCharge-ROR/FHIR/JDV-J19-ModePriseEnCharge-ROR/",
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J19-ModePriseEnCharge-ROR/FHIR/JDV-J19-ModePriseEnCharge-ROR",
                "code" : "32",
                "display" : "Consultation (CS)"
              },
              "initialSelected" : true
            }
          ]
        },
        {
          "linkId" : "ModalAccueil",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:receptionModality.coding",
          "prefix" : "3.4",
          "text" : "Modalité d’accueil",
          "type" : "choice",
          "required" : true,
          "repeats" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J226-ModaliteAccueil-ROR/FHIR/JDV-J226-ModaliteAccueil-ROR",
                "code" : "03",
                "display" : "Consultation en présentiel"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J226-ModaliteAccueil-ROR/FHIR/JDV-J226-ModaliteAccueil-ROR",
                "code" : "04",
                "display" : "Téléconsultation"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J226-ModaliteAccueil-ROR/FHIR/JDV-J226-ModaliteAccueil-ROR",
                "code" : "05",
                "display" : "Visite à domicile"
              }
            }
          ]
        },
        {
          "linkId" : "ageMin",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type#key_Extension.extension:ageRange.value[x].low",
          "prefix" : "3.5",
          "text" : "Veuillez indiquer l’âge minimum de la patientèle.",
          "type" : "quantity",
          "required" : false
        },
        {
          "linkId" : "ageMax",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type#key_Extension.extension:ageRange.value[x].high",
          "prefix" : "3.6",
          "text" : "Veuillez indiquer l’âge maximum de la patientèle",
          "type" : "quantity",
          "required" : false
        },
        {
          "linkId" : "ZoneInter",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division#diff_Extension.extension:codeTerritorialDivision",
          "prefix" : "3.7",
          "text" : "Zone d’intervention (A renseigner si la modalité d’accueil « visite à domicile » est renseignée)",
          "type" : "choice",
          "enableWhen" : [
            {
              "question" : "ModalAccueil",
              "operator" : "exists",
              "answerBoolean" : true
            }
          ],
          "enableBehavior" : "all",
          "required" : false,
          "answerValueSet" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/code-region-territorial-division-ror-valueset"
        },
        {
          "linkId" : "activiteOperationnelle",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.specialty:operationalActivity",
          "prefix" : "3.8",
          "text" : "Activités opérationnelles",
          "type" : "choice",
          "required" : true,
          "repeats" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "404",
                "display" : "Addictologie avec substance(s)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "001",
                "display" : "Addictologie comportementale (sans substance)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "004",
                "display" : "Algologie et Médecine de la douleur"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "040",
                "display" : "Diététique et Nutrition"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "435",
                "display" : "Expertise médicale (évaluation de préjudice)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "179",
                "display" : "Médecine aéronautique et aérospatiale"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "480",
                "display" : "Médecine du sommeil"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "081",
                "display" : "Médecine du sport"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "437",
                "display" : "Médecine générale"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "481",
                "display" : "Médecine générale à orientation Allergologie"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "482",
                "display" : "Médecine générale à orientation Andrologie"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "483",
                "display" : "Médecine générale à orientation Diabétologie"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "484",
                "display" : "Médecine générale à orientation Gériatrie, Gérontologie"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "485",
                "display" : "Médecine générale à orientation Gynécologie médicale"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "486",
                "display" : "Médecine générale à orientation Maladies infectieuses, parasitaires et tropicales"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "487",
                "display" : "Médecine générale à orientation Médecine pédiatrique"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "488",
                "display" : "Médecine générale à orientation Médecine vasculaire (Angiologie, Phlébologie)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "489",
                "display" : "Médecine générale à orientation Oncogériatrie (cancérologie)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "490",
                "display" : "Médecine générale à orientation Pathologies osseuses médicales"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "084",
                "display" : "Médecine hyperbare"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "455",
                "display" : "Médecine thermale"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "135",
                "display" : "Sexologie médicale"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "170",
                "display" : "Soins palliatifs"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "139",
                "display" : "Tabacologie"
              }
            }
          ]
        },
        {
          "linkId" : "acteSpecifique",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:specificAct",
          "prefix" : "3.9",
          "text" : "Actes Specifiques",
          "type" : "choice",
          "required" : false,
          "repeats" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0739",
                "display" : "Audiogramme"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1167",
                "display" : "Contention souple d’articulation"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1171",
                "display" : "Dépistage de la déficience visuelle de l'enfant"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1172",
                "display" : "Dépistage des surdités de l'enfant"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1181",
                "display" : "Diagnostic par dermatoscope"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1182",
                "display" : "Diagnostic par echoscope doppler"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0172",
                "display" : "ECG (électrocardiographie)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1186",
                "display" : "Echographie clinique ciblée"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0628",
                "display" : "Education thérapeutique du patient non labellisée ou psychoéducation"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1197",
                "display" : "Évacuation / Excision d'une thrombose hémorroïdaire externe"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0483",
                "display" : "Evaluation des troubles du sommeil (polysomnographie)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1199",
                "display" : "Examen médical d’aptitude à la fonction publique par médecin agréé"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1200",
                "display" : "Examen médical du permis de conduire par médecin agréé"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1208",
                "display" : "Frottis du col utérin"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1215",
                "display" : "Incision / excision d'un panaris superficiel"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0268",
                "display" : "Interruption volontaire de grossesse (IVG) médicamenteuse"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0812",
                "display" : "Médiation Familiale"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1244",
                "display" : "Pose d’implants contraceptifs"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1245",
                "display" : "Pose de DIU"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1247",
                "display" : "Pose de plâtres ou résines, orthèse"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1248",
                "display" : "Prescription initiale d'audioprothèses"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1249",
                "display" : "Prise en charge des migraines et céphalées"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0825",
                "display" : "Prophylaxie pré-exposition par voie orale (PrEP)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0768",
                "display" : "Psychothérapie"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0921",
                "display" : "Repérage des conduites addictives, soins et orientation"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0441",
                "display" : "Soins avec administration de MEOPA"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1269",
                "display" : "Sutures cutanées"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0448",
                "display" : "Synoviorthèse isotopique"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1270",
                "display" : "Tamponnement nasal antérieur"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0626",
                "display" : "Bilan neuro-psychologique"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0610",
                "display" : "Thérapie individuelle cognitivo-comportementale (TCC)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0608",
                "display" : "Thérapie individuelle par hypnose"
              }
            }
          ]
        },
        {
          "linkId" : "acteRealiseHorsCabinet",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:outsideOfficeAct",
          "prefix" : "3.10",
          "text" : "Acte spécifique hors cabinet",
          "type" : "choice",
          "required" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0528",
                "display" : "Education thérapeutique du patient (ETP) labellisée"
              }
            }
          ]
        },
        {
          "linkId" : "CompetenceSpecifique",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:specificCompetence",
          "prefix" : "3.11",
          "text" : "Compétence(s) spécifique(s)",
          "type" : "choice",
          "required" : false,
          "repeats" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J33-CompetenceSpecifique-ROR/FHIR/JDV-J33-CompetenceSpecifique-ROR/"
        },
        {
          "linkId" : "niveauExpertise",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:expertiseLevel",
          "prefix" : "3.12",
          "text" : "Niveau d’expertise",
          "type" : "choice",
          "required" : false,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J227-NiveauExpertise-ROR/FHIR/JDV-J227-NiveauExpertise-ROR"
        },
        {
          "linkId" : "typeFermeture",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:temporalityStopService",
          "prefix" : "3.13",
          "text" : "Type de fermeture",
          "type" : "choice",
          "required" : false,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J185-TypeFermeture-ROR/FHIR/JDV-J185-TypeFermeture-ROR"
        },
        {
          "linkId" : "dateFermeture",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.notAvailable:closingRepoeningDate.during.start",
          "prefix" : "3.14",
          "text" : "Date de fermeture",
          "type" : "date",
          "required" : false
        },
        {
          "linkId" : "DatePrevisionnelleReouverture",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.notAvailable:closingRepoeningDate.during.end",
          "prefix" : "3.15",
          "text" : "Date prévisionnelle réouverture",
          "type" : "date",
          "required" : false
        },
        {
          "linkId" : "Horaires",
          "prefix" : "3.16",
          "text" : "Horaires",
          "type" : "group",
          "repeats" : true,
          "item" : [
            {
              "linkId" : "typePlageHoraire",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.availableTime.extension:ror-available-time-type-of-time",
              "prefix" : "3.16.1",
              "text" : "Type de plage horaire",
              "type" : "choice",
              "required" : false,
              "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J41-TypeHoraire-ROR/FHIR/JDV-J41-TypeHoraire-ROR"
            },
            {
              "linkId" : "jourSemaine",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
              "prefix" : "3.16.2",
              "text" : "Numéro du jour dans la semaine",
              "type" : "integer",
              "required" : false,
              "repeats" : true
            },
            {
              "linkId" : "Heures",
              "prefix" : "3.16.3",
              "text" : "Heures",
              "type" : "group",
              "required" : false,
              "repeats" : true,
              "item" : [
                {
                  "linkId" : "availableStartTime",
                  "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.availableTime.availableStartTime",
                  "prefix" : "3.16.3.a",
                  "text" : "Début de la plage horaire",
                  "type" : "time",
                  "required" : false
                },
                {
                  "linkId" : "availableEndTime",
                  "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.availableTime.availableEndTime",
                  "prefix" : "3.16.2.b",
                  "text" : "Fin de la plage horaire",
                  "type" : "time",
                  "required" : false
                }
              ]
            }
          ]
        },
        {
          "linkId" : "boiteLettreMSS",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.telecom.value",
          "prefix" : "3.16",
          "text" : "Boîte aux lettres MSS",
          "type" : "string",
          "required" : false
        },
        {
          "linkId" : "modeExercice",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole-unit-exercise-mode#Extension.value[x]",
          "prefix" : "3.17",
          "text" : "Mode d’exercice dans l’UE",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J217-ModeExercice-ROR/FHIR/JDV-J217-ModeExercice-ROR"
        },
        {
          "linkId" : "secteurConventionnement",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.extension:contracted.value[x]",
          "prefix" : "3.18",
          "text" : "Secteur conventionnement",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J130-CNAMAmeliSecteurConventionnement-RASS/FHIR/JDV-J130-CNAMAmeliSecteurConventionnement-RASS/"
        },
        {
          "linkId" : "optionContratAccèsAuxSoins",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.extension:optionCAS",
          "prefix" : "3.19",
          "text" : "Option CAS (Contrat d’Accès aux Soins) / OPTAM (Option Pratique Tarifaire Maîtrisée)",
          "type" : "boolean",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "carteVitaleAcceptee",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole-vitaleAccepted",
          "prefix" : "3.20",
          "text" : "Carte vitale acceptée",
          "type" : "boolean",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "civiliteExercice",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/RORPractitionerRoleName#Extension.extension:exerciseTitle.value[x]:valueCodeableConcept",
          "prefix" : "3.21",
          "text" : "Civilité d’exercice",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J208-CiviliteExercice-ROR/FHIR/JDV-J208-CiviliteExercice-ROR"
        },
        {
          "linkId" : "nomExercice",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/RORPractitionerRoleName#Extension.extension:exerciseLastName",
          "prefix" : "3.22",
          "text" : "Nom d’exercice",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "prenomExercice",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/RORPractitionerRoleName#Extension.extension:exerciseFirstName",
          "prefix" : "3.23",
          "text" : "Prénom d’exercice",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "profession",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.code",
          "prefix" : "3.24",
          "text" : "Profession",
          "type" : "choice",
          "required" : true,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J229-ProfessionSante-ROR/FHIR/JDV-J229-ProfessionSante-ROR"
        },
        {
          "linkId" : "typeSavoirFaire",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:expertiseType",
          "prefix" : "3.25",
          "text" : "Type savoir faire",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J209-TypeSavoirFaire-ROR/FHIR/JDV-J209-TypeSavoirFaire-ROR"
        },
        {
          "linkId" : "specialite",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:specialty",
          "prefix" : "3.26",
          "text" : "Spécialité",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J210-SpecialiteOrdinale-ROR/FHIR/JDV-J210-SpecialiteOrdinale-ROR"
        },
        {
          "linkId" : "competence",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:competence",
          "prefix" : "3.27",
          "text" : "Compétence",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J232-Competence-ROR/FHIR/JDV-J232-Competence-ROR"
        },
        {
          "linkId" : "competenceExclusive",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:exclusiveCompetence",
          "prefix" : "3.28",
          "text" : "CCompétence Exclusive",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J211-CompetenceExclusive-ROR/FHIR/JDV-J211-CompetenceExclusive-ROR"
        },
        {
          "linkId" : "orientationParticuliere",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:specificOrientation",
          "prefix" : "3.29",
          "text" : "Orientation particulière",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J212-OrientationParticuliere-ROR/FHIR/JDV-J212-OrientationParticuliere-ROR"
        },
        {
          "linkId" : "capacite",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:expertiseCapacity",
          "prefix" : "3.30",
          "text" : "Capacité",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J213-CapaciteSavoirFaire-ROR/FHIR/JDV-J213-CapaciteSavoirFaire-ROR"
        },
        {
          "linkId" : "qualificationPAC",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:qualificationPAC",
          "prefix" : "3.31",
          "text" : "Qualification de Praticien Adjoint Contractuel",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J214-QualificationPAC-ROR/FHIR/JDV-J214-QualificationPAC-ROR"
        },
        {
          "linkId" : "DESCNonQualifiant",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:nonQualifyingDESC",
          "prefix" : "3.32",
          "text" : "DESC Non Qualifiant",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J215-DESCnonQualifiant-ROR/FHIR/JDV-J215-DESCnonQualifiant-ROR"
        },
        {
          "linkId" : "droitExerciceComplémentaire",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:supplementaryExerciseRight",
          "prefix" : "3.33",
          "text" : "Droit Exercice Complémentaire",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J216-DroitExerciceCompl-ROR/FHIR/JDV-J216-DroitExerciceCompl-ROR"
        },
        {
          "linkId" : "idNat_PS",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner#Practitioner.identifier.value",
          "prefix" : "3.34",
          "text" : "Identification Nationale du PS",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "boiteLettreMSS-PS",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner#Practitioner.telecom.value",
          "prefix" : "3.35",
          "text" : "Boîte aux lettres du service de messagerie sécurisée de santé",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "Civilite",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner#Practitioner.name.prefix",
          "prefix" : "3.36",
          "text" : "Civilité du PS",
          "type" : "string",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J207-Civilite-ROR/FHIR/JDV-J207-Civilite-ROR"
        },
        {
          "linkId" : "identifiantLieu",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location#Location.identifier:idLocation.value",
          "prefix" : "3.37",
          "text" : "Identifiant lieu real offre",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "adresseLieu",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location#Location.address.text",
          "prefix" : "3.38",
          "text" : "Adresse",
          "type" : "string",
          "required" : false
        },
        {
          "linkId" : "communeCog",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog",
          "prefix" : "3.39",
          "text" : "communeCog",
          "type" : "choice",
          "required" : false,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J124-Commune/FHIR/JDV-J124-Commune"
        },
        {
          "linkId" : "descriptionLieu",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog",
          "prefix" : "3.39",
          "text" : "Description (Le cas échéant, veuillez préciser comment atteindre le lieu)",
          "type" : "string",
          "required" : false
        }
      ]
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
```
 Vous pouvez télécharger le json [ici](Questionnaire-ror-questionnaire-offre-de-ville.json) et l'importer dans [https://lhcformbuilder.nlm.nih.gov/](https://lhcformbuilder.nlm.nih.gov/) pour le tester et le faire évoluer via cet IHM.

#### Scénario 2 : Un consommateur souhaite récupérer un ensemble de fiches de saisie sur un critère donné

**Description du scénario :** Un consommateur souhaite récupérer un ensemble de fiches de saisie sur un critère donné
Exemple ???

**Requête :**

`GET [BASE]/Questionnaire?`

**Requête expliquée :**

```sh
[BASE]/Questionnaire? #critère de recherche sur sur la date de mesure.

```