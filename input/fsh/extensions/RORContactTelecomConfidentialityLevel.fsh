Extension: RORContactTelecomConfidentialityLevel
Id: ror-contact-telecom-confidentiality-level
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^date = "2022-07-01"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Organization.contact.telecom"
* value[x] only CodeableConcept
* value[x] from $JDV-J222-NiveauConfidentialite-ROR (required)
* value[x] ^binding.description = "Binding JDV-J222-NiveauConfidentialite-ROR"