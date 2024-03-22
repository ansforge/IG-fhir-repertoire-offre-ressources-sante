Extension: RORLocationSupportedCapacity
Id: ror-location-supported-capacity
Description: "Extension créée dans le cadre du ROR qui indique une série d’enregistrements indiquant la quantité de lit (ou de place) de l'entité pour un statut et une temporalité donnés."
* ^context.type = #element
* ^context.expression = "Location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    capacityType 1..1 and
    capacityStatus 1..1 and
    temporalityCapacity 1..1 and
    nbCapacity 1..1 and
    capacitySourceType 1..1 and
    genderCapacityAvailable 0..1 and
    capacityUpdateDate 1..1 and
    capacityClosingType 0..1 and
    additionalBedType 0..1 and
    crisisType 0..1 and
    temporaryAssignement 1..1
* extension[capacityType].value[x] only CodeableConcept
* extension[capacityType].valueCodeableConcept from $JDV-J187-NatureCapacite-ROR (required)
* extension[capacityStatus].value[x] only CodeableConcept
* extension[capacityStatus].valueCodeableConcept from $JDV-J188-TypeStatutCapacite-ROR (required)
* extension[temporalityCapacity].value[x] only CodeableConcept
* extension[temporalityCapacity].valueCodeableConcept from $JDV-J189-TemporaliteCapacite-ROR (required)
* extension[nbCapacity].value[x] only integer
* extension[capacitySourceType].value[x] only CodeableConcept
* extension[capacitySourceType].valueCodeableConcept from $JDV-J193-TypeSourceCapacite-ROR (required)
* extension[genderCapacityAvailable].value[x] only CodeableConcept
* extension[genderCapacityAvailable].valueCodeableConcept from $JDV-J190-GenreCapacite-ROR (required)
* extension[capacityUpdateDate].value[x] only dateTime
* extension[capacityClosingType].value[x] only CodeableConcept
* extension[capacityClosingType].valueCodeableConcept from $JDV-J191-TypeFermetureCapacite-ROR (required)
* extension[additionalBedType].value[x] only CodeableConcept
* extension[additionalBedType].valueCodeableConcept from $JDV-J192-TypeLitSupplementaire-ROR (required)
* extension[crisisType].value[x] only CodeableConcept
* extension[crisisType].valueCodeableConcept from $JDV-J194-TypeCrise-ROR (required)
* extension[temporaryAssignement].value[x] only CodeableConcept
* extension[temporaryAssignement].valueCodeableConcept from $JDV-J195-AffectationTemporaire-ROR (required)


Mapping:  ConceptMetier_RORLocationSupportedCapacity
Source:   RORLocationSupportedCapacity
Id:       specmetier-to-RORLocationSupportedCapacity
Title:    "Spécification métier vers l'extension ROR LocationSupportedCapacity"
* -> "CapacitePriseCharge + CapaciteAccueilOperationnelle"
* extension[capacityType].valueCodeableConcept -> "CapaciteAccueilOperationnelle.natureCapacite" "Profil 1,
Profil 2, si statut capacité <> Exceptionnel (et sauf si uniteSensible = Oui),
Profil 3, si statut capacité <> Exceptionnel et si champ d'activité = MS (et sauf si uniteSensible = Oui),
Profil 0, si statut capacité = installé (et sauf si uniteSensible = Oui)"
* extension[capacityStatus].valueCodeableConcept -> "CapaciteAccueilOperationnelle.statutCapacite" "Profil 1,
Profil 2, si statut capacité <> Exceptionnel (et sauf si uniteSensible = Oui),
Profil 3, si statut capacité <> Exceptionnel et si champ d'activité = MS (et sauf si uniteSensible = Oui),
Profil 0, si statut capacité = installé (et sauf si uniteSensible = Oui)"
* extension[temporalityCapacity].valueCodeableConcept -> "CapaciteAccueilOperationnelle.temporaliteCapacite" "Profil 1,
Profil 2, si statut capacité <> Exceptionnel (et sauf si uniteSensible = Oui),
Profil 3, si statut capacité <> Exceptionnel et si champ d'activité = MS (et sauf si uniteSensible = Oui),
Profil 0, si statut capacité = installé (et sauf si uniteSensible = Oui)"
* extension[nbCapacity].valueInteger -> "CapaciteAccueilOperationnelle.nombreCapacite" "Profil 1,
Profil 2, si statut capacité <> Exceptionnel (et sauf si uniteSensible = Oui),
Profil 3, si statut capacité <> Exceptionnel et si champ d'activité = MS (et sauf si uniteSensible = Oui),
Profil 0, si statut capacité = installé (et sauf si uniteSensible = Oui)"
* extension[capacitySourceType].valueCodeableConcept -> "CapaciteAccueilOperationnelle.typeSourceCapacite" "Profil 1,
Profil 2, si statut capacité <> Exceptionnel (et sauf si uniteSensible = Oui),
Profil 3, si statut capacité <> Exceptionnel et si champ d'activité = MS (et sauf si uniteSensible = Oui)"
* extension[genderCapacityAvailable].valueCodeableConcept -> "CapaciteAccueilOperationnelle.genreCapaciteDispo" "Profil 1,
Profil 2, si statut capacité <> Exceptionnel (et sauf si uniteSensible = Oui),
Profil 3, si statut capacité <> Exceptionnel et si champ d'activité = MS (et sauf si uniteSensible = Oui)"
* extension[capacityUpdateDate].valueDateTime -> "CapaciteAccueilOperationnelle.dateMAJCapacite" "Profil 1,
Profil 2, si statut capacité <> Exceptionnel (et sauf si uniteSensible = Oui),
Profil 3, si statut capacité <> Exceptionnel et si champ d'activité = MS (et sauf si uniteSensible = Oui),
Profil 0, si statut capacité = installé (et sauf si uniteSensible = Oui)"
* extension[capacityClosingType].valueCodeableConcept -> "CapaciteAccueilOperationnelle.typeFermetureCapacite" "Profil 1,
Profil 2, si statut capacité <> Exceptionnel (et sauf si uniteSensible = Oui),
Profil 3, si statut capacité <> Exceptionnel et si champ d'activité = MS (et sauf si uniteSensible = Oui),
Profil 0, si statut capacité = installé (et sauf si uniteSensible = Oui)"
* extension[additionalBedType].valueCodeableConcept -> "CapaciteAccueilOperationnelle.typeLitsSupplementaire" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS (sauf si uniteSensible = Oui)"
* extension[crisisType].valueCodeableConcept -> "CapaciteAccueilOperationnelle.typeCrise" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS (sauf si uniteSensible = Oui)"
* extension[temporaryAssignement].valueCodeableConcept -> "CapacitePriseCharge.affectationTemporaire" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0, si affectation temporaire = aucune (sauf si uniteSensible = Oui)"