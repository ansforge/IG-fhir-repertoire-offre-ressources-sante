# RORCoordinateReliability - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORCoordinateReliability**

## Extension: RORCoordinateReliability 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-coordinate-reliability | *Version*:0.7.0 |
| Draft as of 2026-08-26 | *Computable Name*:RORCoordinateReliability |

Extension créée dans le cadre du ROR pour signaler si les informations des coordonnées géographiques sont issues d’un mode de production qui assure un certain niveau de fiabilité

**Context of Use**

This extension may be used on the following element(s):

* Element ID Address
* Element ID Location.position
* Extension URL https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-eg-location

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORLocation](StructureDefinition-ror-location.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-coordinate-reliability)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-coordinate-reliability.csv), [Excel](StructureDefinition-ror-coordinate-reliability.xlsx), [Schematron](StructureDefinition-ror-coordinate-reliability.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-coordinate-reliability",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-coordinate-reliability",
  "version" : "0.7.0",
  "name" : "RORCoordinateReliability",
  "status" : "draft",
  "date" : "2026-08-26T13:04:13+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR pour signaler si les informations des coordonnées géographiques sont issues d'un mode de production qui assure un certain niveau de fiabilité",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORCoordinateReliability",
    "name" : "Spécification métier vers l'extension ROR CoordinateReliability"
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
    "expression" : "Address"
  },
  {
    "type" : "element",
    "expression" : "Location.position"
  },
  {
    "type" : "extension",
    "expression" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-eg-location"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR pour signaler si les informations des coordonnées géographiques sont issues d'un mode de production qui assure un certain niveau de fiabilité"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-coordinate-reliability"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORCoordinateReliability",
        "map" : "coordonneesFiables"
      }]
    }]
  }
}

```
