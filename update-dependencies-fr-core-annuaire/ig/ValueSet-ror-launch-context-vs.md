# Value Set pour le contexte standard du lancement d'un questionnaire dans le cadre du ROR - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Value Set pour le contexte standard du lancement d'un questionnaire dans le cadre du ROR**

## ValueSet: Value Set pour le contexte standard du lancement d'un questionnaire dans le cadre du ROR (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-launch-context-vs | *Version*:0.7.0 |
| Draft as of 2026-08-26 | *Computable Name*:RORLaunchContextVS |

 
Extension du Value Set https://hl7.org/fhir/uv/sdc/ValueSet-launchContext.html afin de l’adapter au contexte de lancement des questionnaires dans le cadre du ROR 

 **References** 

* [Profil de LaunchContextExtension créé dans le cadre du ROR afin d'ajouter le name 'ror-structure' acceptant les ressources FHIR 'Organization', 'HealthcareService' et 'Location'](StructureDefinition-ror-launchcontext.md)

### Définition logique (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "ror-launch-context-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-launch-context-vs",
  "version" : "0.7.0",
  "name" : "RORLaunchContextVS",
  "title" : "Value Set pour le contexte standard du lancement d'un questionnaire dans le cadre du ROR",
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
  "description" : "Extension du Value Set https://hl7.org/fhir/uv/sdc/ValueSet-launchContext.html afin de l'adapter au contexte de lancement des questionnaires dans le cadre du ROR",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/uv/sdc/CodeSystem-launchContext.html"
    },
    {
      "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/ror-launch-context-codesystem"
    }]
  }
}

```
