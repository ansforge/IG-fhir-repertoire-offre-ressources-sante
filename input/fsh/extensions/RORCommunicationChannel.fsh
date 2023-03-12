Extension: RORCommunicationChannel
Id: ror-communication-channel
Description: "Extension créée dans le cadre du ROR spécifiant le canal ou la manière dont s'établit la communication "
* ^context.type = #element
* ^context.expression = "ContactPoint"
* url = "https://interop.esante.gouv.fr/fhir/ig/ror/StructureDefinition/ror-communication-channel" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $JDV-225-CanalCommunication-ROR (required)