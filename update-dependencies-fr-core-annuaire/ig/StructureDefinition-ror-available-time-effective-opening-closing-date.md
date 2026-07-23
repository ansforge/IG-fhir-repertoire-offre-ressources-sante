# RORAvailableTimeEffectiveOpeningClosingDate - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORAvailableTimeEffectiveOpeningClosingDate**

## Extension: RORAvailableTimeEffectiveOpeningClosingDate 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date | *Version*:0.7.0 |
| Draft as of 2026-07-23 | *Computable Name*:RORAvailableTimeEffectiveOpeningClosingDate |

Extension créée dans le cadre du ROR pour décrire le planning d’activité d’un professionnel ou d’une offre.

**Context of Use**

This extension may be used on the following element(s):

* Element ID HealthcareService.availableTime
* Element ID PractitionerRole.availableTime

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORHealthcareService](StructureDefinition-ror-healthcareservice.md) and [RORPractitionerRoleProfile](StructureDefinition-ror-practitionerrole.md)
* Exemples pour ce/t/te Extension: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-available-time-effective-opening-closing-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-available-time-effective-opening-closing-date.csv), [Excel](StructureDefinition-ror-available-time-effective-opening-closing-date.xlsx), [Schematron](StructureDefinition-ror-available-time-effective-opening-closing-date.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-available-time-effective-opening-closing-date",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date",
  "version" : "0.7.0",
  "name" : "RORAvailableTimeEffectiveOpeningClosingDate",
  "status" : "draft",
  "date" : "2026-07-23T08:09:55+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR pour décrire le planning d'activité d'un professionnel ou d'une offre.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORAvailableTimeEffectiveOpeningClosingDate",
    "name" : "Spécification métier vers l'extension ROR AvailableTimeEffectiveOpeningClosingDate"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "HealthcareService.availableTime"
  },
  {
    "type" : "element",
    "expression" : "PractitionerRole.availableTime"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR pour décrire le planning d'activité d'un professionnel ou d'une offre."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Extension.value[x].start",
      "path" : "Extension.value[x].start",
      "mapping" : [{
        "identity" : "specmetier-to-RORAvailableTimeEffectiveOpeningClosingDate",
        "map" : "heureDebut"
      }]
    },
    {
      "id" : "Extension.value[x].end",
      "path" : "Extension.value[x].end",
      "mapping" : [{
        "identity" : "specmetier-to-RORAvailableTimeEffectiveOpeningClosingDate",
        "map" : "heureFin"
      }]
    }]
  }
}

```
