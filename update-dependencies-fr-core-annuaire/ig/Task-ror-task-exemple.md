# ror-task-exemple - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-task-exemple**

## Example Task: ror-task-exemple

Profil: [RORTask](StructureDefinition-ror-task.md)

**status**: In Progress

**businessStatus**: À traiter

**intent**: order

**code**: Exactitude

**description**: Ici la catégorie d'établissement n'est pas la bonne

**focus**: Identifier: 1910800002

**authoredOn**: 2024-01-03

**lastModified**: 2024-01-04

**reasonCode**: Correction

> **input****type**: systemRequester**value**: IHM

> **input****type**: pathElementError**value**: `Organization.type.coding.where(system='https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement')`



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "ror-task-exemple",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-task"]
  },
  "status" : "in-progress",
  "businessStatus" : {
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R352-StatutMetierAnomalie/FHIR/TRE-R352-StatutMetierAnomalie",
      "code" : "02",
      "display" : "À traiter"
    }]
  },
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R350-ThematiqueAnomalie/FHIR/TRE-R350-ThematiqueAnomalie",
      "code" : "06",
      "display" : "Exactitude"
    }]
  },
  "description" : "Ici la catégorie d'établissement n'est pas la bonne",
  "focus" : {
    "type" : "Organization",
    "identifier" : {
      "value" : "1910800002"
    }
  },
  "authoredOn" : "2024-01-03",
  "lastModified" : "2024-01-04",
  "reasonCode" : {
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R349-ActionAnomalie/FHIR/TRE-R349-ActionAnomalie",
      "code" : "COR",
      "display" : "Correction"
    }]
  },
  "input" : [{
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/input-task-ror-codesystem",
        "code" : "systemRequester"
      }]
    },
    "valueString" : "IHM"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/input-task-ror-codesystem",
        "code" : "pathElementError"
      }]
    },
    "valueExpression" : {
      "language" : "text/fhirpath",
      "expression" : "Organization.type.coding.where(system='https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement')"
    }
  }]
}

```
