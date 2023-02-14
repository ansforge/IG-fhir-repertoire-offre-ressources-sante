Extension: RORCommunicationChannel
Id: ror-communication-channel
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "ContactPoint"
* url = "http://esante.gouv.fr/ci-sis/fhir/ImplementationGuide/ROR/StructureDefinition/ror-communication-channel" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $JDV-225-CanalCommunication-ROR (required)