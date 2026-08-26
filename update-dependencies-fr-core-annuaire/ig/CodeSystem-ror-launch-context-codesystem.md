# Code System définissant le contexte standard du lancement d'un questionnaire dans le cadre du ROR - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Code System définissant le contexte standard du lancement d'un questionnaire dans le cadre du ROR**

## CodeSystem: Code System définissant le contexte standard du lancement d'un questionnaire dans le cadre du ROR (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/ror-launch-context-codesystem | *Version*:0.7.0 |
| Draft as of 2026-08-26 | *Computable Name*:RORLaunchContextCodeSystem |

 
Code System pour étendre http://hl7.org/fhir/uv/sdc/CodeSystem-launchContext.html afin de l’adapter au contexte de lancement des questionnaires dans le cadre du ROR 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Value Set pour le contexte standard du lancement d'un questionnaire dans le cadre du ROR](ValueSet-ror-launch-context-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ror-launch-context-codesystem",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/ror-launch-context-codesystem",
  "version" : "0.7.0",
  "name" : "RORLaunchContextCodeSystem",
  "title" : "Code System définissant le contexte standard du lancement d'un questionnaire dans le cadre du ROR",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-26T13:04:13+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Code System pour étendre http://hl7.org/fhir/uv/sdc/CodeSystem-launchContext.html afin de l'adapter au contexte de lancement des questionnaires dans le cadre du ROR",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "compositional" : false,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "ror-structure",
    "display" : "ROR Structure",
    "definition" : "Structure in context at launch time (FHIR Location, HealthcareService, Organization) "
  }]
}

```
