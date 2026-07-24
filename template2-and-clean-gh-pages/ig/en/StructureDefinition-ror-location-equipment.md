# RORLocationEquipment - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR pour décrire une ressource matérielle discriminante pour la réalisation d'une prestation. Cette extension a été créée, car Device ne correspondait pas à la définition de l'équipement pour le ROR. Device représente une instance d'un équipement alors l'équipement pour le ROR correspond juste au nombre d'équipement de même type.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [RORLocation](StructureDefinition-ror-location.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.ror|current/StructureDefinition/StructureDefinition-ror-location-equipment.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ror-location-equipment.csv), [Excel](../StructureDefinition-ror-location-equipment.xlsx), [Schematron](../StructureDefinition-ror-location-equipment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-location-equipment",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment",
  "version" : "0.7.0",
  "name" : "RORLocationEquipment",
  "status" : "draft",
  "date" : "2026-07-24T08:16:41+00:00",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
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
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit|0.7.0"]
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
