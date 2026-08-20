# RORLocationEquipmentLimit - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORLocationEquipmentLimit**

## Extension: RORLocationEquipmentLimit 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit | *Version*:0.7.0 |
| Draft as of 2026-08-20 | *Computable Name*:RORLocationEquipmentLimit |

Extension créée dans le cadre du ROR qui précise les limites que peut supporter l’équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation.

**Context of Use**

This extension may be used on the following element(s):

* Extension URL Location.extension

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORLocationEquipment](StructureDefinition-ror-location-equipment.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-location-equipment-limit)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-location-equipment-limit.csv), [Excel](StructureDefinition-ror-location-equipment-limit.xlsx), [Schematron](StructureDefinition-ror-location-equipment-limit.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-location-equipment-limit",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit",
  "version" : "0.7.0",
  "name" : "RORLocationEquipmentLimit",
  "status" : "draft",
  "date" : "2026-08-20T16:34:37+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR qui précise les limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORLocationEquipmentLimit",
    "name" : "Spécification métier vers l'extension ROR LocationEquipmentLimit"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "extension",
    "expression" : "Location.extension"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR qui précise les limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation.",
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationEquipmentLimit",
        "map" : "LimiteCaracteristiqueEquipement"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:equipmentFeature",
      "path" : "Extension.extension",
      "sliceName" : "equipmentFeature",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:equipmentFeature.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:equipmentFeature.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "equipmentFeature"
    },
    {
      "id" : "Extension.extension:equipmentFeature.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J228-TypeCaracteristiqueEquipement-ROR/FHIR/JDV-J228-TypeCaracteristiqueEquipement-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationEquipmentLimit",
        "map" : "typeCaracteristique"
      }]
    },
    {
      "id" : "Extension.extension:limitValue",
      "path" : "Extension.extension",
      "sliceName" : "limitValue",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:limitValue.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:limitValue.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "limitValue"
    },
    {
      "id" : "Extension.extension:limitValue.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationEquipmentLimit",
        "map" : "valeurLimite"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
