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
// Utilise la slice native "mailbox-mss" héritée d'AsPractitionerProfile (ContactPoint profilé as-mailbox-mss :
// system fixé à "email" + extension fr-core-contact-point-email-type obligatoire) plutôt qu'un telecom générique,
// pour s'aligner sur le mécanisme standard AS/FR Core de représentation d'une adresse de messagerie sécurisée.
// Les extensions ROR (canal, utilisation, niveau de confidentialité) restent portées sur cette même slice :
// le slicing d'extension hérité (discriminator "url", rules "open") l'autorise.
* telecom[mailbox-mss] MS
* telecom[mailbox-mss].value 1..1 MS
* telecom[mailbox-mss].value ^short = "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication"
* telecom[mailbox-mss].extension[emailType].valueCoding = $TRE-R256-TypeMessagerie#MSSANTE "MSSANTE"
* telecom[mailbox-mss].extension contains
    RORTelecomCommunicationChannel named ror-telecom-communication-channel 1..1 MS and
    RORTelecomUsage named ror-telecom-usage 0..1 MS and
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1 MS
* telecom[mailbox-mss].extension[ror-telecom-communication-channel] ^short = "canal (Telecommunication) : Code spécifiant le canal ou la manière dont s'établit la communication"
* telecom[mailbox-mss].extension[ror-telecom-usage] ^short = "utilisation (Telecommunication) : Utilisation du canal de communication"
* telecom[mailbox-mss].extension[ror-telecom-confidentiality-level] ^short = "niveauConfidentialite (Telecommunication) : niveau de restriction de l'accès aux attributs de la classe Télécommunication"

/* Profession et savoir-faire (qualification) */
* qualification[exercicePro] 1..1 MS
* qualification[exercicePro] ^short = "profession (ExerciceProfessionnel) : Profession exercée ou future profession de l'étudiant"
* qualification[exercicePro].code.coding[profession] MS
* qualification[exercicePro].code.coding[profession] from $JDV-J229-ProfessionSante-ROR (required)

// Le savoir-faire reslice le slice natif "qualification[savoirFaire]" d'AsPractitionerProfile (une case
// générique répétable, discriminée par sa propre valeur), en 8 sous-slices (une par facette : spécialité,
// compétence, capacité...), via la syntaxe FHIR standard qualification[savoirFaire/xxx]. Deux points non
// évidents pour que ça fonctionne : (1) le nouveau discriminant doit être déclaré sur la SLICE "savoirFaire"
// elle-même (^slicing sur qualification[savoirFaire]), pas sur l'élément de base "qualification" — c'est le
// mécanisme de reslicing standard FHIR (on tranche une slice existante en lui donnant sa propre slicing).
// SUSHI émet un avertissement contraire ("An element with a slice name should not define its own slicing.
// Instead, append additional discriminators to the original slicing on the base element.") : NE PAS le suivre,
// il induit en erreur — ajouter le discriminant via `qualification ^slicing.discriminator[+]` sur l'élément de
// base écrase silencieusement (dans SUSHI) le discriminant hérité au lieu de l'étendre, ce que SUSHI ne détecte
// pas mais que le générateur de snapshot de l'IG Publisher rejette explicitement à la publication ("Slicing
// rules on differential ... do not match those on base"). Vérifié avec le vrai IG Publisher (2.3.2) : l'approche
// retenue ici passe la génération de snapshot et la validation de conformité sans erreur. (2) Il faut aussi
// redéclarer localement, dans chaque reslice, le sous-slicing fermé de "code.coding" déjà présent sur le slice
// natif "savoirFaire" (ni SUSHI ni le mécanisme de reslicing ne le reportent automatiquement dans les reslices).
// Chaque facette porte un couple de codings : code.coding[typeSavoirFaire] fixé sur le code TRE-R04-TypeSavoirFaire
// correspondant (codes réellement récupérés depuis le serveur de terminologie ANS : S, C, CEX, OP, CAPA, PAC, DNQ,
// DEC) et code.coding[valeur] lié au value set ROR historique (JDV-J210, JDV-J232, etc.).
* qualification[savoirFaire] ^slicing.discriminator.type = #value
* qualification[savoirFaire] ^slicing.discriminator.path = "code.coding.where(system = 'https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire').code"
* qualification[savoirFaire] ^slicing.rules = #open
* qualification[savoirFaire] contains
    rorSpecialty 0..1 MS and
    rorCompetence 0..* MS and
    rorExclusiveCompetence 0..1 MS and
    rorSpecificOrientation 0..1 MS and
    rorExpertiseCapacity 0..1 MS and
    rorQualificationPAC 0..1 MS and
    rorNonQualifyingDESC 0..1 MS and
    rorSupplementaryExerciseRight 0..1 MS

