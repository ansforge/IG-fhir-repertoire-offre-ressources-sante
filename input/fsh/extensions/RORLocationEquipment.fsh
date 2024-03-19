Extension: RORLocationEquipment
Id: ror-location-equipment
Description: "Extension créée dans le cadre du ROR pour décrire une ressource matérielle discriminante pour la réalisation d'une prestation. Cette extension a été créée, car Device ne correspondait pas à la définition de l'équipement pour le ROR.\n Device représente une instance d'un équipement alors l'équipement pour le ROR correspond juste au nombre d'équipement de même type."
* ^context.type = #element
* ^context.expression = "Location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    equipmentType 1..1 and
    nbInService 0..1 and
    RORLocationEquipmentLimit named ror-location-equipment-limit 0..*
* extension[equipmentType].value[x] only CodeableConcept
* extension[equipmentType].valueCodeableConcept from $JDV-J18-EquipementSpecifique-ROR (required)
* extension[nbInService].value[x] only integer


Mapping:  ConceptMetier_RORLocationEquipment
Source:   RORLocationEquipment
Id:       specmetier-to-RORLocationEquipment
Title:    "Spécification métier vers l'extension ROR LocationEquipment"
* -> "EquipementSpecifique" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS (sauf si uniteSensible = Oui)"
* extension[equipmentType].valueCodeableConcept -> "typeEquipement" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS (sauf si uniteSensible = Oui)"
* extension[nbInService].valueInteger -> "nbEquipementEnService" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS (sauf si uniteSensible = Oui)"
