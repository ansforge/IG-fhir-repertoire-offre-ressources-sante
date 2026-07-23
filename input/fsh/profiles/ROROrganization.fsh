Profile: ROROrganization
Parent: AsOrganizationProfile
Id: ror-organization
Description: "Profil créé dans le cadre du ROR pour décrire les entités juridiques (EJ) et entités géographiques (EG) du domaine sanitaire, médico-social et social immatriculées dans le FINESS"

/* Références*/
* partOf only Reference(fr-core-organization or AsOrganizationProfile or ROROrganization)
* partOf MS

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
* name 0..1
* name ^short = "raisonSociale (EJ) ou denominationEG (EG) - Remarque : Décalage provisoire de la cardinalité par rapport au modèle d'exposition (1..1)"
* name.extension ^slicing.discriminator.type = #value
* name.extension ^slicing.discriminator.path = "url"
* name.extension ^slicing.rules = #open
* name.extension contains
    ROROrganizationAdditionalName named ror-organization-additional-name 0..1
* name.extension[ror-organization-additional-name] ^short = "complementRaisonSociale (EJ) ou complementDenominationEG (EG)"
* alias MS
* alias 0..1
* alias ^short = "nomOperationnel (EG) : l’appellation communément utilisée par les acteurs de santé pour désigner l'entité géographique"

// idNatSt, finess, siren, siret et rppsRang sont déjà slicés et fixés (identifier.type) par AsOrganizationProfile
* identifier MS
* identifier[idNatSt] MS
* identifier[idNatSt] ^short = "idNatstruct (EJ + EG) : Identification nationale définie dans le CI-SIS"

* identifier[finess] MS
* identifier[finess] ^short = "numFINESS (EJ + EG) : Numéro FINESS"

* identifier[siren] MS
* identifier[siren] ^short = "numSIREN (EJ) : numéro unique d'identification attribué à chaque entreprise par l'INSEE"

* identifier[siret] MS
* identifier[siret] ^short = "numSIRET (EG) : numéro unique d'identification, attribué par l'INSEE, à chaque entité géographique"
* identifier[siret] ^comment = "https://mos.esante.gouv.fr/6.html#_4d544200-4d26-4cc5-8294-c862458f60d8"

* identifier[rppsRang] MS
* identifier[rppsRang] ^short = "numEJ_RPPS_ADELI_Rang ou numEG_RPPS_ADELI_Rang"

* identifier ^slicing.rules = #open
* identifier contains
    adeliRang 0..1 MS
* identifier[adeliRang] ^short = "numEJ_RPPS_ADELI_Rang ou numEG_RPPS_ADELI_Rang"
* identifier[adeliRang].type 1..1 MS
* identifier[adeliRang].type = $TRE-G07-TypeIdentifiantStructure#0
* identifier[adeliRang].system = "https://adelirang.esante.gouv.fr"

// statutJuridiqueINSEE et sphParticipation sont déjà slicés par AsOrganizationProfile (via l'extension as-ext-organization-types)
* type MS
* type contains
    categorieEtablissement 0..1 MS
* type[statutJuridiqueINSEE] MS
* type[statutJuridiqueINSEE] ^short = "statutJuridique (EJ) : Situation juridique de l’établissement"
* type[statutJuridiqueINSEE] from $JDV-J199-StatutJuridique-ROR (required)
* type[categorieEtablissement] ^short = "categorieEG (EG) : Cadre réglementaire dans lequel s'exerce l'activité de l'entité géographique"
* type[categorieEtablissement] from $JDV-J55-CategorieEG-ROR (required)
* type[sphParticipation] MS
* type[sphParticipation] ^short = "modaliteParticipationSPH (EG) : Modalités de participation au service public hospitalier"
* type[sphParticipation] from $JDV-J202-ESPIC-ROR (required)

* contact.name MS
* contact.name ^short  = "Nom (Contact) : Un nom de la personne ou du service à contacter"
* contact.extension ^slicing.discriminator.type = #value
* contact.extension ^slicing.discriminator.path = "url"
* contact.extension ^slicing.rules = #open
* contact.extension contains
    RORContactFunctionContact named ror-contact-function-contact 0..1 MS and
    RORContactDescription named ror-contact-description 0..1 MS and
    RORContactConfidentialityLevel named ror-contact-confidentiality-level 1..1 MS
