# RORContactTelecomUsage - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORContactTelecomUsage**

## Extension: RORContactTelecomUsage 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-telecom-usage | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:RORContactTelecomUsage |

Extension créée dans le cadre du ROR

**Context of Use**

This extension may be used on the following element(s):

* Element ID Organization.contact.telecom

**Usage info**

**Utilisations:**

* Ce Extension n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-contact-telecom-usage)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-contact-telecom-usage.csv), [Excel](StructureDefinition-ror-contact-telecom-usage.xlsx), [Schematron](StructureDefinition-ror-contact-telecom-usage.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-contact-telecom-usage",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-telecom-usage",
  "version" : "0.7.0",
  "name" : "RORContactTelecomUsage",
  "status" : "draft",
  "date" : "2026-08-21T09:39:43+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORContactTelecomUsage",
    "name" : "Spécification métier vers l'extension ROR ContactTelecomUsage"
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
    "expression" : "Organization.contact.telecom"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-telecom-usage"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORContactTelecomUsage",
        "map" : "utilisation"
      }]
    }]
  }
}

```
