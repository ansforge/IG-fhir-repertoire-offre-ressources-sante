# RORCommuneCog - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORCommuneCog**

## Extension: RORCommuneCog 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:RORCommuneCog |

Extension créée dans le cadre du ROR pour représenter le code officiel géographique (COG) de la commune dans laquelle le lieu est situé.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Location

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORLocation](StructureDefinition-ror-location.md)
* Exemples pour ce/t/te Extension: [Location/ror-location-exemple](Location-ror-location-exemple.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-commune-cog)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-commune-cog.csv), [Excel](StructureDefinition-ror-commune-cog.xlsx), [Schematron](StructureDefinition-ror-commune-cog.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-commune-cog",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog",
  "version" : "0.7.0",
  "name" : "RORCommuneCog",
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
  "description" : "Extension créée dans le cadre du ROR pour représenter le code officiel géographique (COG) de la commune dans laquelle le lieu est situé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORCommuneCog",
    "name" : "Spécification métier vers l'extension ROR CommuneCog"
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
      "definition" : "Extension créée dans le cadre du ROR pour représenter le code officiel géographique (COG) de la commune dans laquelle le lieu est situé."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J124-Commune/FHIR/JDV-J124-Commune"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORCommuneCog",
        "map" : "communeCog"
      }]
    }]
  }
}

```
