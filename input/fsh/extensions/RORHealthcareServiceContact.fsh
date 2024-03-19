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
* -> "contact" "Profil 1,
Profil 2 si niveau de confidentialité du contact = public ou restreint (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité  du contact = public (sauf si uniteSensible = Oui) 
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact = public ou restreint (sauf si uniteSensible = Oui)
Profil 0 si niveau de confidentialité  du contact= public (sauf si uniteSensible = Oui)"
* extension[name].valueHumanName -> "nom" "Profil 1,
Profil 2 si niveau de confidentialité du contact = public ou restreint (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité  du contact = public (sauf si uniteSensible = Oui) 
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact = public ou restreint (sauf si uniteSensible = Oui)
Profil 0 si niveau de confidentialité  du contact= public (sauf si uniteSensible = Oui)"
* extension[purposeContact].valueCodeableConcept -> "natureContact" "Profil 1,
Profil 2 si niveau de confidentialité du contact = public ou restreint (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité  du contact = public (sauf si uniteSensible = Oui) 
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact = public ou restreint (sauf si uniteSensible = Oui)
Profil 0 si niveau de confidentialité  du contact= public (sauf si uniteSensible = Oui)"
* extension[description].valueString -> "description" "Profil 1,
Profil 2 si niveau de confidentialité du contact = public ou restreint (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité  du contact = public (sauf si uniteSensible = Oui) 
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact = public ou restreint (sauf si uniteSensible = Oui)
Profil 0 si niveau de confidentialité  du contact= public (sauf si uniteSensible = Oui)"