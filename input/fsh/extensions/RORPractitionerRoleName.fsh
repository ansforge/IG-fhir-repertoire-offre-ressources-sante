Extension: RORPractitionerRoleName
Id: ror-practitionerrole-name
Description: "Extension créée dans le cadre du ROR pour définir l'identité d’exercice d’un professionnel"
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    exerciseTitle 0..1 and
    exerciseLastName 1..1 and
    exerciseFirstName 0..1
* extension[exerciseLastName].value[x] only string
* extension[exerciseFirstName].value[x] only string
* extension[exerciseTitle].valueCodeableConcept from $JDV-J208-CiviliteExercice-ROR (required)


Mapping:  ConceptMetier_RORPractitionerRoleName
Source:   RORPractitionerRoleName
Id:       specmetier-to-RORPractitionerRoleName
Title:    "Spécification métier vers l'extension ROR RORPractitionerRoleName"
* extension[exerciseLastName].valueString -> "nomExercice"
* extension[exerciseFirstName].valueString -> "prenomExercice"
* extension[exerciseTitle].valueCodeableConcept -> "civiliteExercice"
