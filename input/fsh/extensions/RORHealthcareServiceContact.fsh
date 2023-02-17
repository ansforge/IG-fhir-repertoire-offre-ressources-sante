Extension: RORHealthcareServiceContact
Id: ror-healthcareservice-contact
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #Extension
* ^context.expression = "healthcareservice"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    nom 0..1 and
    RORContactFonctionContact named FonctionContact 0..1 and
    natureContact 0..1 and
    description 0..1 and
    RORConfidentialityLevel named ConfidentialityLevel 1..1
* extension[nom].value[x] only string
* extension[description].value[x] only string
* extension[natureContact].value[x] only CodeableConcept
* extension[natureContact].value[x] from $JDV-J221-NatureContact-ROR (required)
