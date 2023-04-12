Profile: RORPractitionerRole
Parent: PractitionerRole
Id: ror-practitionerrole
Description: "Profil créé dans le cadre du ROR pour décrire les modalités d'exercice opérationnelles du profesionnel dans la réalisation de l'offre"

/* Références*/
* practitioner 1..1
* healthcareService 1..1

/* Données techniques */
* meta.lastUpdated 1..1
* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "url"
* meta.tag ^slicing.rules = #open
* meta.tag ^slicing.description = "Slicing pour gérer le code région définissant la région source des données"
* meta.tag ^slicing.ordered = false
* meta.tag contains
    codeRegion 0..1
* meta.tag[codeRegion] from $JDV-J237-RegionOM-ROR (required)

/* Données fonctionnelles */
* identifier 0..1 
* identifier ^short = "identifiantSituationOperationnelle (SituationOperationnelle) : Identifiant de la situation opérationnelle, unique et persistant au niveau national"
* code 1..1
* code ^short = "profession (ExerciceProfessionnel) : Profession exercée ou future profession de l'étudiant"
* code from $JDV-J229-ProfessionSante-ROR (required)

* availableTime 0..1
* availableTime ^short = "precisionHoraire (SituationOperationnelle) : planning d'activité du professionnel"
* availableTime.availableStartTime ^short = "heureDebut (Horaire) : Heure de début de la plage horaire"
* availableTime.availableEndTime ^short = "heureFin (Horaire) : Heure de fin de la plage horaire"
* availableTime.extension ^slicing.discriminator.type = #value
* availableTime.extension ^slicing.discriminator.path = "url"
* availableTime.extension ^slicing.rules = #open
* availableTime.extension contains
    RORAvailableTimeTypeOfTime named ror-available-time-type-of-time 0..1 and 
    RORAvailableTimeEffectiveOpeningClosingDate named ror-available-time-effective-opening-closing-date 0..1 and
    RORAvailableTimeNumberDaysofWeek named ror-available-time-number-days-of-week 0..1
* availableTime.extension[ror-available-time-type-of-time] ^short = "typePlageHoraire (Horaire) : Apporte un contexte à la plage horaire définie par la suite"
* availableTime.extension[ror-available-time-effective-opening-closing-date] ^short = "debutDateEffective + finDateEffective (Horaire)"
* availableTime.extension[ror-available-time-number-days-of-week] ^short = "jourSemaine (Horaire) : Numéro du jour dans la semaine"

* telecom 0..1
* telecom ^short = "telecommunication (SituationOperationnelle) : Adresse(s) de télécommunication du professionnel dans le cadre de l'offre décrite"
* telecom.value 1..1
* telecom.value ^short = "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication"
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains 
    RORTelecomCommunicationChannel named ror-telecom-communication-channel 1..1 and
    RORTelecomUsage named ror-telecom-usage 0..1 and
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1
* telecom.extension[ror-telecom-communication-channel] ^short = "canal (Telecommunication) : Code spécifiant le canal ou la manière dont s'établit la communication"
* telecom.extension[ror-telecom-usage] ^short = "utilisation (Telecommunication) : Utilisation du canal de communication"
* telecom.extension[ror-telecom-confidentiality-level] ^short = "niveauConfidentialite (Telecommunication) : niveau de restriction de l'accès aux attributs de la classe Télécommunication"

* specialty 1..*
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "url"
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
* specialty[expertiseType] ^short = "typeSavoirFaire (SavoirFaire) : Type de savoir-faire (qualifications/autres attributions)"
* specialty[expertiseType] from $JDV-J209-TypeSavoirFaire-ROR (required)
* specialty[specialty] ^short = "specialite (SavoirFaire) : Spécialité ordinale"
* specialty[specialty] from $JDV-J210-SpecialiteOrdinale-ROR (required)
* specialty[competence] ^short = "competence (SavoirFaire) : Compétence acquise par le professionnel"
* specialty[competence] from $JDV-J232-Competence-ROR (required)
* specialty[exclusiveCompetence] ^short = "competenceExclusive (SavoirFaire) : Compétence exclusive"
* specialty[exclusiveCompetence] from $JDV-J211-CompetenceExclusive-ROR (required)
* specialty[specificOrientation] ^short = "orientationParticuliere (SavoirFaire) : Orientation particulière"
* specialty[specificOrientation] from $JDV-J212-OrientationParticuliere-ROR (required)
* specialty[expertiseCapacity] ^short = "capacite (SavoirFaire) : Capacité de médecine"
* specialty[expertiseCapacity] from $JDV-J213-CapaciteSavoirFaire-ROR (required)
* specialty[qualificationPAC] ^short = "qualificationPAC (SavoirFaire) : Qualification de praticien adjoint contractuel"
* specialty[qualificationPAC] from $JDV-J214-QualificationPAC-ROR (required)
* specialty[nonQualifyingDESC] ^short = "DESCNonQualifiant (SavoirFaire) : Diplôme d'études spécialisées complémentaires (DESC)"
* specialty[nonQualifyingDESC] from $JDV-J215-DESCnonQualifiant-ROR (required)
* specialty[supplementaryExerciseRight] ^short = "droitExerciceComplémentaire (SavoirFaire) : Droit d'exercice complémentaire du professionnel"
* specialty[supplementaryExerciseRight] from $JDV-J216-DroitExerciceCompl-ROR (required)
* specialty[specificCompetence] ^short = "competenceSpecifique (SituationOperationnelle) : Capacité ou connaissance reconnue qui permet ou facilite l’accueil d’une personne"
* specialty[specificCompetence] from $JDV-J33-CompetenceSpecifique-ROR (required)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORPractitionerRoleUnitExerciseMode named ror-practitionerrole-unit-exercise-mode 1..1 and
    RORPractitionerRoleName named ror-practitionerrole-name 0..1 and
    $practitionerRole-contracted named contracted 0..1 and
    $practitionerRole-hasCAS named optionCAS 0..1 and 
    $practitionerRole-vitaleAccepted named vitalAccepted 0..1 and
    RORMetaCreationDate named ror-meta-creation-date 1..1 and
    RORMetaComment named ror-meta-comment 0..1
* extension[ror-practitionerrole-unit-exercise-mode] ^short = "modeExerciceOffre (SituationOperationnelle) : statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite"
* extension[ror-practitionerrole-name] ^short = "civiliteExercie + nomExercice + prenomExercice (ExerciceProfessionnel)"
* extension[contracted] ^short = "secteurConventionnement (SituationOperationnelle) : Secteur de conventionnement du professionnel libéral auquel il a adhéré auprès de l'Assurance Maladie"
* extension[contracted].valueCodeableConcept from $JDV-J218-CNAMAmeliSecteurConventionnement-ROR (required)
* extension[contracted].value[x] ^binding.description = "JDV_J218-CNAMAmeliSecteurConventionnement-RASS dérivé de la TRE_ R282-CNAMAmeliSecteurConventionnement"
* extension[optionCAS] ^short = "optionContratAccèsAuxSoins (SituationOperationnelle) : L'Option pratique tarifaire maîtrisée (OPTAM) a remplacé le Contrat d'accès aux soins (CAS) en 2017"
* extension[vitalAccepted] ^short = "carteVitaleAcceptee (SituationOperationnelle) : Précise si le professionnel, dans le cadre de cette situation opérationnelle, dispose des moyens techniques pour prendre en charge la carte vitale ou pas"
* extension[ror-meta-creation-date] ^short = "dateCreation (Metadonnee)"
* extension[ror-meta-comment] ^short = "commentaire (Metadonnee)"