* contact.extension[ror-contact-function-contact] ^short = "fonctionContact (Contact) : Un titre, une position ou une fonction de la personne assurant le contact au sein de l'organisation"
* contact.extension[ror-contact-description] ^short = "description (Contact) : Une description du contact"
* contact.extension[ror-contact-confidentiality-level] ^short = "niveauConfidentialite (Contact) : Niveau de restriction de l'accès aux attributs de la classe Contact"
* contact.purpose MS
* contact.purpose ^short = "natureContact (Contact) : Un service ou un guichet assurant le contact au sein de l'organisation"
* contact.purpose from $JDV-J221-NatureContact-ROR (required)
* contact.telecom.value 1..1 MS
* contact.telecom.value ^short = "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication"
* contact.telecom.extension ^slicing.discriminator.type = #value
* contact.telecom.extension ^slicing.discriminator.path = "url"
* contact.telecom.extension ^slicing.rules = #open
* contact.telecom.extension contains
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1 MS and
    RORTelecomUsage named ror-telecom-usage 0..1 MS and
    RORTelecomCommunicationChannel named ror-telecom-communication-channel 1..1 MS
* contact.telecom.extension[ror-telecom-communication-channel] ^short = "Canal (Telecommunication) : Code spécifiant le canal ou la manière dont s'établit la communication"
* contact.telecom.extension[ror-telecom-usage] ^short = "utilisation (Telecommunication) : Utilisation du canal de communication"
* contact.telecom.extension[ror-telecom-confidentiality-level] ^short = "niveauConfidentialite (Telecommunication) : Niveau de restriction de l'accès aux attributs de la classe Télécommunication"

* address 0..1 MS
* address ^short = "adresseEJ : Adresse géopostale de l'entité juridique ou adresseEG : Adresse(s) géopostale(s) de l'entité géographique."
* address.postalCode MS
* address.postalCode ^short = "codePostal (Adresse) : Code Postal ou code postal spécifique CEDEX"
* address.city MS
* address.city ^short = "localité (Adresse) : Localité ou Libellé du bureau distributeur CEDEX"
* address.extension[inseeCode].valueCoding from $JDV-J124-Commune (required)
* address.extension contains
    $geolocation named ror-organization-geolocation 0..1 MS
* address.extension[ror-organization-geolocation] ^short = "extension pour définir les données de géolocalisation de l'EG"
* address.extension[ror-organization-geolocation].extension contains
    RORConfidenceGeolocation named ror-confidence-geolocation 0..1 MS
// careOf, additionalLocator, houseNumber, buildingNumberSuffix, streetNameType, streetNameBase, lieuDit
// sont déjà slicés par AsOrganizationProfile (via FRCoreOrganizationEtablissementProfile) ; postalBox est ajouté par le ROR
* address.line.extension contains
    iso21090-ADXP-postBox named postalBox 0..1 MS
* address.line.extension[careOf] ^short = "pointRemise (Adresse)"
* address.line.extension[additionalLocator] ^short = "complementPointGeographique (Adresse)"
* address.line.extension[houseNumber] ^short = "numeroVoie(Adresse)"
* address.line.extension[buildingNumberSuffix] ^short = "(Adresse)"
* address.line.extension[streetNameType] ^short = "typeVoie (Adresse)"
* address.line.extension[streetNameType].valueString from $JDV-J219-TypeVoie-ROR (required)
* address.line.extension[postalBox] ^short = "mentionDistribution (Adresse)"
* address.line.extension[streetNameBase] ^short = "libelleVoie (Adresse)"
* address.line.extension[lieuDit] ^short = "lieuDit (Adresse)"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ROROrganizationPrice named ror-organization-price 0..* MS and
    RORTerritorialDivision named ror-territorial-division 0..* MS and
    ROROrganizationFinancialHelpType named ror-organization-financial-help-type 0..* MS and
    ROROrganizationAccomodationFamily named ror-organization-accomodation-family 0..1 MS and
    ROROrganizationNbPermanentSocialHelpPlace named ror-organization-nb-permanent-social-help-place 0..1 MS and
    ROROrganizationNbTemporarySocialHelpPlace named ror-organization-nb-temporary-social-help-place 0..1 MS and
    ROROrganizationAccessibilityLocation named ror-organization-accessibility-location 0..1 MS and
    ROROrganizationLevelRecourseORSAN named ror-organization-level-recourse-orsan 0..1 MS and
    ROROrganizationDropZone named ror-organization-drop-zone 0..1 MS and
    ROROrganizationCreationDate named ror-organization-creation-date 0..1 MS and
    ROROrganizationClosingType named ror-organization-closing-type 0..1 MS and
    organization-period named organization-period 0..1 MS and
    RORMetaComment named ror-meta-comment 0..1 MS and
    RORMetaCreationDate named ror-meta-creation-date 1..1 MS and
    RORMetaQuestionnaireUsedAsATemplate named ror-meta-questionnaire-used-as-a-template 0..1 MS and
    ROROrganizationComment named ror-organization-comment 0..1 MS
