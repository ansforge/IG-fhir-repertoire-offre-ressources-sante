Extension: RORHealthcareServicePsychiatricSector
Id: ror-healthcareservice-psychiatric-sector
Description: "Extension créée dans le cadre du ROR qui correspond à une aire géographique à laquelle sont rattachées des structures de relais et de soins qui prennent en charge des patients résidants sur ce secteur."
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only string

Mapping:  ConceptMetier_RORHealthcareServicePsychiatricSector
Source:   RORHealthcareServicePsychiatricSector
Id:       specmetier-to-RORHealthcareServicePsychiatricSector
Title:    "Spécification métier vers l'extension ROR HealthcareServicePsychiatricSector"
* valueString -> "secteurPsychiatrique" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"