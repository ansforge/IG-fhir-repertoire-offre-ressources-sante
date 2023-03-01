Extension: RORTerritorialDivision 
Id: ror-territorial-division
Description: "Extension créée dans le cadre du ROR qui correspond au périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite. 
Cela inclut notamment les divisions territoriales dans lesquelles les professionnels se déplacent."
* ^context.type = #element
* ^context.expression = "HealthcareService"
* ^context.type = #element
* ^context.expression = "Organization"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    typeTerritorialDivision 1..1 and
    codeTerritorialDivision 1..1
* extension[typeTerritorialDivision].value[x] 1..1
* extension[typeTerritorialDivision].value[x] only CodeableConcept
* extension[typeTerritorialDivision].valueCodeableConcept from $JDV-J223-TypeDivisionTerritoriale-ROR (required)
* extension[codeTerritorialDivision].value[x] 1..1
* extension[codeTerritorialDivision].value[x] only CodeableConcept // Possible de limiter les valeurs à 2 ou plus JDV ?