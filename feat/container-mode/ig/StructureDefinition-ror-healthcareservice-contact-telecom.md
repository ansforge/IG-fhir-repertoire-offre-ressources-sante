# RORHealthcareServiceContactTelecom - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORHealthcareServiceContactTelecom**

## Extension: RORHealthcareServiceContactTelecom 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom | *Version*:0.7.0 |
| Draft as of 2026-06-26 | *Computable Name*:RORHealthcareServiceContactTelecom |

Extension créée dans le cadre du ROR pour les télécommunications du contact.

**Context of Use**

This extension may be used on the following element(s):

* Element ID HealthcareService.extension

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORHealthcareServiceContact](StructureDefinition-ror-healthcareservice-contact.md)
* Exemples pour ce/t/te Extension: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-healthcareservice-contact-telecom)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-healthcareservice-contact-telecom.csv), [Excel](StructureDefinition-ror-healthcareservice-contact-telecom.xlsx), [Schematron](StructureDefinition-ror-healthcareservice-contact-telecom.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-healthcareservice-contact-telecom",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom",
  "version" : "0.7.0",
  "name" : "RORHealthcareServiceContactTelecom",
  "status" : "draft",
  "date" : "2026-06-26T12:10:23+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR pour les télécommunications du contact.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORHealthcareServiceContactTelecom",
    "name" : "Spécification métier vers l'extension RORHealthcareServiceContactTelecom"
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
    "expression" : "HealthcareService.extension"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR pour les télécommunications du contact.",
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareServiceContactTelecom",
        "map" : "telecommunication"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 3
    },
    {
      "id" : "Extension.extension:ror-telecom-communication-channel",
      "path" : "Extension.extension",
      "sliceName" : "ror-telecom-communication-channel",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel"]
      }]
    },
    {
      "id" : "Extension.extension:ror-telecom-usage",
      "path" : "Extension.extension",
      "sliceName" : "ror-telecom-usage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage"]
      }]
    },
    {
      "id" : "Extension.extension:ror-telecom-confidentiality-level",
      "path" : "Extension.extension",
      "sliceName" : "ror-telecom-confidentiality-level",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level"]
      }]
    },
    {
      "id" : "Extension.extension:telecomAddress",
      "path" : "Extension.extension",
      "sliceName" : "telecomAddress",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:telecomAddress.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:telecomAddress.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "telecomAddress"
    },
    {
      "id" : "Extension.extension:telecomAddress.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareServiceContactTelecom",
        "map" : "adresseTelecom"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
