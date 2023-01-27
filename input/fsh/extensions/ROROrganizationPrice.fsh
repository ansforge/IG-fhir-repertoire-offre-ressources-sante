Extension: ROROrganizationPrice
Id: ror-organization-price
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^date = "2022-06-29"
* ^publisher = "ANS"
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
    under60 1..1 and
    deliveryIncluded 0..* and
    othersDeliveryIncluded 0..* and
    residentialType 1..1 and
    specialPrice 0..1 and
    welcomeType 1..1 and
    mealDeliveryName 0..1 and
    dependencyLevel 1..1 and
    humanHelpPriceName 0..1 and
    managementType 1..1 and
    surchargePriceName 1..1
* extension[priceType].value[x] only CodeableConcept
* extension[priceType].value[x] from $JDV-J36-TypeTarif-ROR (required)
* extension[priceUnit].value[x] only CodeableConcept
* extension[priceUnit].value[x] from $JDV-J205-UnitePrix-ROR (required)
* extension[amount].value[x] only Money
* extension[startDate].value[x] only dateTime
* extension[under60].value[x] only boolean
* extension[deliveryIncluded] ^min = 0
* extension[deliveryIncluded].value[x] only CodeableConcept
* extension[deliveryIncluded].value[x] from $JDV-J206-PrestationNonObligatoireIncluse-ROR (required)
* extension[othersDeliveryIncluded] ^min = 0
* extension[othersDeliveryIncluded].value[x] only string
* extension[residentialType].value[x] only CodeableConcept
* extension[residentialType].value[x] from $JDV-J32-TypeHabitation-ROR (required)
* extension[specialPrice].value[x] only CodeableConcept
* extension[specialPrice].value[x] from $JDV-J39-ConditionTarifaire-ROR (required)
* extension[welcomeType].value[x] only CodeableConcept
* extension[welcomeType].value[x] from $JDV-J30-TemporaliteAccueil-ROR (required)
* extension[mealDeliveryName].value[x] only string
* extension[dependencyLevel].value[x] only CodeableConcept
* extension[dependencyLevel].value[x] from $JDV-J27-GroupeTarifaireDependance-ROR (required)
* extension[humanHelpPriceName].value[x] only string
* extension[managementType].value[x] only CodeableConcept
* extension[managementType].value[x] from $JDV-J26-ModeGestion-ROR (required)
* extension[surchargePriceName].extension ^slicing.discriminator.type = #value
* extension[surchargePriceName].extension ^slicing.discriminator.path = "url"
* extension[surchargePriceName].extension ^slicing.rules = #open
* extension[surchargePriceName].extension contains
    string 1..1 and
    codeableConcept 0..1
* extension[surchargePriceName].extension[string].value[x] only string
* extension[surchargePriceName].extension[codeableConcept].value[x] only CodeableConcept
* extension[surchargePriceName].extension[codeableConcept].value[x] from $JDV-J206-PrestationNonObligatoireIncluse-ROR (required)
* url = "http://esante.gouv.fr/ci-sis/fhir/ImplementationGuide/ROR/StructureDefinition/ror-organization-price" (exactly)