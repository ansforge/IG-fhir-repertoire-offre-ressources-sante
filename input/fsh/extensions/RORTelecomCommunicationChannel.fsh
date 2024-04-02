Extension: RORTelecomCommunicationChannel
Id: ror-telecom-communication-channel
Description: "Extension créée dans le cadre du ROR spécifiant le canal ou la manière dont s'établit la communication"
* ^context[0].type = #element
* ^context[=].expression = "ContactPoint"
* ^context[+].type = #element
* ^context[=].expression = "HealthcareService.extension.extension"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J225-CanalCommunication-ROR (required)

Mapping:  ConceptMetier_RORTelecomCommunicationChannel
Source:   RORTelecomCommunicationChannel
Id:       specmetier-to-RORTelecomCommunicationChannel
Title:    "Spécification métier vers l'extension ROR TelecomCommunicationChannel"
* valueCodeableConcept -> "canal" "RORPractitionerRole : Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui) / RORHealthcareService : Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui) / RORHealthcareServiceContact : Profil 1,
Profil 2 si niveau de confidentialité du contact = public ou restreint (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité  du contact = public (sauf si uniteSensible = Oui) 
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact = public ou restreint (sauf si uniteSensible = Oui)
Profil 0 si niveau de confidentialité  du contact= public (sauf si uniteSensible = Oui) / RORLocation : Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou AMBULATOIRE (sauf si uniteSensible = Oui),
Profil 0  si champ d'activité = AMBULATOIRE (sauf si uniteSensible = Oui) / ROROrganization : Profil 1,
Profil 2 si niveau de confidentialité du telecom = public ou restreint,
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité du telecom = public 
Profil 3 si champ d'activité MS et si niveau de confidentialité du telecom = public ou restreint
Profil 0 si niveau de confidentialité du telecom = public"