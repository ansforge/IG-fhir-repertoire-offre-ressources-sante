Extension: RORContactTelecomConfidentialityLevel
Id: ror-contact-telecom-confidentiality-level
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "Organization.contact.telecom"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J222-NiveauConfidentialite-ROR (required)