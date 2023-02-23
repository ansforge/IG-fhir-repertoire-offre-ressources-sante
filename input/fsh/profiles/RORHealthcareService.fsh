Profile: RORHealthcareService
Parent: HealthcareService
Id: ror-healthcareservice
Description: "Profil créé dans le cadre du ROR pour décrire les prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne "
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

/* Données fonctionnelles */
* identifier 1..1
* category 0..1
* category from $JDV-J238-TypeOffre-ROR (required)
* type 1..1
* type from $JDV-J20-ChampActivite-ROR (required)
// Slice characteristic
* characteristic 0..*
* characteristic ^slicing.discriminator.type = #value
* characteristic ^slicing.discriminator.path = "url"
* characteristic ^slicing.rules = #open
* characteristic contains
    careMode 1..1 and
    receptionModality 0..* and
    managementType 0..* and
    receptionType 0..1 and
    takingCareSpeciality 0..* and
    annualOpening 0..1 and
    specificAct 0..* and
    ressourceProfession 0..* and
    specificCompetence 0..* and
    expertiseLevel 0..* and
    temporalityStopService 0..1 and
    outsideOfficeAct 0..*
* characteristic[careMode] from $JDV-J19-ModePriseEnCharge-ROR (required)
* characteristic[receptionModality] from $JDV-J226-ModaliteAccueil-ROR (required)
* characteristic[managementType] from $JDV-J26-ModeGestion-ROR (required)
* characteristic[receptionType] from $JDV-J30-TemporaliteAccueil-ROR (required)
* characteristic[takingCareSpeciality] from $JDV-J35-SpecialisationDePriseEnCharge-ROR (required)
* characteristic[annualOpening] from $JDV-J28-OuvertureAnnuelle-ROR (required)
* characteristic[specificAct] from $JDV-J16-ActeSpecifique-ROR (required)
* characteristic[ressourceProfession] from $JDV-J186-ProfessionRessource-ROR (required)
* characteristic[specificCompetence] from $JDV-J33-CompetenceSpecifique-ROR (required)
* characteristic[expertiseLevel] from $JDV-J227-NiveauExpertise-ROR (required)
* characteristic[temporalityStopService] from $JDV-J185-TypeFermeture-ROR (required)
* characteristic[outsideOfficeAct] from $JDV-J16-ActeSpecifique-ROR (required)
//
* notAvailable 0..1
* notAvailable ^slicing.discriminator.type = #value 
* notAvailable ^slicing.discriminator.path = "url" 
* notAvailable ^slicing.rules = #open
* notAvailable contains
    closingDate 0..1 and
    previsionalReopeningDate 0..1
// Horaire
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
// ActiviteOperationnelle
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.rules = #open
* specialty contains
    operationalActivity 1..1 and
    operationalActivityFamily 0..1
* specialty[operationalActivity] from $JDV-J17-ActiviteOperationnelle-ROR (required)
* specialty[operationalActivityFamily] from $JDV-J51-FamilleActiviteOperationnelle-ROR (required)
// BoiteLettreMSS
/// telecom 0..1 TestDebug
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
    RORHealthcareServicePsychiatricSector named ror-healthcareservice-psychiatric-sector 0..* and
    RORHealthcareServiceNoConsentHabilitation named ror-healthcareservice-no-consent-habilitation 0..1 and
    RORHealthcareServicePatientType named ror-healthcareservice-patient-type 1..1 and
    RORHealthcareServiceSensitiveUnit named ror-healthcareservice-sensitive-unit 1..* and
    RORTerritorialDivision named ror-territorial-division 0..* and
    RORHealthcareServiceContact named ror-healthcareservice-contact 1..1 and
    RORCalculatedDistance named RORCalculatedDistance 0..1
* extension[ror-healthcareservice-psychiatric-sector] ^isModifier = false
* extension[ror-healthcareservice-no-consent-habilitation] ^isModifier = false
* extension[ror-healthcareservice-patient-type] ^isModifier = false
* extension[ror-healthcareservice-sensitive-unit] ^isModifier = false
* extension[ror-territorial-division] ^isModifier = false
* extension[ror-healthcareservice-contact] ^isModifier = false