* extension[ror-organization-price] ^short = "Tarif"
* extension[ror-territorial-division] ^short = "territoireSante (EG) : Territoire(s) de santé où est située l'entité géographique."
* extension[ror-territorial-division].extension[typeTerritorialDivision].valueCodeableConcept = https://mos.esante.gouv.fr/NOS/TRE_R201-TypeDivisionTerritoriale/FHIR/TRE-R201-TypeDivisionTerritoriale#4
* extension[ror-organization-financial-help-type] ^short = "aideFinanciere (EG) : Aide financière pour laquelle l'EG dispose d'une habilitation ou conventionnement"
* extension[ror-organization-accomodation-family] ^short = "hebergementFamille (EG) : Indique si l'établissement peut héberger les familles des personnes prises en charge"
* extension[ror-organization-nb-permanent-social-help-place] ^short = "nbPlaceAideSocialTemporaire (EG) : nombre de places temporaires dédiées à l'aide sociale dans l'établissement"
* extension[ror-organization-nb-temporary-social-help-place] ^short = "nbPlaceAideSocialPermanent (EG) : nombre de places permanentes dédiées à l'aide sociale dans l'établissement"
* extension[ror-organization-accessibility-location] ^short = "accessibiliteLieu (EG) : Précise dans quelle mesure les locaux sont conformes aux dispositions règlementaires relatives à l’accessibilité des établissements recevant du public"
* extension[ror-organization-level-recourse-orsan] ^short = "niveauRecoursORSAN (EG) : Hiérarchisation fonctionnelle de la mobilisation des établissements pour accueillir les patients après régulation par le SAMU"
* extension[ror-organization-drop-zone] ^short = "zonePoser (EG) : Précise l’existence d’une zone de poser pour hélicoptère sur le site concerné"
* extension[ror-organization-creation-date] ^short = "dateCreation (EJ) : Date de création de l'entité juridique"
* extension[ror-organization-closing-type] ^short = "typeFermeture (EJ + EG) : Le type de fermeture d'un niveau organisationnel indique la temporalité de la fermeture."
* extension[organization-period] ^short = "dateOuverture (EG) + dateFermeture (EJ + EG)"
* extension[ror-meta-comment] ^short = "commentaire (Metadonnee)"
* extension[ror-meta-creation-date] ^short = "dateCreation (Metadonnee)"
* extension[ror-meta-questionnaire-used-as-a-template] ^short = "modeleSaisie (Metadonnee) : Référence canonique vers le questionnaire utilisé comme modèle de saisie, incluant obligatoirement la version sous la forme url|version. Exemple : https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/ror-questionnaire-2042|1"
* extension[ror-organization-comment] ^short = "commentaire (EG) : Commentaire qui permet à la structure de donner des informations complémentaires"

Mapping:  ConceptMetier_ROROrganization_EJ
Source:   ROROrganization
Target:   "https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf"
Id:       specmetier-to-ROROrganization-ej
Title:    "EntiteJuridique du Modèle exposition ROR V3"
* -> "EntiteJuridique" "Profils ayant Accès"

* id -> "metadonnee.identifiant" "Tous les profils"
* meta -> "metadonnee" "Similaire aux accès de metadonnee.identifiant"
* meta.lastUpdated -> "dateMiseJour" "Similaire aux accès de metadonnee.identifiant"
* meta.tag[codeRegion] -> "regionSource" "Similaire aux accès de metadonnee.identifiant"

* extension[RORMetaCreationDate] -> "metadonnee.dateCreation" "Similaire aux accès de metadonnee.identifiant"
* extension[RORMetaQuestionnaireUsedAsATemplate] -> "metadonnee.modeleSaisie" "Similaire aux accès de metadonnee.identifiant"

