# RORLocationResidentialCapacity - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORLocationResidentialCapacity**

## Extension: RORLocationResidentialCapacity 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-residential-capacity | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:RORLocationResidentialCapacity |

Extension créée dans le cadre du ROR qui décrit un type d’habitation adapté à la réalisation d’une offre.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Location

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORLocation](StructureDefinition-ror-location.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-location-residential-capacity)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-location-residential-capacity.csv), [Excel](StructureDefinition-ror-location-residential-capacity.xlsx), [Schematron](StructureDefinition-ror-location-residential-capacity.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-location-residential-capacity",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-residential-capacity",
  "version" : "0.7.0",
  "name" : "RORLocationResidentialCapacity",
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
  "description" : "Extension créée dans le cadre du ROR qui décrit un type d'habitation adapté à la réalisation d'une offre.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORResidentialLocationCapacity",
    "name" : "Spécification métier vers l'extension ROR LocationResidentialCapacity"
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
    "expression" : "Location"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR qui décrit un type d'habitation adapté à la réalisation d'une offre.",
      "mapping" : [{
        "identity" : "specmetier-to-RORResidentialLocationCapacity",
        "map" : "CapaciteHabitation"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:residentialType",
      "path" : "Extension.extension",
      "sliceName" : "residentialType",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:residentialType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:residentialType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "residentialType"
    },
    {
      "id" : "Extension.extension:residentialType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J32-TypeHabitation-ROR/FHIR/JDV-J32-TypeHabitation-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORResidentialLocationCapacity",
        "map" : "typeHabitation"
      }]
    },
    {
      "id" : "Extension.extension:residentialNumber",
      "path" : "Extension.extension",
      "sliceName" : "residentialNumber",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:residentialNumber.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:residentialNumber.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "residentialNumber"
    },
    {
      "id" : "Extension.extension:residentialNumber.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORResidentialLocationCapacity",
        "map" : "nbHabitation"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-residential-capacity"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
