Profile: RORLocation
Parent: Location
Id: ror-location
Description: "Profil créé dans le cadre du ROR pour décrire l'espace disposant d'un ensemble de ressources pour réaliser une offre." 

/* Données techniques */
* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "url"
* meta.tag ^slicing.rules = #open
* meta.tag ^slicing.description = "Slicing pour gérer le code région définissant la région source des données"
* meta.tag ^slicing.ordered = false
* meta.tag contains
    codeRegion 0..1
* meta.tag[codeRegion] from $JDV_J237-RegionOM-ROR (required)

/* Données fonctionnelles */
* name ^short = "nom (LieuRealisationOffre) : Nom, exprimé sous la forme de texte, du lieu"
* description ^short = "description (LieuRealisationOffre) : Description textuelle du lieu, indiquant comment l'atteindre"
* type 0..1
* type ^short = "fonctionLieu (LieuRealisationOffre) : La fonction correspond à la destination d'usage du lieu"
* type from $JDV-J198-FonctionLieu-ROR (required)

* identifier 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    idExterneSynchro 0..1 and
    idLocation 0..1
* identifier[idExterneSynchro] ^short = "idExterneSynchro (LieuRealisationOffre) : Identifiant défini par le porteur d’offre pour la zone d’hébergement des lits" 
* identifier[idExterneSynchro].type 1..1
* identifier[idExterneSynchro].type = $TRE-XXX-TypeIdentifiantRessourceOperationnelle#26
* identifier[idLocation] ^short = "identifiant (LieuRealisationOffre) : Identifiant fonctionnel du lieu"
* identifier[idLocation].type 1..1
* identifier[idLocation].type = $TRE-XXX-TypeIdentifiantRessourceOperationnelle#25

* telecom 0..*
* telecom ^short = "telecommunication (LieuRealisationOffre) : Adresse(s) de télécommunication du lieu"
* telecom.value 1..1
* telecom.value ^short = "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communica"
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains 
    RORTelecomCommunicationChannel named ror-telecom-communication-channel 1..1 and
    RORTelecomUsage named ror-telecom-usage 0..1 and
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1
* telecom.extension[ror-telecom-communication-channel] ^short = "canal (Telecommunication) : Code spécifiant le canal ou la manière dont s'établit la communication "
* telecom.extension[ror-telecom-usage] ^short = "utilisation (Telecommunication) : Utilisation du canal de communication "
* telecom.extension[ror-telecom-confidentiality-level] ^short = "niveauConfidentialite (Telecommunication) : Niveau de restriction de l'accès aux attributs de la classe Télécommunication"

* address ^short = "adresse (LieuRealisationOffre) : Adresse géopostale du lieu"
* address.postalCode ^short = "codePostal (Adresse) : Code Postal ou code postal spécifique CEDEX"
* address.city ^short = "localité (Adresse) : Localité ou Libellé du bureau distributeur CEDEX"
* address.line.extension ^slicing.discriminator.type = #value
* address.line.extension ^slicing.discriminator.path = "url"
* address.line.extension ^slicing.rules = #open
* address.line.extension contains
    iso21090-ADXP-careOf named careOf 0..1 and
    iso21090-ADXP-additionalLocator named additionalLocator 0..1 and
    iso21090-ADXP-houseNumber named houseNumber 0..1 and
    iso21090-ADXP-buildingNumberSuffix named buildingNumberSuffix 0..1 and
    iso21090-ADXP-streetNameType named streetNameType 0..1 and
    iso21090-ADXP-streetNameBase named streetNameBase 0..1 and
    iso21090-ADXP-streetNameBase named streetNameHamlet 0..1 and
    iso21090-ADXP-postBox named postalBox 0..1
* address.line.extension[careOf] ^short = "pointRemise (Adresse) : Lieu où le destinataire prend possession de son courrier"
* address.line.extension[additionalLocator] ^short = "complementPointGeographique (Adresse) : Un complément de l'adresse au point géographique"
* address.line.extension[houseNumber] ^short = "numeroVoie (Adresse) : Un numéro dans la voie"
* address.line.extension[buildingNumberSuffix] ^short = "extension (Adresse) : Extension ou indice de répétition"
* address.line.extension[streetNameType] ^short = "typeVoie (Adresse) : Type de voie"
* address.line.extension[streetNameType].valueString from $JDV-J219-TypeVoie-ROR (required)
* address.line.extension[streetNameBase] ^short = "libelleVoie (Adresse) : Appellation qui est donnée à la voie par les municipalités"
* address.line.extension[streetNameHamlet] ^short = "lieuDit (Adresse) : Lieu qui porte un nom rappelant une particularité topographique ou historique"
* address.line.extension[postalBox] ^short = "mentionDistribution (Adresse) : Mentions particulières de distribution"

* position ^short = "coordonneeGeographique (LieuRealisationOffre) : Coordonnées géographiques du lieu"
* position.latitude ^short = "latitude (CoordonneeGeographique) : Une mesure de la distance angulaire nord ou sud depuis l'équateur jusqu'au parallèle du spécifique"
* position.longitude ^short = "longitude(CoordonneeGeographique) : Une mesure de la distance angulaire est ou ouest depuis le méridien de Greenwich jusqu'au méridien du point spécifique"
* position.extension ^slicing.discriminator.type = #value
* position.extension ^slicing.discriminator.path = "url"
* position.extension ^slicing.rules = #open
* position.extension contains RORGeolocationLocation named ror-location-geolocation 0..1
* position.extension[ror-location-geolocation] ^short = "systemeGeodesique : Une identification du système de référence fixant les règles de mesure des positions géographiques (CoordonneeGeographique)"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORLocationStatus named ror-location-status 0..1 and
    RORCommuneCog named ror-commune-cog 1..1 and
    RORLocationEquipment named ror-location-equipment 0..* and
    RORLocationEquipmentLimit named ror-location-equipment-limit 0..* and
    RORLocationResidentialCapacity named ror-location-residential-capacity 0..* and
    RORLocationSupportedCapacity named ror-location-supported-capacity 0..*
* extension[ror-location-status] ^short = "statut (LieuRealisationOffre) : Indique si le lieu est opérationnel, fermé temporairement ou fermé définitivement"
* extension[ror-commune-cog] ^short = "communeCog (LieuRealisationOffre) : Code officiel géographique (COG) de la commune dans laquelle le lieu est situé"
* extension[ror-location-equipment] ^short = "EquipementSpecifique : Ressource matérielle discriminante pour la réalisation d'une prestation"
* extension[ror-location-equipment-limit] ^short = "LimiteCaracteristiqueEquipement : limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation"
* extension[ror-location-residential-capacity] ^short = "CapaciteHabitation : type d'habitation adapté à la réalisation d'une offre"
* extension[ror-location-supported-capacity] ^short = "CapacitePriseCharge :  + CapaciteAccueilOperationnelle"