* identifier[idNatSt] -> "idNatstruct" "Similaire aux accès de metadonnee.identifiant"
* identifier[finess] -> "numFINESS" "Similaire aux accès de metadonnee.identifiant"
* identifier[siren] -> "numSIREN" "Similaire aux accès de metadonnee.identifiant"
* identifier[rppsRang] -> "numEJ_RPPS_ADELI_Rang" "Similaire aux accès de metadonnee.identifiant"
* identifier[adeliRang] -> "numEJ_RPPS_ADELI_Rang" "Similaire aux accès de metadonnee.identifiant"

* name -> "raisonSociale" "Similaire aux accès de metadonnee.identifiant"
* name.extension[ror-organization-additional-name] -> "complementRaisonSociale" "Similaire aux accès de metadonnee.identifiant"

* type[statutJuridiqueINSEE] -> "statutJuridique" "Similaire aux accès de metadonnee.identifiant"

* contact -> "contact" "Profil 1,
Profil 2 et Profil 5 si niveau de confidentialité du contact différent de 'très restreint'
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact différent de 'très restreint', pour les autres champs d'activité, uniquement accès si niveau de confidentialité  du contact= 'public'
Profil 4 si niveau de confidentialité  du contact= 'public'
Profil 0 si niveau de confidentialité  du contact= 'public'  "
* contact.name -> "nom" "cf contact"
* contact.purpose -> "natureContact" "cf contact"
* contact.telecom -> "telecommunication" "Profil 1,
Profil 2 et Profil 5 si niveaux de confidentialité du contact et du contact.telecommunication différents de 'très restreint'
Profil 3 si champ d'activité MS et  si niveaux de confidentialité du contact et du contact.telecommunication différents de 'très restreint', sinon, pour les autres champs d'activité, uniquement accès si niveau de confidentialité  du contact= 'public'
Profil 4 si niveaux de confidentialité du contact et du contact.telecommunication = 'public'
Profil 0 si niveaux de confidentialité du contact et du contact.telecommunication = 'public'  "
* contact.telecom.value -> "adresseTelecom" "cf contact.telecom"

* address -> "adresseEJ" "Similaire aux accès de metadonnee.identifiant"
* address.city -> "localite" "Similaire aux accès de metadonnee.identifiant"
* address.postalCode -> "codePostal" "Similaire aux accès de metadonnee.identifiant"
* address.line.extension[careOf] -> "pointRemise" "Similaire aux accès de metadonnee.identifiant"
* address.line.extension[additionalLocator] -> "complementPointGeographique" "Similaire aux accès de metadonnee.identifiant"
* address.line.extension[houseNumber] -> "numeroVoie" "Similaire aux accès de metadonnee.identifiant"
* address.line.extension[buildingNumberSuffix].valueString -> "extension" "Similaire aux accès de metadonnee.identifiant"
* address.line.extension[streetNameType].valueString -> "typeVoie" "Similaire aux accès de metadonnee.identifiant"
* address.line.extension[streetNameBase].valueString -> "libelleVoie" "Similaire aux accès de metadonnee.identifiant"
* address.line.extension[lieuDit].valueString -> "lieuDit" "Similaire aux accès de metadonnee.identifiant"
* address.line.extension[postalBox].valueString -> "mentionDistribution" "Similaire aux accès de metadonnee.identifiant"

* extension[ROROrganizationCreationDate] -> "dateCreation" "Similaire aux accès de metadonnee.identifiant"
* extension[OrgPeriod] -> "dateFermeture (uniquement)" "Similaire aux accès de metadonnee.identifiant"
* extension[ROROrganizationClosingType] -> "typeFermeture" "Similaire aux accès de metadonnee.identifiant"

Mapping:  ConceptMetier_ROROrganization_EG
Source:   ROROrganization
Target:   "https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf"
Id:       specmetier-to-ROROrganization-eg
Title:    "EntiteGeographique du Modèle exposition ROR V3"
* -> "EntiteGeographique" "Profils ayant Accès"

* id -> "metadonnee.identifiant" "Tous les profils"
* meta -> "metadonnee" "Similaire aux accès de metadonnee.identifiant"
* meta.lastUpdated -> "dateMiseJour" "Similaire aux accès de metadonnee.identifiant"
* meta.tag[codeRegion] -> "regionSource" "Similaire aux accès de metadonnee.identifiant"

