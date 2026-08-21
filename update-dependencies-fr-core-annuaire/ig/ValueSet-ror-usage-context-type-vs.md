# Value Set type pour le contexte d'usage du modèle de saisie - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Value Set type pour le contexte d'usage du modèle de saisie**

## ValueSet: Value Set type pour le contexte d'usage du modèle de saisie (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-usage-context-type-vs | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:RORUsageContextTypeVS |

 
Extension du Value Set http://hl7.org/fhir/ValueSet/usage-context-type pour fixer le type de contexte d’usage du modèle de saisie avec le code EG ou le S pour Spécialité ordinale ou P01 pour le type de profession 

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
  "id" : "ror-usage-context-type-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-usage-context-type-vs",
  "version" : "0.7.0",
  "name" : "RORUsageContextTypeVS",
  "title" : "Value Set type pour le contexte d'usage du modèle de saisie",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-21T09:39:43+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension du Value Set http://hl7.org/fhir/ValueSet/usage-context-type pour fixer le type de contexte d'usage du modèle de saisie avec le code EG ou le S pour Spécialité ordinale ou P01 pour le type de profession",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "version" : "2.0.1"
    },
    {
      "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/usage-context-ror-codesystem"
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R67-TypeStructure-EJ-EG/FHIR/TRE-R67-TypeStructure-EJ-EG",
      "concept" : [{
        "code" : "EG"
      }]
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
      "concept" : [{
        "code" : "S"
      }]
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R288-TypeProfession/FHIR/TRE-R288-TypeProfession",
      "concept" : [{
        "code" : "P01"
      }]
    }]
  }
}

```
