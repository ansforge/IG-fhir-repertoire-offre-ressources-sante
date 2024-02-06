Profile: RORPractitioner
Parent: Practitioner
Id: ror-practitioner
Description: "Profil créée dans le cadre du ROR pour décrire les données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel"

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
* name.prefix from $JDV-J207-Civilite-ROR (extensible)
* name.prefix ^short = "Civilite (PersonnePhysique) : Civilite de la personne physique"
* identifier 1..1
* identifier ^short = "idNat_PS (Professionnel) : Identification nationale du professionnel définie par le CI-SIS"
* identifier.system = "urn:oid:1.2.250.1.71.4.2.1" //voir issue https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/100

* telecom 0..*
* telecom ^short = "boiteLettreMSS (Professionnel) : Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) au professionnel"
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

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORMetaCreationDate named ror-meta-creation-date 1..1
* extension[ror-meta-creation-date] ^short = "dateCreation (Metadonnee)"

Mapping:  ConceptMetier_RORPractitioner
Source:   RORPractitioner
Id:       specmetier-to-RORPractitioner
Title:    "Practitioner du Modèle exposition ROR V3"
* -> "Professionnel"

* id -> "metadonnee.identifiant"
* meta -> "metadonnee"
* meta.lastUpdated -> "dateMiseJour"
* meta.tag[codeRegion] -> "regionSource : JDV-J237-RegionOM-ROR"
* extension[ror-meta-creation-date] -> "metadonnee.dateCreation"

* identifier -> "idNat_PS"
* name.prefix -> "PersonnePhysique.civilite : JDV-J207-Civilite-ROR"

* telecom -> "boiteLettreMSS"
* telecom.value -> "adresseMSS.adresseTelecom"
* telecom.extension[ror-telecom-communication-channel] -> "adresseMSS.canal : JDV-J225-CanalCommunication-ROR"
* telecom.extension[ror-telecom-usage] -> "adresseMSS.utilisation"
* telecom.extension[ror-telecom-confidentiality-level] -> "adresseMSS.niveauConfidentialite : JDV-J222-NiveauConfidentialite-ROR"
