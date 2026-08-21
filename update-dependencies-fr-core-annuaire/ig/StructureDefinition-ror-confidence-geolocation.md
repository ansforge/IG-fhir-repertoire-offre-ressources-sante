# RORConfidenceGeolocation - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORConfidenceGeolocation**

## Extension: RORConfidenceGeolocation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidence-geolocation | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:RORConfidenceGeolocation |

Extension créée dans le cadre du ROR. Il s’agit d’une information supplémentaire pour signaler si la longitude et la latitude sont fiables.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Organization.address.extension

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [ROROrganization](StructureDefinition-ror-organization.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-confidence-geolocation)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-confidence-geolocation.csv), [Excel](StructureDefinition-ror-confidence-geolocation.xlsx), [Schematron](StructureDefinition-ror-confidence-geolocation.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-confidence-geolocation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidence-geolocation",
  "version" : "0.7.0",
  "name" : "RORConfidenceGeolocation",
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
  "description" : "Extension créée dans le cadre du ROR. Il s'agit d'une information supplémentaire pour signaler si la longitude et la latitude sont fiables.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Organization.address.extension"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR. Il s'agit d'une information supplémentaire pour signaler si la longitude et la latitude sont fiables."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidence-geolocation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
