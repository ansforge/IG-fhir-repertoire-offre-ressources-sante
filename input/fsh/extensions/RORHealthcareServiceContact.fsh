Extension: RORHealthcareServiceContact
Id: ror-healthcareservice-contact
Description: "Extension créée dans le cadre du ROR pour décrire la personne ou le service qui agit comme point de contact de l'offre."
* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    name 0..1 and
    RORContactFunctionContact named ror-function-contact 0..1 and
    purposeContact 0..1 and
    description 0..1 and
    RORConfidentialityLevel named ror-confidentiality-level 1..1 and
    RORHealthcareServiceContactTelecom named ror-healthcareservice-contact-telecom 0..*
* extension[name].value[x] only HumanName
* extension[description].value[x] only string
* extension[purposeContact].value[x] only CodeableConcept
* extension[purposeContact].valueCodeableConcept from $JDV-J221-NatureContact-ROR (required)

Mapping:  ConceptMetier_RORHealthcareServiceContact
Source:   RORHealthcareServiceContact
Id:       specmetier-to-RORHealthcareServiceContact
Title:    "Spécification métier vers l'extension ROR HealthcareServiceContact"
* -> "Contact"
* extension[name] -> "nom"
* extension[RORContactFunctionContact] -> "fonctionContact"
* extension[purposeContact] -> "natureContact"
* extension[description] -> "description"
* extension[RORConfidentialityLevel] -> "niveauConfidentialite"
* extension[RORHealthcareServiceContactTelecom] -> "telecom"

