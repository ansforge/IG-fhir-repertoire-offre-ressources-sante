Profile: RORPractitioner
Parent: AsPractitionerProfile
Id: ror-practitioner
Description: "Profil créé dans le cadre du ROR pour décrire l'exercice professionnel d'une personne physique : identité d'exercice, profession et savoir-faire (spécialités, compétences...)"

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
* identifier MS
* identifier[idNatPs] 1..1 MS
* identifier[idNatPs] ^short = "idNat_PS (Professionnel) : Identification nationale du professionnel définie par le CI-SIS"
* identifier[idNatPs].system = "urn:oid:1.2.250.1.71.4.2.1" //voir issue https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/100

* name MS
* name.family MS
* name.family ^short = "nomExercice (ExerciceProfessionnel) : Nom sous lequel exerce le professionnel"
* name.given MS
* name.given ^short = "prenomExercice (ExerciceProfessionnel) : Prénom sous lequel exerce le professionnel"
* name.suffix MS
* name.suffix from $JDV-J208-CiviliteExercice-ROR (required)
* name.suffix ^short = "civiliteExercice (ExerciceProfessionnel) : Civilité d'exercice du professionnel"

* telecom MS
* telecom ^short = "boiteLettreMSS (Professionnel) : Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) au professionnel"
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

/* Profession et savoir-faire (qualification) */
* qualification[exercicePro] 1..1 MS
* qualification[exercicePro] ^short = "profession (ExerciceProfessionnel) : Profession exercée ou future profession de l'étudiant"
* qualification[exercicePro].code.coding[profession] MS
* qualification[exercicePro].code.coding[profession] from $JDV-J229-ProfessionSante-ROR (required)

// Le savoir-faire est porté par des slices supplémentaires de qualification (une par facette : spécialité,
// compétence, capacité...), chaque facette étant identifiée par un code fixe de TRE-R04-TypeSavoirFaire
// (coding[typeSavoirFaire]) accompagné de la valeur codée de la facette (coding[valeur]). Ce sont des slices
// ROR distinctes du slice natif "savoirFaire" d'AsPractitionerProfile (limitation technique du reslicing en
// FSH constatée à l'implémentation), mais elles restent compatibles avec le slicing ouvert hérité sur qualification.
* qualification contains
    rorSpecialty 0..1 MS and
    rorCompetence 0..* MS and
    rorExclusiveCompetence 0..1 MS and
    rorSpecificOrientation 0..1 MS and
    rorExpertiseCapacity 0..1 MS and
    rorQualificationPAC 0..1 MS and
    rorNonQualifyingDESC 0..1 MS and
    rorSupplementaryExerciseRight 0..1 MS

* qualification[rorSpecialty] ^short = "specialite (SavoirFaire) : Spécialité ordinale"
* qualification[rorSpecialty].code.coding ^slicing.discriminator.type = #value
* qualification[rorSpecialty].code.coding ^slicing.discriminator.path = "system"
* qualification[rorSpecialty].code.coding ^slicing.rules = #open
* qualification[rorSpecialty].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[rorSpecialty].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#S
* qualification[rorSpecialty].code.coding[valeur] from $JDV-J210-SpecialiteOrdinale-ROR (required)

* qualification[rorCompetence] ^short = "competence (SavoirFaire) : Compétence acquise par le professionnel"
* qualification[rorCompetence].code.coding ^slicing.discriminator.type = #value
* qualification[rorCompetence].code.coding ^slicing.discriminator.path = "system"
* qualification[rorCompetence].code.coding ^slicing.rules = #open
* qualification[rorCompetence].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[rorCompetence].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#C
* qualification[rorCompetence].code.coding[valeur] from $JDV-J232-Competence-ROR (required)

* qualification[rorExclusiveCompetence] ^short = "competenceExclusive (SavoirFaire) : Compétence exclusive"
* qualification[rorExclusiveCompetence].code.coding ^slicing.discriminator.type = #value
* qualification[rorExclusiveCompetence].code.coding ^slicing.discriminator.path = "system"
* qualification[rorExclusiveCompetence].code.coding ^slicing.rules = #open
* qualification[rorExclusiveCompetence].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[rorExclusiveCompetence].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#CEX
* qualification[rorExclusiveCompetence].code.coding[valeur] from $JDV-J211-CompetenceExclusive-ROR (required)

* qualification[rorSpecificOrientation] ^short = "orientationParticuliere (SavoirFaire) : Orientation particulière"
* qualification[rorSpecificOrientation].code.coding ^slicing.discriminator.type = #value
* qualification[rorSpecificOrientation].code.coding ^slicing.discriminator.path = "system"
* qualification[rorSpecificOrientation].code.coding ^slicing.rules = #open
* qualification[rorSpecificOrientation].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[rorSpecificOrientation].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#OP
* qualification[rorSpecificOrientation].code.coding[valeur] from $JDV-J212-OrientationParticuliere-ROR (required)

* qualification[rorExpertiseCapacity] ^short = "capacite (SavoirFaire) : Capacité de médecine"
* qualification[rorExpertiseCapacity].code.coding ^slicing.discriminator.type = #value
* qualification[rorExpertiseCapacity].code.coding ^slicing.discriminator.path = "system"
* qualification[rorExpertiseCapacity].code.coding ^slicing.rules = #open
* qualification[rorExpertiseCapacity].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[rorExpertiseCapacity].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#CAPA
* qualification[rorExpertiseCapacity].code.coding[valeur] from $JDV-J213-CapaciteSavoirFaire-ROR (required)

