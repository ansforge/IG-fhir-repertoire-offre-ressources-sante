Profile: RORPerson
Parent: AsPersonProfile
Id: ror-person
Description: "Profil créé dans le cadre du ROR pour décrire les données d'identité civile pérennes d'une personne physique qui exerce en tant que professionnel de santé"

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
* name MS
* name.family MS
* name.given MS
* name.prefix 0..1 MS
* name.prefix from $JDV-J207-Civilite-ROR (extensible)
* name.prefix ^short = "Civilite (PersonnePhysique) : Civilite de la personne physique"

/* Références */
* link MS
* link[as-practitioner-exercice-professionnel] MS
* link[as-practitioner-exercice-professionnel].target only Reference(RORPractitionerProfile)
* link[as-practitioner-exercice-professionnel] ^short = "Référence vers l'exercice professionnel (RORPractitionerProfile) de la personne"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORMetaCreationDate named ror-meta-creation-date 1..1 MS
* extension[ror-meta-creation-date] ^short = "dateCreation (Metadonnee)"

Mapping:  ConceptMetier_RORPerson
Source:   RORPerson
Target:   "https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf"
Id:       specmetier-to-RORPerson
Title:    "PersonnePhysique du Modèle exposition ROR V3"
* -> "PersonnePhysique" "Profils ayant Accès"

* id -> "metadonnee.identifiant" "Profil 1,
Profil 2 si uniteSensible = Non,
Profil 3 si champ d'activité de l'offre = MS et si uniteSensible = Non,
Profil4,
Profil5 si uniteSensible = Non,
Profil 0 uniquement si champs d'activité de l'offre 'Ville'  "
* meta -> "metadonnee" "Similaire aux accès de metadonnee.identifiant"
* meta.lastUpdated -> "dateMiseJour" "Similaire aux accès de metadonnee.identifiant"
* meta.tag[codeRegion] -> "regionSource" "Similaire aux accès de metadonnee.identifiant"

* name.prefix -> "PersonnePhysique.civilite" "Similaire aux accès de metadonnee.identifiant"
