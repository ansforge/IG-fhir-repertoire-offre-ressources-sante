# Statuts autorisés pour les Questionnaires ROR - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Statuts autorisés pour les Questionnaires ROR**

## ValueSet: Statuts autorisés pour les Questionnaires ROR (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-questionnaire-status-vs | *Version*:0.7.0 |
| Draft as of 2026-07-23 | *Computable Name*:RORQuestionnaireStatusVS |

 
Restriction des statuts de publication FHIR aux valeurs applicables aux modèles de saisie ROR. La valeur ‘unknown’ est exclue. 

 **References** 

* [RORQuestionnaire](StructureDefinition-ror-questionnaire-healthcareservice.md)

### Définition logique (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ror-questionnaire-status-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-questionnaire-status-vs",
  "version" : "0.7.0",
  "name" : "RORQuestionnaireStatusVS",
  "title" : "Statuts autorisés pour les Questionnaires ROR",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-23T08:09:55+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Restriction des statuts de publication FHIR aux valeurs applicables aux modèles de saisie ROR. La valeur 'unknown' est exclue.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/publication-status",
      "version" : "4.0.1",
      "concept" : [{
        "code" : "draft"
      },
      {
        "code" : "active"
      },
      {
        "code" : "retired"
      }]
    }]
  }
}

```