* qualification[rorQualificationPAC] ^short = "qualificationPAC (SavoirFaire) : Qualification de praticien adjoint contractuel"
* qualification[rorQualificationPAC].code.coding ^slicing.discriminator.type = #value
* qualification[rorQualificationPAC].code.coding ^slicing.discriminator.path = "system"
* qualification[rorQualificationPAC].code.coding ^slicing.rules = #open
* qualification[rorQualificationPAC].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[rorQualificationPAC].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#PAC
* qualification[rorQualificationPAC].code.coding[valeur] from $JDV-J214-QualificationPAC-ROR (required)

* qualification[rorNonQualifyingDESC] ^short = "DESCNonQualifiant (SavoirFaire) : Diplôme d'études spécialisées complémentaires (DESC)"
* qualification[rorNonQualifyingDESC].code.coding ^slicing.discriminator.type = #value
* qualification[rorNonQualifyingDESC].code.coding ^slicing.discriminator.path = "system"
* qualification[rorNonQualifyingDESC].code.coding ^slicing.rules = #open
* qualification[rorNonQualifyingDESC].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[rorNonQualifyingDESC].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#DNQ
* qualification[rorNonQualifyingDESC].code.coding[valeur] from $JDV-J215-DESCnonQualifiant-ROR (required)

* qualification[rorSupplementaryExerciseRight] ^short = "droitExerciceComplémentaire (SavoirFaire) : Droit d'exercice complémentaire du professionnel"
* qualification[rorSupplementaryExerciseRight].code.coding ^slicing.discriminator.type = #value
* qualification[rorSupplementaryExerciseRight].code.coding ^slicing.discriminator.path = "system"
* qualification[rorSupplementaryExerciseRight].code.coding ^slicing.rules = #open
* qualification[rorSupplementaryExerciseRight].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[rorSupplementaryExerciseRight].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#DEC
* qualification[rorSupplementaryExerciseRight].code.coding[valeur] from $JDV-J216-DroitExerciceCompl-ROR (required)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORMetaCreationDate named ror-meta-creation-date 1..1 MS
* extension[ror-meta-creation-date] ^short = "dateCreation (Metadonnee)"

Mapping:  ConceptMetier_RORPractitioner
Source:   RORPractitioner
Target:   "https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf"
Id:       specmetier-to-RORPractitioner
Title:    "ExerciceProfessionnel du Modèle exposition ROR V3"
* -> "ExerciceProfessionnel" "Profils ayant Accès"

* id -> "metadonnee.identifiant" "Profil 1,
Profil 2 si uniteSensible = Non,
Profil 3 si champ d'activité de l'offre = MS et si uniteSensible = Non,
Profil4,
Profil5 si uniteSensible = Non,
Profil 0 uniquement si champs d'activité de l'offre 'Ville'  "
* meta -> "metadonnee" "Similaire aux accès de metadonnee.identifiant"
* meta.lastUpdated -> "dateMiseJour" "Similaire aux accès de metadonnee.identifiant"
* meta.tag[codeRegion] -> "regionSource" "Similaire aux accès de metadonnee.identifiant"

* identifier[idNatPs] -> "idNat_PS" "Similaire aux accès de metadonnee.identifiant"
* name.suffix -> "ExerciceProfessionnel.civiliteExercice" "Similaire aux accès de metadonnee.identifiant"
* name.family -> "ExerciceProfessionnel.nomExercice" "Similaire aux accès de metadonnee.identifiant"
* name.given -> "ExerciceProfessionnel.prenomExercice" "Similaire aux accès de metadonnee.identifiant"

* telecom -> "boiteLettreMSS.adresseMSS" "Similaire aux accès de metadonnee.identifiant"
* telecom.value -> "adresseTelecom" "cf. boiteLettreMSS"

* qualification[exercicePro].code.coding[profession] -> "profession" "Similaire aux accès de metadonnee.identifiant"

* qualification[rorSpecialty] -> "SavoirFaire.specialite" "Similaire aux accès de metadonnee.identifiant"
* qualification[rorCompetence] -> "SavoirFaire.competence" "Similaire aux accès de metadonnee.identifiant"
* qualification[rorExclusiveCompetence] -> "SavoirFaire.competenceExclusive" "Similaire aux accès de metadonnee.identifiant"
* qualification[rorSpecificOrientation] -> "SavoirFaire.orientationParticuliere" "Similaire aux accès de metadonnee.identifiant"
* qualification[rorExpertiseCapacity] -> "SavoirFaire.capacite" "Similaire aux accès de metadonnee.identifiant"
* qualification[rorQualificationPAC] -> "SavoirFaire.qualificationPAC" "Similaire aux accès de metadonnee.identifiant"
* qualification[rorNonQualifyingDESC] -> "SavoirFaire.DESCNonQualifiant" "Similaire aux accès de metadonnee.identifiant"
* qualification[rorSupplementaryExerciseRight] -> "SavoirFaire.droitExerciceComplémentaire" "Similaire aux accès de metadonnee.identifiant"
