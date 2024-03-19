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
* extension[priceType].valueCodeableConcept -> "typeTarif" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[priceUnit].valueCodeableConcept -> "unitePrix" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[amount].valueMoney -> "montantTarif" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[startDate].valueDateTime -> "dateDebutValiditeTarif" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[under60].valueBoolean -> "ForfaitSocleHebergement.tarifMoins60Ans" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[deliveryIncluded].valueCodeableConcept -> "ForfaitSocleHebergement.prestationsNonObligatoiresIncluses" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[othersDeliveryIncluded].valueString -> "ForfaitSocleHebergement.autresPrestationsNonObligatoiresIncluses" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[residentialType].valueCodeableConcept -> "ForfaitSocleHebergement.typeHabitation + SupplementTarifHebergement.typeHabitation" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[specialPrice].valueCodeableConcept -> "TarifAccueilDeJour+TarifAidesHumaines.conditionTarifaire + ForfaitSocleHebergement.conditionTarifaire + TarifPortageRepas.conditionTarifaire" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[welcomeType].valueCodeableConcept -> "ForfaitSocleHebergement.temporaliteAccueil + TarifDependance.temporaliteAccueil" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[mealDeliveryName].valueString -> "TarifPortageRepas.nomTarifPortageRepas" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[dependencyLevel].valueCodeableConcept -> "TarifDependance.groupeTarifaireDependance" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[humanHelpPriceName].valueString -> "TarifAidesHumaines.nomTarifAidesHumaines" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[managementType].valueCodeableConcept -> "TarifAidesHumaines.modeGestion" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[otherAdditionalServiceName].valueString -> "TarifPrestationSupplementaire.nomAutrePrestationSupp" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[additionalServiceName].valueCodeableConcept -> "TarifPrestationSupplementaire.nomPrestationSupp" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
