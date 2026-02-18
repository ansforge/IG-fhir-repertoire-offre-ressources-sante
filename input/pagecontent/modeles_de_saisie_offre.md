<!-- ## Modèle de saisie -->
###  Construction de la requête de base

<table>
<tbody>
<tr>
<td width="215">
<p><strong>Interaction FHIR</strong></p>
</td>
<td width="465">
<p>Create<a href="#_ftn1" name="_ftnref1">[1]</a></p>
<p>Update<a href="#_ftn2" name="_ftnref2">[2]</a></p>
</td>
<td width="465">
<p>Search<a href="#_ftn3" name="_ftnref3"><sup>[3]</sup></a></p>
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

-   Un body contenant une ressource [Bundle](https://www.hl7.org/fhir/R4/bundle.html) dont le type = searchset.\ Le bundle encapsule 0 à n ressources Measure corespondant aux critères de recherche plus les ressources incluses correspondant aux critères de recherche.\ Le service développé renvoie les 200 premiers résultats et indique le total trouvé dans une balise \"total\". Dans le cas où il n'y a pas de résultat le service renvoie \"total\": 0.

Remarque : la recherche est un succès à partir du moment où la requête peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR  <http://hl7.org/fhir/R4/http.html>

##### Réponse de base -- Echec

Lien vers la spécification FHIR : <http://hl7.org/fhir/R4/operationoutcome.html>

Si la recherche échoue, le serveur doit répondre :

-   Un header avec un un code erreur HTTP 4XX ou 5XX

-   Un body contenant une ressource [OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html) qui donne les détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la requête, ce qui est différent d'aucune correspondance à la recherche. Plus de précision sur la spécification FHIR : <http://hl7.org/fhir/R4/http.html>

### Critères de recherche pour Search

  Les critères de recherche applicables pour RORQuestionnaire sont accesible ici :
[paragraphe dédié](search_param.html#structuredefinition-ror-questionnaire).

**En complément, vous pouvez accéder aux Capability Statements [ici](artifacts.html#behavior-capability-statements)**

### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes sont décrits [ici](modifiers.html).

### Exemple de requêtes

#### Scénario 1 : Création d'un modèle de saisie

**Description du scénario :** Un consommateur (ex: établissement) souhaite créer une nouvelle offre opération.

Exemple de ressource : [questionnaire (modèle de saisie) permettant de renseigner l'Offre Opérationnelle d'une unité hospitalière de gynécologie](Questionnaire-ror-questionnaire-offre-mco.json)

**Requête :**

N.B.: Exemple de ressource fictif pour illustration, ces ressources ne sont pas validées par le guide d'implémentation et sont donc sujettes aux erreurs. Pour l'implémentation se baser sur les profils.

```json
POST [BASE]/Questionnaire
{
  "resourceType": "Questionnaire",
  "id": "ror-questionnaire-offre-mco",
  "meta": {
    "profile": [
      "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-questionnaire-healthcareservice",
      "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-defn"
    ]
  },
  "extension": [
    {
      "url": "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext",
      "extension": [
        {
          "url": "name",
          "valueCoding": {
            "code": "ror-structure",
            "system": "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/ror-launchcontext"
          }
        },
        {
          "url": "type",
          "valueCode": "HealthcareService"
        }
      ]
    }
  ],
  "useContext": [
    {
      "code": {
        "code": "EG",
        "system": "https://mos.esante.gouv.fr/NOS/TRE_R67-TypeStructure-EJ-EG/FHIR/TRE-R67-TypeStructure-EJ-EG"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "101",
            "system": "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement"
          }
        ]
      }
    },
    {
      "code": {
        "code": "EG",
        "system": "https://mos.esante.gouv.fr/NOS/TRE_R67-TypeStructure-EJ-EG/FHIR/TRE-R67-TypeStructure-EJ-EG"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "106",
            "system": "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement"
          }
        ]
      }
    },
    {
      "code": {
        "code": "EG",
        "system": "https://mos.esante.gouv.fr/NOS/TRE_R67-TypeStructure-EJ-EG/FHIR/TRE-R67-TypeStructure-EJ-EG"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "114",
            "system": "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement"
          }
        ]
      }
    },
    {
      "code": {
        "code": "EG",
        "system": "https://mos.esante.gouv.fr/NOS/TRE_R67-TypeStructure-EJ-EG/FHIR/TRE-R67-TypeStructure-EJ-EG"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "355",
            "system": "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement"
          }
        ]
      }
    },
    {
      "code": {
        "code": "EG",
        "system": "https://mos.esante.gouv.fr/NOS/TRE_R67-TypeStructure-EJ-EG/FHIR/TRE-R67-TypeStructure-EJ-EG"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "365",
            "system": "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement"
          }
        ]
      }
    },
    {
      "code": {
        "code": "EG",
        "system": "https://mos.esante.gouv.fr/NOS/TRE_R67-TypeStructure-EJ-EG/FHIR/TRE-R67-TypeStructure-EJ-EG"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "698",
            "system": "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement"
          }
        ]
      }
    },
    {
      "code": {
        "code": "EG",
        "system": "https://mos.esante.gouv.fr/NOS/TRE_R67-TypeStructure-EJ-EG/FHIR/TRE-R67-TypeStructure-EJ-EG"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "128",
            "system": "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement"
          }
        ]
      }
    },
    {
      "code": {
        "code": "EG",
        "system": "https://mos.esante.gouv.fr/NOS/TRE_R67-TypeStructure-EJ-EG/FHIR/TRE-R67-TypeStructure-EJ-EG"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "129",
            "system": "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement"
          }
        ]
      }
    },
    {
      "code": {
        "code": "EG",
        "system": "https://mos.esante.gouv.fr/NOS/TRE_R67-TypeStructure-EJ-EG/FHIR/TRE-R67-TypeStructure-EJ-EG"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "122",
            "system": "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement"
          }
        ]
      }
    },
    {
      "code": {
        "code": "EG",
        "system": "https://mos.esante.gouv.fr/NOS/TRE_R67-TypeStructure-EJ-EG/FHIR/TRE-R67-TypeStructure-EJ-EG"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "131",
            "system": "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement"
          }
        ]
      }
    },
    {
      "code": {
        "code": "champAct",
        "system": "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/usage-context-ror-codesystem"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "01",
            "system": "https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite"
          }
        ]
      }
    }
  ],
  "version": "1",
  "name": "MS-141",
  "title": "Unité hospitalière de gynécologie",
  "identifier": [
    {
      "use": "official",
      "value": "MS-141"
    }
  ],
  "status": "active",
  "date": "2026-02-13",
  "publisher": "ANS",
  "description": "L’unité hospitalière de gynécologique assure la réalisation d’actes de gynécologie. Les valeurs proposées sont celles identifiées par le Conseil national professionnel (CNP) de gynécologie-obstétrique et de gynécologie médicale.",
  "url": "https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/FDS-109",
  "jurisdiction": [
    {
      "coding": [
        {
          "code": "FR",
          "system": "urn:iso:std:iso:3166",
          "display": "FRANCE"
        }
      ]
    }
  ],
  "subjectType": [
    "HealthcareService"
  ],
  "lastReviewDate": "2023-12-05",
  "purpose": "Les questionnaires crées à partir de cette ressource sont utilisés par les établissements pour saisir leurs offres opérationnelles.",
  "item": [
    {
      "extension": [
        {
          "url": "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
          "valueExpression": {
            "language": "application/x-fhir-query",
            "expression": "HealthcareService"
          }
        }
      ],
      "linkId": "Hs1",
      "type": "group",
      "item": [
        {
          "linkId": "cing#Hs1.informationsGenerales",
          "text": "Informations générales",
          "type": "group",
          "item": [
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression",
                  "valueExpression": {
                    "language": "text/fhirpath",
                    "expression": "%user.name"
                  }
                }
              ],
              "linkId": "Hs1.name",
              "definition": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.name",
              "text": "Nom de l'offre",
              "type": "string",
              "required": true,
              "repeats": false,
              "readOnly": false
            },
            {
              "linkId": "Hs1.type",
              "definition": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.type",
              "type": "group",
              "item": [
                {
                  "extension": [
                    {
                      "url": "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression",
                      "valueExpression": {
                        "language": "text/fhirpath",
                        "expression": "%user.type.where(coding.system = 'https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite').coding"
                      }
                    }
                  ],
                  "linkId": "Hs1.type.coding",
                  "definition": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.type.coding",
                  "text": "Champ d'activité",
                  "type": "choice",
                  "required": true,
                  "repeats": false,
                  "readOnly": false,
                  "answerOption": [
                    {
                      "valueCoding": {
                        "system": "https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite",
                        "code": "01",
                        "display": "Médecine, Chirurgie Obstétrique (MCO)"
                      },
                      "initialSelected": false
                    }
                  ]
                },
                {
                  "linkId": "Hs1.providedBy",
                  "definition": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.providedBy",
                  "text": "Rattachement organisationnel",
                  "type": "string",
                  "required": true,
                  "repeats": false,
                  "readOnly": false
                },
                ...
```
 Vous pouvez télécharger le json [ici](Questionnaire-ror-questionnaire-offre-de-ville.json) et l'importer dans [https://lhcformbuilder.nlm.nih.gov/](https://lhcformbuilder.nlm.nih.gov/) pour le tester et le faire évoluer via cet IHM.


#### Scénario 2 : Un consommateur souhaite récupérer l'ensemble des modèles

**Description du scénario :** Un consommateur souhaite récupérer l'ensemble des modèles.


**Requête :**

`GET [BASE]/Questionnaire`

**Requête expliquée :**

```sh
GET [BASE]/Questionnaire #recherche sans critère pour récupérer tous les modèles

```

#### Scénario 3 : Un consommateur souhaite récupérer un modèle <code><span style="color: #ff0000;">draft</span></code>

**Description du scénario :** Un consommateur souhaite récupérer un modèle


**Requête :**

`GET [BASE]/Questionnaire?identifier=XXX`

**Requête expliquée :**

```sh
GET [BASE]/Questionnaire?identifier=XXX #critère de recherche sur l’identifiant du modèle

```


#### Scénario 4 : Un consommateur souhaite récupérer un ensemble de modèles de saisie sur un critère donné <code><span style="color: #ff0000;">draft</span></code>

**Description du scénario :** Un consommateur souhaite récupérer un ensemble de modèles de saisie pour une catégorie d'EG donnée. Par exemple, un Centre de santé.


**Requête :**

`GET [BASE]/Questionnaire?context=https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement|124`

**Requête expliquée :**

```sh
GET [BASE]/Questionnaire?context=https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement|124 # critère permettant de rechercher les modèles utilisée pour la catégorie d'EG 'Centre de santé' (voir binding)

```

#### Autres scénarios

Pour construire d'autres requêtes selon vos besoins :
* vous pouvez consulter les spécifications du standard FHIR [Http - FHIR v4.0.1 (hl7.org)](https://hl7.org/fhir/R4/http.html)
* utiliser les critères de recherche défini au [paragraphe dédié](search_param.html#structuredefinition-ror-questionnaire)
