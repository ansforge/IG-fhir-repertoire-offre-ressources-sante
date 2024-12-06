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
    specialty 0..1 MS and
    competence 0..1 MS and
    exclusiveCompetence 0..1 MS and
    specificOrientation 0..1 MS and
    expertiseCapacity 0..1 MS and
    qualificationPAC 0..1 MS and
    nonQualifyingDESC 0..1 MS and
    supplementaryExerciseRight 0..1 MS and
    specificCompetence 0..* MS 
* specialty[specialty].coding ^slicing.discriminator.type = #value
* specialty[specialty].coding ^slicing.discriminator.path = "url"
* specialty[specialty].coding ^slicing.rules = #open
* specialty[specialty].coding contains
    expertiseType 1..1 MS and
    specialty 1..1 MS
* specialty[specialty].coding[specialty] ^short = "specialite (SavoirFaire) : Spécialité ordinale"
* specialty[specialty].coding[specialty] from $JDV-J210-SpecialiteOrdinale-ROR (required)
* specialty[specialty].coding[expertiseType] ^short = "typeSavoirFaire (SavoirFaire) : Type de savoir-faire (qualifications/autres attributions)"
* specialty[specialty].coding[expertiseType] = $TRE-R04-TypeSavoirFaire#S
* specialty[competence].coding ^slicing.discriminator.type = #value
* specialty[competence].coding ^slicing.discriminator.path = "url"
* specialty[competence].coding ^slicing.rules = #open
* specialty[competence].coding contains
    expertiseType 1..1 MS and
    competence 1..1 MS
* specialty[competence].coding[competence] ^short = "competence (SavoirFaire) : Compétence acquise par le professionnel"
* specialty[competence].coding[competence] from $JDV-J232-Competence-ROR (required)
* specialty[competence].coding[expertiseType] ^short = "typeSavoirFaire (SavoirFaire) : Type de savoir-faire (qualifications/autres attributions)"
* specialty[competence].coding[expertiseType] = $TRE-R04-TypeSavoirFaire#C
* specialty[exclusiveCompetence].coding ^slicing.discriminator.type = #value
* specialty[exclusiveCompetence].coding ^slicing.discriminator.path = "url"
* specialty[exclusiveCompetence].coding ^slicing.rules = #open
* specialty[exclusiveCompetence].coding contains
    expertiseType 1..1 MS and
    exclusiveCompetence 1..1 MS
* specialty[exclusiveCompetence].coding[exclusiveCompetence] ^short = "competenceExclusive (SavoirFaire) : Compétence exclusive"
* specialty[exclusiveCompetence].coding[exclusiveCompetence]  from $JDV-J211-CompetenceExclusive-ROR (required)
* specialty[exclusiveCompetence].coding[expertiseType] ^short = "typeSavoirFaire (SavoirFaire) : Type de savoir-faire (qualifications/autres attributions)"
* specialty[exclusiveCompetence].coding[expertiseType] = $TRE-R04-TypeSavoirFaire#CEX
* specialty[specificOrientation].coding ^slicing.discriminator.type = #value
* specialty[specificOrientation].coding ^slicing.discriminator.path = "url"
* specialty[specificOrientation].coding ^slicing.rules = #open
* specialty[specificOrientation].coding contains
    expertiseType 1..1 MS and
    specificOrientation 1..1 MS
* specialty[specificOrientation] ^short = "orientationParticuliere (SavoirFaire) : Orientation particulière"
* specialty[specificOrientation] from $JDV-J212-OrientationParticuliere-ROR (required)
* specialty[specificOrientation].coding[expertiseType] ^short = "typeSavoirFaire (SavoirFaire) : Type de savoir-faire (qualifications/autres attributions)"
* specialty[specificOrientation].coding[expertiseType] = $TRE-R04-TypeSavoirFaire#OP
* specialty[expertiseCapacity].coding ^slicing.discriminator.type = #value
* specialty[expertiseCapacity].coding ^slicing.discriminator.path = "url"
* specialty[expertiseCapacity].coding ^slicing.rules = #open
* specialty[expertiseCapacity].coding contains
    expertiseType 1..1 MS and
    expertiseCapacity 1..1 MS
* specialty[expertiseCapacity] ^short = "capacite (SavoirFaire) : Capacité de médecine"
* specialty[expertiseCapacity] from $JDV-J213-CapaciteSavoirFaire-ROR (required)
* specialty[expertiseCapacity].coding[expertiseType] ^short = "typeSavoirFaire (SavoirFaire) : Type de savoir-faire (qualifications/autres attributions)"
* specialty[expertiseCapacity].coding[expertiseType] = $TRE-R04-TypeSavoirFaire#CAPA
* specialty[qualificationPAC].coding ^slicing.discriminator.type = #value
* specialty[qualificationPAC].coding ^slicing.discriminator.path = "url"
* specialty[qualificationPAC].coding ^slicing.rules = #open
* specialty[qualificationPAC].coding contains
    expertiseType 1..1 MS and
    qualificationPAC 1..1 MS
