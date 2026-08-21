# RORLocationEquipment - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORLocationEquipment**

## Extension: RORLocationEquipment 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:RORLocationEquipment |

Extension créée dans le cadre du ROR pour décrire une ressource matérielle discriminante pour la réalisation d’une prestation. Cette extension a été créée, car Device ne correspondait pas à la définition de l’équipement pour le ROR. Device représente une instance d’un équipement alors l’équipement pour le ROR correspond juste au nombre d’équipement de même type.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Location

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORLocation](StructureDefinition-ror-location.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-location-equipment)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-location-equipment.csv), [Excel](StructureDefinition-ror-location-equipment.xlsx), [Schematron](StructureDefinition-ror-location-equipment.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-location-equipment",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment",
  "version" : "0.7.0",
  "name" : "RORLocationEquipment",
  "status" : "draft",
  "date" : "2026-08-21T09:28:33+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR pour décrire une ressource matérielle discriminante pour la réalisation d'une prestation. Cette extension a été créée, car Device ne correspondait pas à la définition de l'équipement pour le ROR.\n Device représente une instance d'un équipement alors l'équipement pour le ROR correspond juste au nombre d'équipement de même type.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORLocationEquipment",
    "name" : "Spécification métier vers l'extension ROR LocationEquipment"
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
      "definition" : "Extension créée dans le cadre du ROR pour décrire une ressource matérielle discriminante pour la réalisation d'une prestation. Cette extension a été créée, car Device ne correspondait pas à la définition de l'équipement pour le ROR.\n Device représente une instance d'un équipement alors l'équipement pour le ROR correspond juste au nombre d'équipement de même type.",
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationEquipment",
        "map" : "EquipementSpecifique"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:equipmentType",
      "path" : "Extension.extension",
      "sliceName" : "equipmentType",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:equipmentType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:equipmentType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "equipmentType"
    },
    {
      "id" : "Extension.extension:equipmentType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J18-EquipementSpecifique-ROR/FHIR/JDV-J18-EquipementSpecifique-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationEquipment",
        "map" : "typeEquipement"
      }]
    },
    {
      "id" : "Extension.extension:nbInService",
      "path" : "Extension.extension",
      "sliceName" : "nbInService",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:nbInService.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:nbInService.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "nbInService"
    },
    {
      "id" : "Extension.extension:nbInService.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationEquipment",
        "map" : "nbEquipementEnService"
      }]
    },
    {
      "id" : "Extension.extension:ror-location-equipment-limit",
      "path" : "Extension.extension",
      "sliceName" : "ror-location-equipment-limit",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit"]
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
