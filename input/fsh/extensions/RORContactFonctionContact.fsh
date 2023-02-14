Extension: RORContactFonctionContact
Id: ror-contact-fonction-contact
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "Organization.contact"
* value[x] only CodeableConcept
* value[x] from $JDV-J220-FonctionContact-ROR (required)