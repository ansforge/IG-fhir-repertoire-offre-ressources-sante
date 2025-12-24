Profile: RORPractitionerRole
Parent: PractitionerRole
Id: ror-practitionerrole
Description: "Profil créé dans le cadre du ROR pour décrire les modalités d'exercice opérationnelles du profesionnel dans la réalisation de l'offre"

/* Références*/
* practitioner 1..1 MS
* healthcareService 1..1 MS

/* Données techniques */
* meta.lastUpdated 1..1 MS
* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "url"
* meta.tag ^slicing.rules = #open
* meta.tag ^slicing.description = "Slicing pour gérer le code région définissant la région source des données"
* meta.tag ^slicing.ordered = false
* meta.tag contains
    codeRegion 0..1 MS
* meta.tag[codeRegion] from $JDV-J237-RegionOM-ROR (required)

/* Données fonctionnelles */
* identifier 0..1 MS
* identifier ^short = "identifiantSituationOperationnelle (SituationOperationnelle) : Identifiant de la situation opérationnelle, unique et persistant au niveau national"
* practitioner only Reference(Practitioner or RORPractitioner)
* organization only Reference(fr-organization or ROROrganization)
* code 1..1 MS

* code ^short = "profession (ExerciceProfessionnel) : Profession exercée ou future profession de l'étudiant"
* code from $JDV-J229-ProfessionSante-ROR (required)
* practitioner MS
* healthcareService MS

* availableTime 0..1 MS
* availableTime ^short = "precisionHoraire (SituationOperationnelle) : planning d'activité du professionnel"
* availableTime.availableStartTime MS
* availableTime.availableStartTime ^short = "heureDebut (Horaire) : Heure de début de la plage horaire"
* availableTime.availableEndTime MS
* availableTime.availableEndTime ^short = "heureFin (Horaire) : Heure de fin de la plage horaire"
* availableTime.extension ^slicing.discriminator.type = #value
* availableTime.extension ^slicing.discriminator.path = "url"
* availableTime.extension ^slicing.rules = #open
* availableTime.extension contains
    RORAvailableTimeTypeOfTime named ror-available-time-type-of-time 0..1 MS and 
    RORAvailableTimeEffectiveOpeningClosingDate named ror-available-time-effective-opening-closing-date 0..1 MS and
    RORAvailableTimeNumberDaysofWeek named ror-available-time-number-days-of-week 0..1 MS
* availableTime.extension[ror-available-time-type-of-time] ^short = "typePlageHoraire (Horaire) : Apporte un contexte à la plage horaire définie par la suite"
* availableTime.extension[ror-available-time-effective-opening-closing-date] ^short = "debutDateEffective + finDateEffective (Horaire)"
* availableTime.extension[ror-available-time-number-days-of-week] ^short = "jourSemaine (Horaire) : Numéro du jour dans la semaine"

* telecom 0..1 MS
* telecom ^short = "telecommunication (SituationOperationnelle) : Adresse(s) de télécommunication du professionnel dans le cadre de l'offre décrite"
* telecom.value 1..1 MS
* telecom.value ^short = "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication"
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains 
    RORTelecomCommunicationChannel named ror-telecom-communication-channel 1..1 MS and
    RORTelecomUsage named ror-telecom-usage 0..1 MS and
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1 MS
* telecom.extension[ror-telecom-communication-channel] ^short = "canal (Telecommunication) : Code spécifiant le canal ou la manière dont s'établit la communication"
* telecom.extension[ror-telecom-usage] ^short = "utilisation (Telecommunication) : Utilisation du canal de communication"
* telecom.extension[ror-telecom-confidentiality-level] ^short = "niveauConfidentialite (Telecommunication) : niveau de restriction de l'accès aux attributs de la classe Télécommunication"

* specialty 0..* MS
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "url"
* specialty ^slicing.rules = #open
* specialty contains
    expertiseType 1..1 MS and
    specialty 0..1 MS and
    competence 0..1 MS and
    exclusiveCompetence 0..1 MS and
    specificOrientation 0..1 MS and
    expertiseCapacity 0..1 MS and
    qualificationPAC 0..1 MS and
    nonQualifyingDESC 0..1 MS and
    supplementaryExerciseRight 0..1 MS and
    specificCompetence 0..* MS
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

* location only Reference(Location or RORLocation)
* healthcareService only Reference(HealthcareService or RORHealthcareService)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORPractitionerRoleUnitExerciseMode named ror-practitionerrole-unit-exercise-mode 1..1 MS and
    RORPractitionerRoleName named ror-practitionerrole-name 0..1 MS and
    $practitionerRole-contracted named contracted 0..1 MS and
    $practitionerRole-hasCAS named optionCAS 0..1 MS and 
    $practitionerRole-vitaleAccepted named vitalAccepted 0..1 MS and
    RORMetaCreationDate named ror-meta-creation-date 1..1 MS and
    RORMetaComment named ror-meta-comment 0..1 MS