* qualification[savoirFaire/rorSpecialty] ^short = "specialite (SavoirFaire) : Spécialité ordinale"
* qualification[savoirFaire/rorSpecialty].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire/rorSpecialty].code.coding ^slicing.discriminator.path = "$this"
* qualification[savoirFaire/rorSpecialty].code.coding ^slicing.rules = #closed
* qualification[savoirFaire/rorSpecialty].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[savoirFaire/rorSpecialty].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#S
* qualification[savoirFaire/rorSpecialty].code.coding[valeur] from $JDV-J210-SpecialiteOrdinale-ROR (required)

* qualification[savoirFaire/rorCompetence] ^short = "competence (SavoirFaire) : Compétence acquise par le professionnel"
* qualification[savoirFaire/rorCompetence].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire/rorCompetence].code.coding ^slicing.discriminator.path = "$this"
* qualification[savoirFaire/rorCompetence].code.coding ^slicing.rules = #closed
* qualification[savoirFaire/rorCompetence].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[savoirFaire/rorCompetence].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#C
* qualification[savoirFaire/rorCompetence].code.coding[valeur] from $JDV-J232-Competence-ROR (required)

* qualification[savoirFaire/rorExclusiveCompetence] ^short = "competenceExclusive (SavoirFaire) : Compétence exclusive"
* qualification[savoirFaire/rorExclusiveCompetence].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire/rorExclusiveCompetence].code.coding ^slicing.discriminator.path = "$this"
* qualification[savoirFaire/rorExclusiveCompetence].code.coding ^slicing.rules = #closed
* qualification[savoirFaire/rorExclusiveCompetence].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[savoirFaire/rorExclusiveCompetence].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#CEX
* qualification[savoirFaire/rorExclusiveCompetence].code.coding[valeur] from $JDV-J211-CompetenceExclusive-ROR (required)

* qualification[savoirFaire/rorSpecificOrientation] ^short = "orientationParticuliere (SavoirFaire) : Orientation particulière"
* qualification[savoirFaire/rorSpecificOrientation].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire/rorSpecificOrientation].code.coding ^slicing.discriminator.path = "$this"
* qualification[savoirFaire/rorSpecificOrientation].code.coding ^slicing.rules = #closed
* qualification[savoirFaire/rorSpecificOrientation].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[savoirFaire/rorSpecificOrientation].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#OP
* qualification[savoirFaire/rorSpecificOrientation].code.coding[valeur] from $JDV-J212-OrientationParticuliere-ROR (required)

* qualification[savoirFaire/rorExpertiseCapacity] ^short = "capacite (SavoirFaire) : Capacité de médecine"
* qualification[savoirFaire/rorExpertiseCapacity].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire/rorExpertiseCapacity].code.coding ^slicing.discriminator.path = "$this"
* qualification[savoirFaire/rorExpertiseCapacity].code.coding ^slicing.rules = #closed
* qualification[savoirFaire/rorExpertiseCapacity].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[savoirFaire/rorExpertiseCapacity].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#CAPA
* qualification[savoirFaire/rorExpertiseCapacity].code.coding[valeur] from $JDV-J213-CapaciteSavoirFaire-ROR (required)

