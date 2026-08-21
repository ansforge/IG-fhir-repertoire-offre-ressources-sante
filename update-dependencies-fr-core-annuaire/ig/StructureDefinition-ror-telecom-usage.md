# RORTelecomUsage - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORTelecomUsage**

## Extension: RORTelecomUsage 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:RORTelecomUsage |

Extension créée dans le cadre du ROR qui précise l’utilisation du canal de communication

**Context of Use**

This extension may be used on the following element(s):

* Element ID ContactPoint
* Element ID HealthcareService.extension.extension

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORCoreOrganizationUF](StructureDefinition-ror-core-organization-uf.md), [RORHealthcareServiceContactTelecom](StructureDefinition-ror-healthcareservice-contact-telecom.md), [RORHealthcareService](StructureDefinition-ror-healthcareservice.md), [RORInternalOrganization](StructureDefinition-ror-internal-organization.md)... Show 4 more, [RORLocation](StructureDefinition-ror-location.md), [ROROrganization](StructureDefinition-ror-organization.md), [RORPractitioner](StructureDefinition-ror-practitioner.md) and [RORPractitionerRole](StructureDefinition-ror-practitionerrole.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-telecom-usage)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-telecom-usage.csv), [Excel](StructureDefinition-ror-telecom-usage.xlsx), [Schematron](StructureDefinition-ror-telecom-usage.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-telecom-usage",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage",
  "version" : "0.7.0",
  "name" : "RORTelecomUsage",
  "status" : "draft",
  "date" : "2026-08-21T14:30:36+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR qui précise l'utilisation du canal de communication",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORTelecomUsage",
    "name" : "Spécification métier vers l'extension ROR TelecomCommunicationUsage"
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
    "expression" : "ContactPoint"
  },
  {
    "type" : "element",
    "expression" : "HealthcareService.extension.extension"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR qui précise l'utilisation du canal de communication"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORTelecomUsage",
        "map" : "utilisation"
      }]
    }]
  }
}

```
