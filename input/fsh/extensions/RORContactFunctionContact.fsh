Extension: RORContactFunctionContact
Id: ror-contact-function-contact
Description: "Extension créée dans le cadre du ROR qui indique un titre, une position ou une fonction de la personne assurant le contact au sein de l'organisation (directeur, secrétaire, etc.)."
* ^context.type = #element
* ^context.expression = "Organization.contact"
* ^context.type = #extension
* ^context.expression = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact"

* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J220-FonctionContact-ROR (required)