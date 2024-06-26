Extension: RORLocationResidentialCapacity
Id: ror-location-residential-capacity
Description: "Extension créée dans le cadre du ROR qui décrit un type d'habitation adapté à la réalisation d'une offre."
* ^context.type = #element
* ^context.expression = "Location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    residentialType 1..1 and
    residentialNumber 0..1
* extension[residentialType].value[x] only CodeableConcept
* extension[residentialType].valueCodeableConcept from $JDV-J32-TypeHabitation-ROR (required)
* extension[residentialNumber].value[x] only integer


Mapping:  ConceptMetier_RORResidentialLocationCapacity
Source:   RORLocationResidentialCapacity
Id:       specmetier-to-RORResidentialLocationCapacity
Title:    "Spécification métier vers l'extension ROR LocationResidentialCapacity"
* -> "CapaciteHabitation" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* extension[residentialType].valueCodeableConcept -> "typeHabitation" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* extension[residentialNumber].valueInteger -> "nbHabitation" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
