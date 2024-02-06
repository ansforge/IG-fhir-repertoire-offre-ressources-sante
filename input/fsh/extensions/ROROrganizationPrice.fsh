Extension: ROROrganizationPrice
Id: ror-organization-price
Description: "Extension créée dans le cadre du ROR pour permettre de définir les tarifs des prestations et services d'une entité géographique."
* ^context.type = #element
* ^context.expression = "Organization"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    priceType 1..1 and
    priceUnit 1..1 and
    amount 1..1 and
    startDate 0..1 and
    under60 0..1 and
    deliveryIncluded 0..* and
    othersDeliveryIncluded 0..* and
    residentialType 0..1 and
    specialPrice 0..1 and
    welcomeType 0..1 and
    mealDeliveryName 0..1 and
    dependencyLevel 0..1 and
    humanHelpPriceName 0..1 and
    managementType 0..1 and
    otherAdditionalServiceName 0..1 and
    additionalServiceName 0..1
* extension[priceType].value[x] only CodeableConcept
* extension[priceType].valueCodeableConcept from $JDV-J36-TypeTarif-ROR (required)
* extension[priceUnit].value[x] only CodeableConcept
* extension[priceUnit].valueCodeableConcept from $JDV-J205-UnitePrix-ROR (required)
* extension[amount].value[x] only Money
* extension[startDate].value[x] only dateTime
* extension[under60].value[x] only boolean
* extension[deliveryIncluded].value[x] only CodeableConcept
* extension[deliveryIncluded].valueCodeableConcept from $JDV-J206-PrestationNonObligatoireIncluse-ROR (required)
* extension[othersDeliveryIncluded].value[x] only string
* extension[residentialType].value[x] only CodeableConcept
* extension[residentialType].valueCodeableConcept from $JDV-J32-TypeHabitation-ROR (required)
* extension[specialPrice].value[x] only CodeableConcept
* extension[specialPrice].valueCodeableConcept from $JDV-J39-ConditionTarifaire-ROR (required)
* extension[welcomeType].value[x] only CodeableConcept
* extension[welcomeType].valueCodeableConcept from $JDV-J30-TemporaliteAccueil-ROR (required)
* extension[mealDeliveryName].value[x] only string
* extension[dependencyLevel].value[x] only CodeableConcept
* extension[dependencyLevel].valueCodeableConcept from $JDV-J27-GroupeTarifaireDependance-ROR (required)
* extension[humanHelpPriceName].value[x] only string
* extension[managementType].value[x] only CodeableConcept
* extension[managementType].valueCodeableConcept from $JDV-J26-ModeGestion-ROR (required)
* extension[otherAdditionalServiceName].value[x] only string 
* extension[additionalServiceName].value[x] only CodeableConcept
* extension[additionalServiceName].valueCodeableConcept from $JDV-J206-PrestationNonObligatoireIncluse-ROR (required)


Mapping:  ConceptMetier_ROROrganizationPrice
Source:   ROROrganizationPrice
Id:       specmetier-to-ROROrganizationPrice
Title:    "Spécification métier vers l'extension ROR OrganizationPrice"
* -> "Tarif"
* extension[priceType] -> "typeTarif : JDV-J36-TypeTarif-ROR"
* extension[priceUnit] -> "unitePrix : JDV-J205-UnitePrix-ROR"
* extension[amount] -> "montantTarif"
* extension[startDate] -> "dateDebutValiditeTarif"
* extension[under60] -> "ForfaitSocleHebergement.tarifMoins60Ans"
* extension[deliveryIncluded] -> "ForfaitSocleHebergement.prestationsNonObligatoiresIncluses : JDV-J206-PrestationNonObligatoireIncluse-ROR"
* extension[othersDeliveryIncluded] -> "ForfaitSocleHebergement.prestationsNonObligatoiresIncluses"
* extension[residentialType] -> "ForfaitSocleHebergement.typeHabitation + SupplementTarifHebergement.typeHabitation : JDV-J32-TypeHabitation-ROR"
* extension[specialPrice] -> "TarifAccueilDeJour+TarifAidesHumaines.conditionTarifaire + ForfaitSocleHebergement.conditionTarifaire + TarifPortageRepas.conditionTarifaire : JDV-J39-ConditionTarifaire-ROR"
* extension[welcomeType] -> "ForfaitSocleHebergement.temporaliteAccueil + TarifDependance.temporaliteAccueil : JDV-J30-TemporaliteAccueil-ROR"
* extension[mealDeliveryName] -> "TarifPortageRepas.nomTarifPortageRepas"
* extension[dependencyLevel] -> "TarifDependance.groupeTarifaireDependance : JDV-J27-GroupeTarifaireDependance-ROR"
* extension[humanHelpPriceName] -> "TarifAidesHumaines.nomTarifAidesHumaines"
* extension[managementType] -> "TarifAidesHumaines.modeGestion : JDV-J26-ModeGestion-ROR"
* extension[otherAdditionalServiceName] -> "TarifPrestationSupplementaire.nomAutrePrestationSupp"
* extension[additionalServiceName] -> "TarifPrestationSupplementaire.nomPrestationSupp : JDV-J206-PrestationNonObligatoireIncluse-ROR"
