Extension: RORCommunicationChannel
Id: ror-communication-channel
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^date = "2022-06-30"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "ContactPoint"
* . ..1
* url = "http://esante.gouv.fr/ci-sis/fhir/ImplementationGuide/ROR/StructureDefinition/ror-communication-channel" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $_1 (required)