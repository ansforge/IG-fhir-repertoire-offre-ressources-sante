# RORTerritorialDivision - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORTerritorialDivision**

## Extension: RORTerritorialDivision 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division | *Version*:0.7.0 |
| Draft as of 2026-07-23 | *Computable Name*:RORTerritorialDivision |

Extension créée dans le cadre du ROR qui correspond au périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite. Cela inclut notamment les divisions territoriales dans lesquelles les professionnels se déplacent.

**Context of Use**

This extension may be used on the following element(s):

* Element ID HealthcareService
* Element ID Organization

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORHealthcareService](StructureDefinition-ror-healthcareservice.md) and [ROROrganization](StructureDefinition-ror-organization.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-territorial-division)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-territorial-division.csv), [Excel](StructureDefinition-ror-territorial-division.xlsx), [Schematron](StructureDefinition-ror-territorial-division.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-territorial-division",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division",
  "version" : "0.7.0",
  "name" : "RORTerritorialDivision",
  "status" : "draft",
  "date" : "2026-07-23T07:54:45+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR qui correspond au périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite. \nCela inclut notamment les divisions territoriales dans lesquelles les professionnels se déplacent.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORTerritorialDivision",
    "name" : "Spécification métier vers l'extension ROR territorial division"
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
    "expression" : "HealthcareService"
  },
  {
    "type" : "element",
    "expression" : "Organization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR qui correspond au périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite. \nCela inclut notamment les divisions territoriales dans lesquelles les professionnels se déplacent.",
      "mapping" : [{
        "identity" : "specmetier-to-RORTerritorialDivision",
        "map" : "DivisionTerritoriale",
        "comment" : "RORHealthcareService : Tous les profils\n/ ROROrganization : Tous les profils"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:typeTerritorialDivision",
      "path" : "Extension.extension",
      "sliceName" : "typeTerritorialDivision",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:typeTerritorialDivision.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:typeTerritorialDivision.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "typeTerritorialDivision"
    },
    {
      "id" : "Extension.extension:typeTerritorialDivision.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J223-TypeDivisionTerritoriale-ROR/FHIR/JDV-J223-TypeDivisionTerritoriale-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORTerritorialDivision",
        "map" : "type"
      }]
    },
    {
      "id" : "Extension.extension:codeTerritorialDivision",
      "path" : "Extension.extension",
      "sliceName" : "codeTerritorialDivision",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:codeTerritorialDivision.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:codeTerritorialDivision.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "codeTerritorialDivision"
    },
    {
      "id" : "Extension.extension:codeTerritorialDivision.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/code-region-territorial-division-ror-valueset"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORTerritorialDivision",
        "map" : "code"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
