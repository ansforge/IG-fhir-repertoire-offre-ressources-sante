# RORHealthcareServiceSensitiveUnit - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR pour signaler que toutes les informations de description d'une offre sont confidentielles car elles présentent un risque d'utilisation à des fins malveillantes, ou que le porteur d'offre ne souhaite pas diffuser.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [RORHealthcareService](StructureDefinition-ror-healthcareservice.md)
* Examples for this Extension: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.ror|current/StructureDefinition/StructureDefinition-ror-healthcareservice-sensitive-unit.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ror-healthcareservice-sensitive-unit.csv), [Excel](../StructureDefinition-ror-healthcareservice-sensitive-unit.xlsx), [Schematron](../StructureDefinition-ror-healthcareservice-sensitive-unit.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-healthcareservice-sensitive-unit",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit",
  "version" : "0.7.0",
  "name" : "RORHealthcareServiceSensitiveUnit",
  "status" : "draft",
  "date" : "2026-07-24T08:25:42+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR pour signaler que toutes les informations de description d'une offre sont confidentielles car elles présentent un risque d'utilisation à des fins malveillantes, ou que le porteur d'offre ne souhaite pas diffuser.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORHealthcareServiceSensitiveUnit",
    "name" : "Spécification métier vers l'extension ROR HealthcareServiceSensitiveUnit"
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
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR pour signaler que toutes les informations de description d'une offre sont confidentielles car elles présentent un risque d'utilisation à des fins malveillantes, ou que le porteur d'offre ne souhaite pas diffuser."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareServiceSensitiveUnit",
        "map" : "uniteSensible"
      }]
    }]
  }
}

```
