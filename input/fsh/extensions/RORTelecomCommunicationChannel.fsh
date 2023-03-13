Extension: RORTelecomCommunicationChannel
Id: ror-telecom-communication-channel
Description: "Extension créée dans le cadre du ROR spécifiant le canal ou la manière dont s'établit la communication "
* ^context.type = #element
* ^context.expression = "ContactPoint"
* ^context.type = #extension
* ^context.expression = "https://interop.esante.gouv.fr/ig/fhir/ror30/StructureDefinition/ror-healthcareservice-contact"
* ^context.type = #extension
* ^context.expression = "https://interop.esante.gouv.fr/ig/fhir/ror30/StructureDefinition/ror-organization-eg-location"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J225-CanalCommunication-ROR (required)