# ROROrganizationPrice - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ROROrganizationPrice**

## Extension: ROROrganizationPrice 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price | *Version*:0.7.0 |
| Draft as of 2026-07-23 | *Computable Name*:ROROrganizationPrice |

Extension créée dans le cadre du ROR pour permettre de définir les tarifs des prestations et services d’une entité géographique.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Organization

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [ROROrganization](StructureDefinition-ror-organization.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-organization-price)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-organization-price.csv), [Excel](StructureDefinition-ror-organization-price.xlsx), [Schematron](StructureDefinition-ror-organization-price.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-organization-price",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price",
  "version" : "0.7.0",
  "name" : "ROROrganizationPrice",
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
  "description" : "Extension créée dans le cadre du ROR pour permettre de définir les tarifs des prestations et services d'une entité géographique.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-ROROrganizationPrice",
    "name" : "Spécification métier vers l'extension ROR OrganizationPrice"
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
    "expression" : "Organization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR pour permettre de définir les tarifs des prestations et services d'une entité géographique.",
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "Tarif"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 3
    },
    {
      "id" : "Extension.extension:priceType",
      "path" : "Extension.extension",
      "sliceName" : "priceType",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:priceType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:priceType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "priceType"
    },
    {
      "id" : "Extension.extension:priceType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J36-TypeTarif-ROR/FHIR/JDV-J36-TypeTarif-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "typeTarif"
      }]
    },
    {
      "id" : "Extension.extension:priceUnit",
      "path" : "Extension.extension",
      "sliceName" : "priceUnit",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:priceUnit.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:priceUnit.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "priceUnit"
    },
    {
      "id" : "Extension.extension:priceUnit.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J205-UnitePrix-ROR/FHIR/JDV-J205-UnitePrix-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "unitePrix"
      }]
    },
    {
      "id" : "Extension.extension:amount",
      "path" : "Extension.extension",
      "sliceName" : "amount",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:amount.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:amount.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "amount"
    },
    {
      "id" : "Extension.extension:amount.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Money"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "montantTarif"
      }]
    },
    {
      "id" : "Extension.extension:startDate",
      "path" : "Extension.extension",
      "sliceName" : "startDate",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:startDate.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:startDate.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "startDate"
    },
    {
      "id" : "Extension.extension:startDate.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "dateDebutValiditeTarif"
      }]
    },
    {
      "id" : "Extension.extension:under60",
      "path" : "Extension.extension",
      "sliceName" : "under60",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:under60.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:under60.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "under60"
    },
    {
      "id" : "Extension.extension:under60.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "ForfaitSocleHebergement.tarifMoins60Ans"
      }]
    },
    {
      "id" : "Extension.extension:deliveryIncluded",
      "path" : "Extension.extension",
      "sliceName" : "deliveryIncluded",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:deliveryIncluded.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:deliveryIncluded.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "deliveryIncluded"
    },
    {
      "id" : "Extension.extension:deliveryIncluded.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J206-PrestationNonObligatoireIncluse-ROR/FHIR/JDV-J206-PrestationNonObligatoireIncluse-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "ForfaitSocleHebergement.prestationsNonObligatoiresIncluses"
      }]
    },
    {
      "id" : "Extension.extension:othersDeliveryIncluded",
      "path" : "Extension.extension",
      "sliceName" : "othersDeliveryIncluded",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:othersDeliveryIncluded.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:othersDeliveryIncluded.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "othersDeliveryIncluded"
    },
    {
      "id" : "Extension.extension:othersDeliveryIncluded.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "ForfaitSocleHebergement.autresPrestationsNonObligatoiresIncluses"
      }]
    },
    {
      "id" : "Extension.extension:residentialType",
      "path" : "Extension.extension",
      "sliceName" : "residentialType",
      "min" : 0,
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
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "ForfaitSocleHebergement.typeHabitation + SupplementTarifHebergement.typeHabitation"
      }]
    },
    {
      "id" : "Extension.extension:specialPrice",
      "path" : "Extension.extension",
      "sliceName" : "specialPrice",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:specialPrice.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:specialPrice.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "specialPrice"
    },
    {
      "id" : "Extension.extension:specialPrice.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J39-ConditionTarifaire-ROR/FHIR/JDV-J39-ConditionTarifaire-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "TarifAccueilDeJour+TarifAidesHumaines.conditionTarifaire + ForfaitSocleHebergement.conditionTarifaire + TarifPortageRepas.conditionTarifaire"
      }]
    },
    {
      "id" : "Extension.extension:welcomeType",
      "path" : "Extension.extension",
      "sliceName" : "welcomeType",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:welcomeType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:welcomeType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "welcomeType"
    },
    {
      "id" : "Extension.extension:welcomeType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J30-TemporaliteAccueil-ROR/FHIR/JDV-J30-TemporaliteAccueil-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "ForfaitSocleHebergement.temporaliteAccueil + TarifDependance.temporaliteAccueil"
      }]
    },
    {
      "id" : "Extension.extension:mealDeliveryName",
      "path" : "Extension.extension",
      "sliceName" : "mealDeliveryName",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:mealDeliveryName.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:mealDeliveryName.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "mealDeliveryName"
    },
    {
      "id" : "Extension.extension:mealDeliveryName.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "TarifPortageRepas.nomTarifPortageRepas"
      }]
    },
    {
      "id" : "Extension.extension:dependencyLevel",
      "path" : "Extension.extension",
      "sliceName" : "dependencyLevel",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:dependencyLevel.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dependencyLevel.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dependencyLevel"
    },
    {
      "id" : "Extension.extension:dependencyLevel.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J27-GroupeTarifaireDependance-ROR/FHIR/JDV-J27-GroupeTarifaireDependance-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "TarifDependance.groupeTarifaireDependance"
      }]
    },
    {
      "id" : "Extension.extension:humanHelpPriceName",
      "path" : "Extension.extension",
      "sliceName" : "humanHelpPriceName",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:humanHelpPriceName.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:humanHelpPriceName.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "humanHelpPriceName"
    },
    {
      "id" : "Extension.extension:humanHelpPriceName.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "TarifAidesHumaines.nomTarifAidesHumaines"
      }]
    },
    {
      "id" : "Extension.extension:managementType",
      "path" : "Extension.extension",
      "sliceName" : "managementType",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:managementType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:managementType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "managementType"
    },
    {
      "id" : "Extension.extension:managementType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J26-ModeGestion-ROR/FHIR/JDV-J26-ModeGestion-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "TarifAidesHumaines.modeGestion"
      }]
    },
    {
      "id" : "Extension.extension:otherAdditionalServiceName",
      "path" : "Extension.extension",
      "sliceName" : "otherAdditionalServiceName",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:otherAdditionalServiceName.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:otherAdditionalServiceName.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "otherAdditionalServiceName"
    },
    {
      "id" : "Extension.extension:otherAdditionalServiceName.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "TarifPrestationSupplementaire.nomAutrePrestationSupp"
      }]
    },
    {
      "id" : "Extension.extension:additionalServiceName",
      "path" : "Extension.extension",
      "sliceName" : "additionalServiceName",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:additionalServiceName.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:additionalServiceName.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "additionalServiceName"
    },
    {
      "id" : "Extension.extension:additionalServiceName.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J206-PrestationNonObligatoireIncluse-ROR/FHIR/JDV-J206-PrestationNonObligatoireIncluse-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationPrice",
        "map" : "TarifPrestationSupplementaire.nomPrestationSupp"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