* specialty[qualificationPAC].coding[qualificationPAC] ^short = "qualificationPAC (SavoirFaire) : Qualification de praticien adjoint contractuel"
* specialty[qualificationPAC].coding[qualificationPAC] from $JDV-J214-QualificationPAC-ROR (required)
* specialty[qualificationPAC].coding[expertiseType] ^short = "typeSavoirFaire (SavoirFaire) : Type de savoir-faire (qualifications/autres attributions)"
* specialty[qualificationPAC].coding[expertiseType] = $TRE-R04-TypeSavoirFaire#PAC
* specialty[nonQualifyingDESC].coding ^slicing.discriminator.type = #value
* specialty[nonQualifyingDESC].coding ^slicing.discriminator.path = "url"
* specialty[nonQualifyingDESC].coding ^slicing.rules = #open
* specialty[nonQualifyingDESC].coding contains
    expertiseType 1..1 MS and
    nonQualifyingDESC 1..1 MS
* specialty[nonQualifyingDESC].coding[nonQualifyingDESC] ^short = "DESCNonQualifiant (SavoirFaire) : Diplôme d'études spécialisées complémentaires (DESC)"
* specialty[nonQualifyingDESC].coding[nonQualifyingDESC] from $JDV-J215-DESCnonQualifiant-ROR (required)
* specialty[nonQualifyingDESC].coding[expertiseType] ^short = "typeSavoirFaire (SavoirFaire) : Type de savoir-faire (qualifications/autres attributions)"
* specialty[nonQualifyingDESC].coding[expertiseType] = $TRE-R04-TypeSavoirFaire#DNQ
* specialty[supplementaryExerciseRight].coding ^slicing.discriminator.type = #value
* specialty[supplementaryExerciseRight].coding ^slicing.discriminator.path = "url"
* specialty[supplementaryExerciseRight].coding ^slicing.rules = #open
* specialty[supplementaryExerciseRight].coding contains
    expertiseType 1..1 MS and
    supplementaryExerciseRight 1..1 MS
* specialty[supplementaryExerciseRight].coding[supplementaryExerciseRight] ^short = "droitExerciceComplémentaire (SavoirFaire) : Droit d'exercice complémentaire du professionnel"
* specialty[supplementaryExerciseRight].coding[supplementaryExerciseRight] from $JDV-J216-DroitExerciceCompl-ROR (required)
* specialty[supplementaryExerciseRight].coding[expertiseType] ^short = "typeSavoirFaire (SavoirFaire) : Type de savoir-faire (qualifications/autres attributions)"
* specialty[supplementaryExerciseRight].coding[expertiseType] = $TRE-R04-TypeSavoirFaire#DEC
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
Id:       specmetier-to-RORPractitionerRole-exercicePro
Title:    "ExerciceProfessionnel du Modèle exposition ROR V3"
* -> "ExerciceProfessionnel"

* practitioner -> "Professionnel"

* id -> "metadonnee.identifiant"
* meta -> "metadonnee"
* meta.lastUpdated -> "dateMiseJour"
* meta.tag[codeRegion] -> "regionSource"

* code -> "profession" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"

* specialty[specificCompetence] -> "competenceSpecifique" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* specialty[expertiseType] -> "SavoirFaire.typeSavoirFaire" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* specialty[specialty] -> "SavoirFaire.specialite" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* specialty[competence] -> "SavoirFaire.competence" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* specialty[exclusiveCompetence] -> "SavoirFaire.competenceExclusive" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* specialty[specificOrientation] -> "SavoirFaire.orientationParticuliere" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* specialty[expertiseCapacity] -> "SavoirFaire.capacite" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* specialty[qualificationPAC] -> "SavoirFaire.qualificationPAC" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* specialty[nonQualifyingDESC] -> "SavoirFaire.DESCNonQualifiant" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* specialty[supplementaryExerciseRight] -> "SavoirFaire.droitExerciceComplémentaire" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"

* extension[ror-practitionerrole-name] -> ""

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

* identifier -> "identifiantSituationOperationnelle" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"

* availableTime -> "horaire" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* availableTime.availableStartTime -> "heureDebut" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* availableTime.availableEndTime -> "heureFin" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"

* telecom -> "telecommunication" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* telecom.value -> "adresseTelecom" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"

* extension[contracted].valueCodeableConcept -> "secteurConventionnement" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* extension[optionCAS].valueBoolean -> "optionContratAccèsAuxSoins" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* extension[vitalAccepted].valueBoolean -> "carteVitaleAcceptee" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"
* extension[ror-practitionerrole-unit-exercise-mode] -> "modeExerciceOffre" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS ou Ambulatoire (sauf si uniteSensible = Oui)
Profil 0 si champ d'activité = Ambulatoire (sauf si uniteSensible = Oui)"