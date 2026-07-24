# RORLocationSupportedCapacity - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR qui indique une série d’enregistrements indiquant la quantité de lit (ou de place) de l'entité pour un statut et une temporalité donnés.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [RORLocation](StructureDefinition-ror-location.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.ror|current/StructureDefinition/StructureDefinition-ror-location-supported-capacity.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ror-location-supported-capacity.csv), [Excel](../StructureDefinition-ror-location-supported-capacity.xlsx), [Schematron](../StructureDefinition-ror-location-supported-capacity.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-location-supported-capacity",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity",
  "version" : "0.7.0",
  "name" : "RORLocationSupportedCapacity",
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
  "description" : "Extension créée dans le cadre du ROR qui indique une série d’enregistrements indiquant la quantité de lit (ou de place) de l'entité pour un statut et une temporalité donnés.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORLocationSupportedCapacity",
    "name" : "Spécification métier vers l'extension ROR LocationSupportedCapacity"
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
      "definition" : "Extension créée dans le cadre du ROR qui indique une série d’enregistrements indiquant la quantité de lit (ou de place) de l'entité pour un statut et une temporalité donnés.",
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationSupportedCapacity",
        "map" : "CapacitePriseCharge + CapaciteAccueilOperationnelle"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 7
    },
    {
      "id" : "Extension.extension:capacityType",
      "path" : "Extension.extension",
      "sliceName" : "capacityType",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:capacityType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:capacityType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "capacityType"
    },
    {
      "id" : "Extension.extension:capacityType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J187-NatureCapacite-ROR/FHIR/JDV-J187-NatureCapacite-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationSupportedCapacity",
        "map" : "CapaciteAccueilOperationnelle.natureCapacite"
      }]
    },
    {
      "id" : "Extension.extension:capacityStatus",
      "path" : "Extension.extension",
      "sliceName" : "capacityStatus",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:capacityStatus.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:capacityStatus.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "capacityStatus"
    },
    {
      "id" : "Extension.extension:capacityStatus.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J188-TypeStatutCapacite-ROR/FHIR/JDV-J188-TypeStatutCapacite-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationSupportedCapacity",
        "map" : "CapaciteAccueilOperationnelle.statutCapacite"
      }]
    },
    {
      "id" : "Extension.extension:temporalityCapacity",
      "path" : "Extension.extension",
      "sliceName" : "temporalityCapacity",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:temporalityCapacity.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:temporalityCapacity.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "temporalityCapacity"
    },
    {
      "id" : "Extension.extension:temporalityCapacity.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J189-TemporaliteCapacite-ROR/FHIR/JDV-J189-TemporaliteCapacite-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationSupportedCapacity",
        "map" : "CapaciteAccueilOperationnelle.temporaliteCapacite"
      }]
    },
    {
      "id" : "Extension.extension:nbCapacity",
      "path" : "Extension.extension",
      "sliceName" : "nbCapacity",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:nbCapacity.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:nbCapacity.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "nbCapacity"
    },
    {
      "id" : "Extension.extension:nbCapacity.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationSupportedCapacity",
        "map" : "CapaciteAccueilOperationnelle.nombreCapacite"
      }]
    },
    {
      "id" : "Extension.extension:capacitySourceType",
      "path" : "Extension.extension",
      "sliceName" : "capacitySourceType",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:capacitySourceType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:capacitySourceType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "capacitySourceType"
    },
    {
      "id" : "Extension.extension:capacitySourceType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J193-TypeSourceCapacite-ROR/FHIR/JDV-J193-TypeSourceCapacite-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationSupportedCapacity",
        "map" : "CapaciteAccueilOperationnelle.typeSourceCapacite"
      }]
    },
    {
      "id" : "Extension.extension:genderCapacityAvailable",
      "path" : "Extension.extension",
      "sliceName" : "genderCapacityAvailable",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:genderCapacityAvailable.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:genderCapacityAvailable.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "genderCapacityAvailable"
    },
    {
      "id" : "Extension.extension:genderCapacityAvailable.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J190-GenreCapacite-ROR/FHIR/JDV-J190-GenreCapacite-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationSupportedCapacity",
        "map" : "CapaciteAccueilOperationnelle.genreCapaciteDispo"
      }]
    },
    {
      "id" : "Extension.extension:capacityUpdateDate",
      "path" : "Extension.extension",
      "sliceName" : "capacityUpdateDate",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:capacityUpdateDate.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:capacityUpdateDate.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "capacityUpdateDate"
    },
    {
      "id" : "Extension.extension:capacityUpdateDate.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationSupportedCapacity",
        "map" : "CapaciteAccueilOperationnelle.dateMAJCapacite"
      }]
    },
    {
      "id" : "Extension.extension:capacityClosingType",
      "path" : "Extension.extension",
      "sliceName" : "capacityClosingType",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:capacityClosingType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:capacityClosingType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "capacityClosingType"
    },
    {
      "id" : "Extension.extension:capacityClosingType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J191-TypeFermetureCapacite-ROR/FHIR/JDV-J191-TypeFermetureCapacite-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationSupportedCapacity",
        "map" : "CapaciteAccueilOperationnelle.typeFermetureCapacite"
      }]
    },
    {
      "id" : "Extension.extension:additionalBedType",
      "path" : "Extension.extension",
      "sliceName" : "additionalBedType",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:additionalBedType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:additionalBedType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "additionalBedType"
    },
    {
      "id" : "Extension.extension:additionalBedType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J192-TypeLitSupplementaire-ROR/FHIR/JDV-J192-TypeLitSupplementaire-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationSupportedCapacity",
        "map" : "CapaciteAccueilOperationnelle.typeLitsSupplementaire"
      }]
    },
    {
      "id" : "Extension.extension:crisisType",
      "path" : "Extension.extension",
      "sliceName" : "crisisType",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:crisisType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:crisisType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "crisisType"
    },
    {
      "id" : "Extension.extension:crisisType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J194-TypeCrise-ROR/FHIR/JDV-J194-TypeCrise-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationSupportedCapacity",
        "map" : "CapaciteAccueilOperationnelle.typeCrise"
      }]
    },
    {
      "id" : "Extension.extension:temporaryAssignement",
      "path" : "Extension.extension",
      "sliceName" : "temporaryAssignement",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:temporaryAssignement.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:temporaryAssignement.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "temporaryAssignement"
    },
    {
      "id" : "Extension.extension:temporaryAssignement.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J195-AffectationTemporaire-ROR/FHIR/JDV-J195-AffectationTemporaire-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationSupportedCapacity",
        "map" : "CapacitePriseCharge.affectationTemporaire"
      }]
    },
    {
      "id" : "Extension.extension:comment",
      "path" : "Extension.extension",
      "sliceName" : "comment",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:comment.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:comment.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "comment"
    },
    {
      "id" : "Extension.extension:comment.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORLocationSupportedCapacity",
        "map" : "Commentaire"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