* qualification[savoirFaire/rorQualificationPAC] ^short = "qualificationPAC (SavoirFaire) : Qualification de praticien adjoint contractuel"
* qualification[savoirFaire/rorQualificationPAC].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire/rorQualificationPAC].code.coding ^slicing.discriminator.path = "$this"
* qualification[savoirFaire/rorQualificationPAC].code.coding ^slicing.rules = #closed
* qualification[savoirFaire/rorQualificationPAC].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[savoirFaire/rorQualificationPAC].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#PAC
* qualification[savoirFaire/rorQualificationPAC].code.coding[valeur] from $JDV-J214-QualificationPAC-ROR (required)

* qualification[savoirFaire/rorNonQualifyingDESC] ^short = "DESCNonQualifiant (SavoirFaire) : Diplôme d'études spécialisées complémentaires (DESC)"
* qualification[savoirFaire/rorNonQualifyingDESC].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire/rorNonQualifyingDESC].code.coding ^slicing.discriminator.path = "$this"
* qualification[savoirFaire/rorNonQualifyingDESC].code.coding ^slicing.rules = #closed
* qualification[savoirFaire/rorNonQualifyingDESC].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[savoirFaire/rorNonQualifyingDESC].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#DNQ
* qualification[savoirFaire/rorNonQualifyingDESC].code.coding[valeur] from $JDV-J215-DESCnonQualifiant-ROR (required)

* qualification[savoirFaire/rorSupplementaryExerciseRight] ^short = "droitExerciceComplémentaire (SavoirFaire) : Droit d'exercice complémentaire du professionnel"
* qualification[savoirFaire/rorSupplementaryExerciseRight].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire/rorSupplementaryExerciseRight].code.coding ^slicing.discriminator.path = "$this"
* qualification[savoirFaire/rorSupplementaryExerciseRight].code.coding ^slicing.rules = #closed
* qualification[savoirFaire/rorSupplementaryExerciseRight].code.coding contains
    typeSavoirFaire 1..1 MS and
    valeur 1..1 MS
* qualification[savoirFaire/rorSupplementaryExerciseRight].code.coding[typeSavoirFaire] = $TRE-R04-TypeSavoirFaire#DEC
* qualification[savoirFaire/rorSupplementaryExerciseRight].code.coding[valeur] from $JDV-J216-DroitExerciceCompl-ROR (required)

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

* telecom[mailbox-mss] -> "boiteLettreMSS.adresseMSS" "Similaire aux accès de metadonnee.identifiant"
* telecom[mailbox-mss].value -> "adresseTelecom" "cf. boiteLettreMSS"

* qualification[exercicePro].code.coding[profession] -> "profession" "Similaire aux accès de metadonnee.identifiant"

* qualification[savoirFaire/rorSpecialty] -> "SavoirFaire.specialite" "Similaire aux accès de metadonnee.identifiant"
* qualification[savoirFaire/rorCompetence] -> "SavoirFaire.competence" "Similaire aux accès de metadonnee.identifiant"
* qualification[savoirFaire/rorExclusiveCompetence] -> "SavoirFaire.competenceExclusive" "Similaire aux accès de metadonnee.identifiant"
* qualification[savoirFaire/rorSpecificOrientation] -> "SavoirFaire.orientationParticuliere" "Similaire aux accès de metadonnee.identifiant"
* qualification[savoirFaire/rorExpertiseCapacity] -> "SavoirFaire.capacite" "Similaire aux accès de metadonnee.identifiant"
* qualification[savoirFaire/rorQualificationPAC] -> "SavoirFaire.qualificationPAC" "Similaire aux accès de metadonnee.identifiant"
* qualification[savoirFaire/rorNonQualifyingDESC] -> "SavoirFaire.DESCNonQualifiant" "Similaire aux accès de metadonnee.identifiant"
* qualification[savoirFaire/rorSupplementaryExerciseRight] -> "SavoirFaire.droitExerciceComplémentaire" "Similaire aux accès de metadonnee.identifiant"