* extension[RORMetaCreationDate] -> "metadonnee.dateCreation" "Similaire aux accès de metadonnee.identifiant"
* extension[RORMetaQuestionnaireUsedAsATemplate] -> "metadonnee.modeleSaisie" "Similaire aux accès de metadonnee.identifiant"

* identifier[idNatSt] -> "idNatstruct" "Similaire aux accès de metadonnee.identifiant"
* identifier[finess] -> "numFINESS" "Similaire aux accès de metadonnee.identifiant"
* identifier[siren] -> "numSIREN" "Similaire aux accès de metadonnee.identifiant"
* identifier[siret] -> "numSIRET" "Similaire aux accès de metadonnee.identifiant"
* identifier[rppsRang] -> "numEG_RPPS_ADELI_Rang" "Similaire aux accès de metadonnee.identifiant"
* identifier[adeliRang] -> "numEG_RPPS_ADELI_Rang" "Similaire aux accès de metadonnee.identifiant"

* alias -> "nomOpérationnel" "Similaire aux accès de metadonnee.identifiant"
* name -> "denominationEG" "Similaire aux accès de metadonnee.identifiant"
* name.extension[ror-organization-additional-name] -> "complementDenominationEG" "Similaire aux accès de metadonnee.identifiant"

* type[categorieEtablissement] -> "categorieEG" "Similaire aux accès de metadonnee.identifiant"
* type[sphParticipation] -> "modaliteParticipationSPH" "Similaire aux accès de metadonnee.identifiant"

* contact -> "contact" "Profil 1,
Profil 2 et Profil 5 si niveau de confidentialité du contact différent de 'très restreint'
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact différent de 'très restreint', pour les autres champs d'activité,  uniquement accès si niveau de confidentialité  du contact= 'public'
Profil 4 si niveau de confidentialité  du contact= 'public'
Profil 0 si niveau de confidentialité  du contact= 'public'  "
* contact.name -> "nom" "cf contact"
* contact.purpose -> "natureContact" "cf contact"
* contact.telecom -> "telecommunication" "Profil 1,
Profil 2 et Profil 5 si niveaux de confidentialité du contact et du contact.telecommunication différents de 'très restreint'
Profil 3 si champ d'activité MS et  si niveaux de confidentialité du contact et du contact.telecommunication différents de 'très restreint',  sinon, pour les autres champs d'activité, uniquement accès si niveau de confidentialité  du contact= 'public'
Profil 4 si niveaux de confidentialité du contact et du contact.telecommunication = 'public'
Profil 0 si niveaux de confidentialité du contact et du contact.telecommunication = 'public'  "
* contact.telecom.value -> "adresseTelecom" "cd contact.telecomunication"

* extension[ROROrganizationFinancialHelpType] -> "aideFinanciere" "Similaire aux accès de metadonnee.identifiant"
* extension[ROROrganizationAccomodationFamily] -> "hebergementFamille" "Similaire aux accès de metadonnee.identifiant"
* extension[ROROrganizationNbPermanentSocialHelpPlace] -> "nbPlaceAideSocialPermanent" "Similaire aux accès de metadonnee.identifiant"
* extension[ROROrganizationNbTemporarySocialHelpPlace] -> "nbPlaceAideSocialTemporaire" "Similaire aux accès de metadonnee.identifiant"
* extension[ROROrganizationAccessibilityLocation] -> "accessibiliteLieu" "Similaire aux accès de metadonnee.identifiant"
* extension[ROROrganizationLevelRecourseORSAN] -> "niveauRecoursORSAN" "Profil 1, Profil 4"
* extension[ROROrganizationDropZone] -> "zonePoser" "Profil 1, Profil 4"
* extension[ROROrganizationComment] -> "commentaire" "Similaire aux accès de metadonnee.identifiant"
* extension[OrgPeriod] -> "dateOuverture et dateFermeture" "Similaire aux accès de metadonnee.identifiant"
* extension[ROROrganizationClosingType] -> "typeFermeture" "Similaire aux accès de metadonnee.identifiant"
* extension[ROROrganizationPrice] -> "tarif" "Similaire aux accès de metadonnee.identifiant"
* extension[RORTerritorialDivision] -> "territoireSante" "Similaire aux accès de metadonnee.identifiant"
