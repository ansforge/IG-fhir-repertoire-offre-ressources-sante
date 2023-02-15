Extension: RORContactFonctionContact
Id: ror-contact-fonction-contact
Description: "Extension créée dans le cadre du ROR qui indique un titre, une position ou une fonction de la personne assurant le contact au sein de l'organisation (directeur, secrétaire, etc.)."
* ^context.type = #element
* ^context.expression = "Organization.contact"
* value[x] only CodeableConcept
* value[x] from $JDV-J220-FonctionContact-ROR (required)