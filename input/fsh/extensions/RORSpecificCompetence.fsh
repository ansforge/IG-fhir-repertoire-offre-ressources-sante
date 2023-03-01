Extension: RORSpecificCompetence
Id: ror-specific-competence
Description: "Extension créée dans le cadre du ROR qui correspond à une capacité ou connaissance reconnue qui permet ou facilite l’accueil d’une personne."
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J33-CompetenceSpecifique-ROR (required)