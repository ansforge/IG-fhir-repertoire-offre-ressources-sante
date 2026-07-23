Profile: RORCoreOrganizationUF
Parent: FRCoreOrganizationUFProfile
Id: ror-core-organization-uf
Description: "Profil créé dans le cadre du ROR pour décrire les unités fonctionnelles (UF) médicales, rattachées à un pôle/service ou à une entité géographique (EG)"

/* Références*/
* partOf only Reference(ROROrganization or RORInternalOrganization or RORCoreOrganizationUF)
* partOf MS
* partOf ^short = "Rattachement à l'entité géographique (EG), au pôle/service ou à l'UF parente"

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
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains
    identifierOI 0..1 MS
* identifier[identifierOI] ^short = "identifiantOI (OI) : Identifiant de l'organisation interne, unique et persistant au niveau national"
* identifier[identifierOI].type 1..1 MS
* identifier[identifierOI].type = $TRE-R345-TypeIdentifiantAutre#42
* identifier[identifierOI].system = "https://oi.esante.gouv.fr"

* name MS
* name ^short = "nomOI (OI) : Nom de l'unité fonctionnelle"

* type MS
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open
* type ^slicing.description = "Slicing pour distinguer les différents types de code portés par Organization.type"
* type contains
    OIType 0..1 MS
* type[OIType] ^short = "typeOI (OI) : Type d'organisation interne"
* type[OIType] from $JDV-J203-TypeOrganisationInterne-ROR (required)

* telecom MS
* telecom ^short = "boiteLettreMSS (OrganisationInterne) : Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l’organisation interne"
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
* telecom.extension[ror-telecom-confidentiality-level] ^short = "niveauConfidentialite (Telecommunication) : Niveau de restriction de l'accès aux attributs de la classe Télécommunication"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ROROrganizationReopeningDate named ror-organization-reopening-date 0..1 MS and
    ROROrganizationClosingType named ror-organization-closing-type 0..1 MS and
    organization-period named organization-period 0..1 MS and
    RORMetaComment named ror-meta-comment 0..1 MS and
    RORMetaCreationDate named ror-meta-creation-date 1..1 MS and
    RORMetaQuestionnaireUsedAsATemplate named ror-meta-questionnaire-used-as-a-template 0..1 MS
* extension[ror-organization-reopening-date] ^short = "datePrevisionnelleReouverture (OI) : Date prévisionnelle à partir de laquelle la prestation sera de nouveau assurée"
* extension[ror-organization-closing-type] ^short = "typeFermeture (OI) : Le type de fermeture d'un niveau organisationnel indique la temporalité de la fermeture."
* extension[organization-period] ^short = "dateOuverture (OI) + dateFermeture (OI)"
* extension[ror-meta-comment] ^short = "commentaire (Metadonnee)"
* extension[ror-meta-creation-date] ^short = "dateCreation (Metadonnee)"
* extension[ror-meta-questionnaire-used-as-a-template] ^short = "modeleSaisie (Metadonnee) : Référence canonique vers le questionnaire utilisé comme modèle de saisie, incluant obligatoirement la version sous la forme url|version. Exemple : https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/ror-questionnaire-2042|1"

Mapping:  ConceptMetier_RORCoreOrganizationUF_OI
Source:   RORCoreOrganizationUF
Target:   "https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf"
Id:       specmetier-to-RORCoreOrganizationUF-oi
Title:    "OrganisationInterne (UF) du Modèle exposition ROR V3"
* -> "OrganisationInterne" "Profils ayant Accès"

* id -> "metadonnee.identifiant" "Tous les profils"
* meta -> "metadonnee" "Similaire aux accès de metadonnee.identifiant"
* meta.lastUpdated -> "dateMiseJour" "Similaire aux accès de metadonnee.identifiant"
* meta.tag[codeRegion] -> "regionSource" "Similaire aux accès de metadonnee.identifiant"

* extension[RORMetaCreationDate] -> "metadonnee.dateCreation" "Similaire aux accès de metadonnee.identifiant"
* extension[RORMetaQuestionnaireUsedAsATemplate] -> "metadonnee.modeleSaisie" "Similaire aux accès de metadonnee.identifiant"

* identifier[identifierOI] -> "identifiantOI" "Similaire aux accès de metadonnee.identifiant"

* name -> "nomOI" "Similaire aux accès de metadonnee.identifiant"

* type[OIType] -> "typeOI" "Similaire aux accès de metadonnee.identifiant"

* telecom -> "boiteLettreMSS" "Similaire aux accès de metadonnee.identifiant"
* telecom.value -> "adresseTelecom" "cf boiteLettreMSS"

* extension[ROROrganizationReopeningDate] -> "datePrevisionnelleReouverture" "Similaire aux accès de metadonnee.identifiant"
* extension[OrgPeriod].valuePeriod.end -> "dateOuverture" "Similaire aux accès de metadonnee.identifiant"
* extension[ROROrganizationClosingType] -> "typeFermeture" "Similaire aux accès de metadonnee.identifiant"
