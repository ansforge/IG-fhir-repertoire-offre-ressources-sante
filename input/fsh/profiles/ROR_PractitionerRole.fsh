Profile: ROR_PractitionerRole
Parent: PractitionerRole
Id: ror-practitionerrole
Description: "Profil créé dans le cadre du ROR pour décrire les modalités d'exercice opérationnelles du profesionnel dans la réalisation de l'offre"
* meta 1..1
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $practitionerRole-name named name 0..1 and
    $practitionerRole-contracted named contracted 0..1 and
    $practitionerRole-vitaleAccepted named vitalAccepted 0..1 and
    $practitionerRole-hasCAS named optionCAS 0..1 and
    RORPractitionerRoleUnitExerciseMode named ror-practitionerrole-unit-exercise-mode 1..*
* extension[name] ^isModifier = false
* extension[name].value[x].family 1..1
* extension[contracted] ^isModifier = false
* extension[contracted].value[x] from $JDV-J218-CNAMAmeliSecteurConventionnement-ROR (required)
* extension[contracted].value[x] ^binding.description = "JDV_J218-CNAMAmeliSecteurConventionnement-RASS dérivé de la TRE_ R282-CNAMAmeliSecteurConventionnement"
* extension[contracted].value[x].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R282-CNAMAmeliSecteurConventionnement/FHIR/TRE-R282-CNAMAmeliSecteurConventionnement" (exactly)
* extension[vitalAccepted] ^isModifier = false
* extension[optionCAS] ^isModifier = false
* extension[ror-practitionerrole-unit-exercise-mode] ^isModifier = false
* practitioner 1..1 
* code 1..1
* code from $JDV-J229-ProfessionSante-ROR (required)
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.rules = #open
* specialty contains
    ttpeSavoirFaireR04 1..1 and
    specialiteOrdinaleR38 0..1 and
    competenceR39 0..1 and
    competenceExclusiveR40 0..1 and
    orientationParticuliereG13 0..1 and
    capaciteSavoirFaireR43 0..1 and
    qualificationPACR44 0..1 and
    DESCnonQualifiantR42 0..1 and
    droitExerciceComplementaireR97 0..1 and
    competenceSpecifiqueR243 0..*
* specialty[ttpeSavoirFaireR04] from $JDV-J209-TypeSavoirFaire-ROR (required)
* specialty[specialiteOrdinaleR38] from $JDV-J210-SpecialiteOrdinale-ROR (required)
* specialty[competenceR39] from $JDV-J232-Competence-ROR (required)
* specialty[competenceExclusiveR40] from $JDV-J211-CompetenceExclusive-ROR (required)
* specialty[orientationParticuliereG13] from $JDV-J212-OrientationParticuliere-ROR (required)
* specialty[capaciteSavoirFaireR43] from $JDV-J213-CapaciteSavoirFaire-ROR (required)
* specialty[qualificationPACR44] from $JDV-J214-QualificationPAC-ROR (required)
* specialty[DESCnonQualifiantR42] from $JDV-J215-DESCnonQualifiant-ROR (required)
* specialty[droitExerciceComplementaireR97] from $JDV-J216-DroitExerciceCompl-ROR (required)
* specialty[competenceSpecifiqueR243] from $JDV-J33-CompetenceSpecifique-ROR (required)
* healthcareService 1..1
* telecom 0..1 
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains 
    RORTelecomUsage named usage 0..1 and
    RORCommunicationChannel named communicationChannel 1..1 and
    RORConfidentialityLevel named confidentialityLevel 1..1 
* telecom.extension[communicationChannel] ^isModifier = false
* telecom.extension[confidentialityLevel] ^isModifier = false
* telecom.extension[usage] ^isModifier = false
* telecom.value 1..1
* availableTime 0..1
* availableTime.extension ^slicing.discriminator.type = #value
* availableTime.extension ^slicing.discriminator.path = "url"
* availableTime.extension ^slicing.rules = #open
* availableTime.extension contains
    RORAvailableTimeEffectiveOpeningClosingDate named effectiveOpeningClosingDate 0..* and
    RORHealthcareServiceAvailableTimeTypeOfTime named typeOfTime 0..*
* availableTime.extension[effectiveOpeningClosingDate] ^isModifier = false
* availableTime.extension[typeOfTime] ^isModifier = false