* extension[ror-practitionerrole-unit-exercise-mode] ^short = "modeExerciceOffre (SituationOperationnelle) : statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite"
* extension[ror-practitionerrole-name] ^short = "civiliteExercie + nomExercice + prenomExercice (ExerciceProfessionnel)"
* extension[contracted] ^short = "secteurConventionnement (SituationOperationnelle) : Secteur de conventionnement du professionnel libéral auquel il a adhéré auprès de l'Assurance Maladie"
* extension[contracted].valueCodeableConcept from $JDV-J218-CNAMAmeliSecteurConventionnement-ROR (required)
* extension[contracted].value[x] ^binding.description = "JDV_J218-CNAMAmeliSecteurConventionnement-RASS dérivé de la TRE_ R282-CNAMAmeliSecteurConventionnement"
* extension[optionCAS] ^short = "optionContratAccèsAuxSoins (SituationOperationnelle) : L'Option pratique tarifaire maîtrisée (OPTAM) a remplacé le Contrat d'accès aux soins (CAS) en 2017"
* extension[vitalAccepted] ^short = "carteVitaleAcceptee (SituationOperationnelle) : Précise si le professionnel, dans le cadre de cette situation opérationnelle, dispose des moyens techniques pour prendre en charge la carte vitale ou pas"
* extension[ror-meta-creation-date] ^short = "dateCreation (Metadonnee)"
* extension[ror-meta-comment] ^short = "commentaire (Metadonnee)"

Mapping:  ConceptMetier_RORPractitionerRole_ExercicePro
Source:   RORPractitionerRole
Target:   "https://industriels.esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0_ModeleExposition_VFD2.1_20231031.pdf"
Id:       specmetier-to-RORPractitionerRole-exercicePro
Title:    "ExerciceProfessionnel du Modèle exposition ROR V3"
* -> "ExerciceProfessionnel"

* practitioner -> "Professionnel"

* id -> "metadonnee.identifiant" "Profil 1, 
Profil 2 si uniteSensible = Non ,  
Profil 3 si champ d'activité de l'offre = MS et si uniteSensible = Non, 
Profil4 
Profil5 si uniteSensible = Non
Profil 0 uniquement si champs d'activité de l'offre 'Ville'"
* meta -> "metadonnee" "idem à Metadonnee.identifiant"
* meta.lastUpdated -> "dateMiseJour" "idem à Metadonnee.identifiant"
* meta.tag[codeRegion] -> "regionSource" "idem à Metadonnee.identifiant"

* code -> "profession" "idem à Metadonnee.identifiant"

* specialty[specificCompetence] -> "competenceSpecifique" "idem à Metadonnee.identifiant"
* specialty[expertiseType] -> "SavoirFaire.typeSavoirFaire" "idem à Metadonnee.identifiant"
* specialty[specialty] -> "SavoirFaire.specialite" "idem à Metadonnee.identifiant"
* specialty[competence] -> "SavoirFaire.competence" "idem à Metadonnee.identifiant"
* specialty[exclusiveCompetence] -> "SavoirFaire.competenceExclusive" "idem à Metadonnee.identifiant"
* specialty[specificOrientation] -> "SavoirFaire.orientationParticuliere" "idem à Metadonnee.identifiant"
* specialty[expertiseCapacity] -> "SavoirFaire.capacite" "idem à Metadonnee.identifiant"
* specialty[qualificationPAC] -> "SavoirFaire.qualificationPAC" "idem à Metadonnee.identifiant"
* specialty[nonQualifyingDESC] -> "SavoirFaire.DESCNonQualifiant" "idem à Metadonnee.identifiant"
* specialty[supplementaryExerciseRight] -> "SavoirFaire.droitExerciceComplémentaire" "idem à Metadonnee.identifiant"


Mapping:  ConceptMetier_RORPractitionerRole_SituationOp
Source:   RORPractitionerRole
Id:       specmetier-to-RORPractitionerRole-situationOp
Title:    "SituationOperationnelle du Modèle exposition ROR V3"
* -> "SituationOperationnelle"

* healthcareService -> "OffreOperationnelle"

* id -> "metadonnee.identifiant"
* meta -> "metadonnee"
* meta.lastUpdated -> "dateMiseJour"
* meta.tag[codeRegion] -> "regionSource"

* identifier -> "identifiantSituationOperationnelle" "idem à Metadonnee.identifiant"
* availableTime -> "horaire" "idem à Metadonnee.identifiant"
* availableTime.availableStartTime -> "heureDebut" "idem à Metadonnee.identifiant"
* availableTime.availableEndTime -> "heureFin" "idem à Metadonnee.identifiant"
* availableTime.extension[RORAvailableTimeTypeOfTime] -> "typePlageHoraire" "idem à Metadonnee.identifiant"
* availableTime.extension[RORAvailableTimeEffectiveOpeningClosingDate] -> "debutDateEffective/finDateEffective" "idem à Metadonnee.identifiant"
* availableTime.extension[RORAvailableTimeNumberDaysofWeek] -> "jourSemaine" "idem à Metadonnee.identifiant"

* telecom -> "telecommunication" "Profil 1,
Profil 2 et Profil 5 si niveau de confidentialité de la telecommunication différent de 'très restreint' et uniteSensible = Non
Profil 3 si champ d'activité MS et si si niveau de confidentialité de la telecommunication différent de 'très restreint' et uniteSensible = Non
Profil 4 si niveau de confidentialité  de la telecommunication = 'public'
Profil 0 si niveau de confidentialité  de la telecommunication = 'public' et uniteSensible = Non"
* telecom.value -> "adresseTelecom" "cf telecommunication"

* extension[contracted].valueCodeableConcept -> "secteurConventionnement" "idem à Metadonnee.identifiant"
* extension[optionCAS].valueBoolean -> "optionContratAccèsAuxSoins" "idem à Metadonnee.identifiant"
* extension[vitalAccepted].valueBoolean -> "carteVitaleAcceptee" "idem à Metadonnee.identifiant"
* extension[RORPractitionerRoleUnitExerciseMode] -> "modeExerciceOffre" "idem à Metadonnee.identifiant"
* extension[RORPractitionerRoleName] -> "ExerciceProfessionnel (civiliteExercice,nomExercice,prenomExercice)" "idem à Metadonnee.identifiant"
