Profile: RORPractitionerRole
Parent: PractitionerRole
Id: ror-practitionerrole
Description: "Profil créé dans le cadre du ROR pour décrire les modalités d'exercice opérationnelles du profesionnel dans la réalisation de l'offre"
/* Données techniques */
* id 1..1
* meta.tag 0..1
* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "url"
* meta.tag ^slicing.rules = #open
* meta.tag ^slicing.description = "Slicing pour gérer le code région définissant la région source des données"
* meta.tag ^slicing.ordered = false
* meta.tag contains
    codeRegion 0..1
* meta.tag[codeRegion] from $JDV_J237-RegionOM-ROR (required)
/* Références*/
* practitioner 1..1
* healthcareService 1..1
/* Données fonctionnelles */
* identifier 0..1
* code 1..1
* code from $JDV-J229-ProfessionSante-ROR (required)
// Slice specialty : SavoirFaire + CompetenceSpecifique
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.rules = #open
* specialty contains
    expertiseType 1..1 and
    specialty 0..1 and
    competence 0..1 and
    exclusiveCompetence 0..1 and
    specificOrientation 0..1 and
    expertiseCapacity 0..1 and
    qualificationPAC 0..1 and
    nonQualifyingDESC 0..1 and
    supplementaryExerciseRight 0..1 and
    specificCompetence 0..*
* specialty[expertiseType] from $JDV-J209-TypeSavoirFaire-ROR (required)
* specialty[specialty] from $JDV-J210-SpecialiteOrdinale-ROR (required)
* specialty[competence] from $JDV-J232-Competence-ROR (required)
* specialty[exclusiveCompetence] from $JDV-J211-CompetenceExclusive-ROR (required)
* specialty[specificOrientation] from $JDV-J212-OrientationParticuliere-ROR (required)
* specialty[expertiseCapacity] from $JDV-J213-CapaciteSavoirFaire-ROR (required)
* specialty[qualificationPAC] from $JDV-J214-QualificationPAC-ROR (required)
* specialty[nonQualifyingDESC] from $JDV-J215-DESCnonQualifiant-ROR (required)
* specialty[supplementaryExerciseRight] from $JDV-J216-DroitExerciceCompl-ROR (required)
* specialty[specificCompetence] from $JDV-J33-CompetenceSpecifique-ROR (required)
// PrecisionHoraire
* availableTime 0..1
* availableTime.extension ^slicing.discriminator.type = #value
* availableTime.extension ^slicing.discriminator.path = "url"
* availableTime.extension ^slicing.rules = #open
* availableTime.extension contains
    RORAvailableTimeEffectiveOpeningClosingDate named ror-available-time-effective-opening-closing-date 0..1 and
    RORAvailableTimeTypeOfTime named ror-available-time-type-of-time 0..1 and
    RORAvailableTimeNumberDaysofWeek named ror-available-time-number-days-of-week 0..1
* availableTime.extension[ror-available-time-effective-opening-closing-date] ^isModifier = false
* availableTime.extension[ror-available-time-type-of-time] ^isModifier = false
* availableTime.extension[ror-available-time-number-days-of-week] ^isModifier = false
// Telecomunnication
* telecom 0..1
* telecom.value 1..1
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains 
    RORTelecomUsage named ror-telecom-usage 0..1 and
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1 and
    RORTelecomCommunicationChannel named ror-telecom-communication-channel 1..1
* telecom.extension[ror-telecom-usage] ^isModifier = false
* telecom.extension[ror-telecom-confidentiality-level] ^isModifier = false
* telecom.extension[ror-telecom-communication-channel] ^isModifier = false
// Extension
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $practitionerRole-name named name 0..1 and //TODO
    $practitionerRole-contracted named contracted 0..1 and //TODO
    $practitionerRole-vitaleAccepted named vitalAccepted 0..1 and //TODO
    $practitionerRole-hasCAS named optionCAS 0..1 and //TODO
    RORPractitionerRoleUnitExerciseMode named ror-practitionerrole-unit-exercise-mode 1..1
* extension[name] ^isModifier = false
* extension[name].valueHumanName.family 1..1
* extension[contracted] ^isModifier = false
* extension[contracted].value[x] from $JDV-J218-CNAMAmeliSecteurConventionnement-ROR (required)
* extension[contracted].value[x] ^binding.description = "JDV_J218-CNAMAmeliSecteurConventionnement-RASS dérivé de la TRE_ R282-CNAMAmeliSecteurConventionnement"
* extension[contracted].value[x].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R282-CNAMAmeliSecteurConventionnement/FHIR/TRE-R282-CNAMAmeliSecteurConventionnement" (exactly)
* extension[vitalAccepted] ^isModifier = false
* extension[optionCAS] ^isModifier = false
* extension[ror-practitionerrole-unit-exercise-mode] ^isModifier = false 

