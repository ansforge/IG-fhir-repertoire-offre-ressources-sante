Profile: RORHealthcareService
Parent: HealthcareService
Id: ror-healthcareservice
Description: "Profil créé dans le cadre du ROR pour décrire les prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne "
* meta.tag 0..1
* meta.tag from $JDV_J237-RegionOM-ROR (required)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORHealthcareServicePsychiatricSector named ror-healthcareservice-psychiatric-sector 0..* and
    RORHealthcareServiceNoConsentHabilitation named ror-healthcareservice-no-consent-habilitation 0..1 and
    RORSpecificCompetence named ror-specific-competence 0..* and
    RORHealthcareServicePatientType named ror-healthcareservice-patient-type 0..* and
    RORHealthcareServiceSensitiveUnit named ror-healthcareservice-sensitive-unit 1..* and
    RORHealthcareServiceInterventionZone named ror-healthcareservice-intervention-zone 0..* and
    RORHealthcareServiceContact named ror-healthcareservice-contact 1..1
* extension[ror-healthcareservice-psychiatric-sector] ^isModifier = false
* extension[ror-healthcareservice-no-consent-habilitation] ^isModifier = false
* extension[ror-specific-competence] ^isModifier = false
* extension[ror-healthcareservice-patient-type] ^isModifier = false
* extension[ror-healthcareservice-sensitive-unit] ^isModifier = false
* extension[ror-healthcareservice-intervention-zone] ^isModifier = false
* extension[ror-healthcareservice-contact] ^isModifier = false
* identifier 1..1
* category 0..1
* type 1..1
* meta.tag 0..1
* meta.tag from $JDV_J237-RegionOM-ROR (required)
* category from $JDV-J238-TypeOffre-ROR (required)
* type from $JDV-J20-ChampActivite-ROR (required)
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.rules = #open
* specialty contains
    operationalActivity 0..1 and
    operationalActivityFamily 0..1
* specialty[operationalActivity] from $JDV-J17-ActiviteOperationnelle-ROR (required)
* specialty[operationalActivity] ^short = "An operational activity handled by the HealthcareService"
* specialty[operationalActivity] ^definition = "Collection of operational activities handled by the service site. This is more of a medical term."
* specialty[operationalActivity] ^binding.description = "An operational activity that a healthcare service may provide."
* specialty[operationalActivityFamily] from $JDV-J51-FamilleActiviteOperationnelle-ROR (required)
* specialty[operationalActivityFamily] ^short = "Family of operational activities handled by the HealthcareService"
* specialty[operationalActivityFamily] ^definition = "Collection of operational activity families, except Serafin."
* specialty[operationalActivityFamily] ^binding.description = "A family of operationnal activities that a healthcare service may provide."
* characteristic 0..*
* characteristic ^slicing.discriminator.type = #value
* characteristic ^slicing.discriminator.path = "id"
* characteristic ^slicing.rules = #open
* characteristic contains
    careMode 1..1 and
    receptionModality 0..* and
    managementType 0..* and
    receptionType 0..1 and
    takingCareSpeciality 0..* and
    annualOpening 0..1 and
    specificAct 0..* and
    ressourceProfession 0..1 and
    specificCompetence 0..1 and
    expertiseLevel 0..* and
    temporalityStopService 0..1 and
    outsideOfficeAct 0..*
* characteristic[careMode] from $JDV-J19-ModePriseEnCharge-ROR (required)
* characteristic[careMode].id = "careMode" (exactly)
* characteristic[receptionModality] from $JDV-J226-ModaliteAccueil-ROR (required)
* characteristic[receptionModality].id = "receptionModality" (exactly)
* characteristic[managementType] from $JDV-J26-ModeGestion-ROR (required)
* characteristic[managementType].id = "managementType" (exactly)
* characteristic[receptionType] from $JDV-J30-TemporaliteAccueil-ROR (required)
* characteristic[receptionType].id = "receptionType" (exactly)
* characteristic[takingCareSpeciality] from $JDV-J35-SpecialisationDePriseEnCharge-ROR (required)
* characteristic[takingCareSpeciality].id = "takingCareSpeciality" (exactly)
* characteristic[annualOpening] from $JDV-J28-OuvertureAnnuelle-ROR (required)
* characteristic[annualOpening].id = "annualOpening" (exactly)
* characteristic[specificAct] from $JDV-J16-ActeSpecifique-ROR (required)
* characteristic[specificAct].id = "specificAct" (exactly)
* characteristic[ressourceProfession] from $JDV-J186-ProfessionRessource-ROR (required)
* characteristic[ressourceProfession].id = "ressourceProfession" (exactly)
* characteristic[specificCompetence] from $JDV-J33-CompetenceSpecifique-ROR (required)
* characteristic[specificCompetence].id = "specificCompetence" (exactly)
* characteristic[expertiseLevel] from $JDV-J227-NiveauExpertise-ROR (required)
* characteristic[expertiseLevel].id = "expertiseLevel" (exactly)
* characteristic[temporalityStopService] from $JDV-J201-TypeFermeture-ROR (required)
* characteristic[temporalityStopService].id = "temporalityStopService" (exactly)
* characteristic[outsideOfficeAct] from $JDV-J16-ActeSpecifique-ROR (required)
* characteristic[outsideOfficeAct].id = "outsideOfficeAct" (exactly)
* availableTime.extension ^slicing.discriminator.type = #value
* availableTime.extension ^slicing.discriminator.path = "url"
* availableTime.extension ^slicing.rules = #open
* availableTime.extension contains
    RORAvailableTimeEffectiveOpeningClosingDate named ror-available-time-effective-opening-closing-date 0..* and
    RORAvailableTimeNumberDaysofWeek named ror-available-time-number-days-of-week 0..1 and
    RORHealthcareServiceAvailableTimeTypeOfTime named ror-healthcareservice-available-time-type-of-time 0..*
* availableTime.extension[ror-available-time-effective-opening-closing-date] ^isModifier = false
* availableTime.extension[ror-available-time-number-days-of-week] ^isModifier = false
* availableTime.extension[ror-healthcareservice-available-time-type-of-time] ^isModifier = false