Extension: RORSupportedCapacity
Id: ror-supported-capacity
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "Location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    capacityType 1..1 and
    capacityStatus 1..1 and
    temporalityCapacity 1..1 and
    nbCapacity 1..1 and
    capacitySourceType 1..1 and
    genderCapacityAvailable 0..1 and
    capacityUpdateDate 1..1 and
    capacityClosingType 0..1 and
    additionalBedType 0..1 and
    crisisType 1..1 and
    temporaryAssignement 1..1
* extension[capacityType].value[x] only code
* extension[capacityType].value[x] from $JDV-J187-NatureCapacite-ROR (required)
* extension[capacityStatus].value[x] only code
* extension[capacityStatus].value[x] from $JDV-J188-TypeStatutCapacite-ROR (required)
* extension[temporalityCapacity].value[x] only code
* extension[temporalityCapacity].value[x] from $JDV-J189-TemporaliteCapacite-ROR (required)
* extension[nbCapacity].value[x] only integer
* extension[capacitySourceType].value[x] only code
* extension[capacitySourceType].value[x] from $TRE-R335-TypeSourceCapacite (required)
* extension[genderCapacityAvailable].value[x] only code
* extension[genderCapacityAvailable].value[x] from $TRE-R332-GenreCapacite (required)
* extension[capacityUpdateDate].value[x] only dateTime
* extension[capacityClosingType].value[x] only code
* extension[capacityClosingType].value[x] from $TRE-R333-TypeFermetureCapacite (required)
* extension[additionalBedType].value[x] only code
* extension[additionalBedType].value[x] from $TRE-R334-TypeLitSupplementaire (required)
* extension[crisisType].value[x] only code
* extension[crisisType].value[x] from $TRE-R336-TypeCrise (required)
* extension[temporaryAssignement].value[x] only CodeableConcept
* extension[temporaryAssignement].value[x] from $TRE-R337-AffectationTemporaire (required)