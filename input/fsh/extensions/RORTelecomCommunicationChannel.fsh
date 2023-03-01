Extension: RORTelecomCommunicationChannel
Id: ror-telecom-communication-channel
Description: "Extension créée dans le cadre du ROR spécifiant le canal ou la manière dont s'établit la communication "
* ^context.type = #element
* ^context.expression = "ContactPoint"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-225-CanalCommunication-ROR (required)