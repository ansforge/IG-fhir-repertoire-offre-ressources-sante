Profile: ROROrganization
Parent: $FrOrganization
Id: ror-organization
Description: "Profil créé dans le cadre du ROR"
* ^publisher = "ANS"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    //description 0..0 and
    ROROrganizationPrice named ror-organization-price 0..1 and
    $mailboxMSS named mailboxMSS 0.. and
    RORHealthcareServiceTerritorial named ror-healthcareservice-territorial 0.. and
    ROROrganizationFinancialHelpType named ror-organization-financial-help-type 0.. and
    ROROrganizationAccomodationFamily named ror-organization-accomodation-family 0.. and
    ROROrganizationNbPermanentSocialHelpPlace named ror-organization-nb-permanent-social-help-place 0.. and
    ROROrganizationNbTemporarySocialHelpPlace named ror-organization-nb-temporary-social-help-place 0.. and
    RORAccessibilityLocation named ror-accessibility-location 0.. and
    RORLevelRecourseORSAN named ror-level-recours-orsan 0.. and
    RORCareWithoutPatientApproval named ror-care-without-patient-approval 0.. and
    ROROrganizationPeriod named ror-organization-period 0.. and
    RORDropZone named ror-drop-zone 0..1
//* extension[mailboxMSS] only $mailboxMSS
//* extension[mailboxMSS] ^sliceName = "mailboxMSS"
//* extension[mailboxMSS] ^min = 0
* extension[mailboxMSS] ^isModifier = false
//* extension[ror-healthcareservice-territorial] only RORHealthcareServiceTerritorial
//* extension[ror-healthcareservice-territorial] ^sliceName = "ror-healthcareservice-territorial"
//* extension[ror-healthcareservice-territorial] ^min = 0
* extension[ror-healthcareservice-territorial] ^isModifier = false
* extension[ror-organization-price] ^isModifier = false
* extension[ror-drop-zone] ^isModifier = false
//* extension[ror-organization-financial-help-type] only ROROrganizationFinancialHelpType
//* extension[ror-organization-financial-help-type] ^sliceName = "ror-organization-financial-help-type"
//* extension[ror-organization-financial-help-type] ^min = 0
* extension[ror-organization-financial-help-type] ^isModifier = false
//* extension[ror-organization-accomodation-family] only ROROrganizationAccomodationFamily
//* extension[ror-organization-accomodation-family] ^sliceName = "ror-organization-accomodation-family"
//* extension[ror-organization-accomodation-family] ^min = 0
* extension[ror-organization-accomodation-family] ^isModifier = false
//* extension[ror-organization-nb-permanent-social-help-place] only ROROrganizationNbPermanentSocialHelpPlace
//* extension[ror-organization-nb-permanent-social-help-place] ^sliceName = "ror-organization-nb-permanent-social-help-place"
//* extension[ror-organization-nb-permanent-social-help-place] ^min = 0
* extension[ror-organization-nb-permanent-social-help-place] ^isModifier = false
//* extension[ror-organization-nb-temporary-social-help-place] only ROROrganizationNbTemporarySocialHelpPlace
//* extension[ror-organization-nb-temporary-social-help-place] ^sliceName = "ror-organization-nb-temporary-social-help-place"
//* extension[ror-organization-nb-temporary-social-help-place] ^min = 0
* extension[ror-organization-nb-temporary-social-help-place] ^isModifier = false
//* extension[ror-accessibility-location] only RORAccessibilityLocation
//* extension[ror-accessibility-location] ^sliceName = "ror-accessibility-location"
//* extension[ror-accessibility-location] ^min = 0
* extension[ror-accessibility-location] ^isModifier = false
//* extension[ror-level-recours-orsan] only RORLevelRecourseORSAN
//* extension[ror-level-recours-orsan] ^sliceName = "ror-level-recours-orsan"
//* extension[ror-level-recours-orsan] ^min = 0
* extension[ror-level-recours-orsan] ^isModifier = false
//* extension[ror-care-without-patient-approval] only RORCareWithoutPatientApproval
//* extension[ror-care-without-patient-approval] ^sliceName = "ror-care-without-patient-approval"
//* extension[ror-care-without-patient-approval] ^min = 0
* extension[ror-care-without-patient-approval] ^isModifier = false
//* extension[ror-organization-period] only ROROrganizationPeriod
//* extension[ror-organization-period] ^sliceName = "ror-organization-period"
//* extension[ror-organization-period] ^min = 0
* extension[ror-organization-period] ^isModifier = false
* identifier ..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    idNatStruct 1..1 and
    numFINESS 0..1 and
    numSIREN 0..1 and
    numRPPS 0..1 and
    numSIRET 0..1 and
    identifiantOI 0..1 and
    numADELI 0..1
* identifier[idNatStruct].type = $TRE-R254-TypeEvenement#40 (exactly)
* identifier[idNatStruct].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[numFINESS].type = $#1 (exactly)
* identifier[numFINESS].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[numSIREN].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[numSIREN].type ^fixedCodeableConcept.coding.system = "https://mos.esante.gouv.fr/NOS/JDV_J236-TypeIdentifiant-ROR/FHIR/JDV-J236-TypeIdentifiant-ROR/"
* identifier[numRPPS].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[numRPPS].type ^fixedCodeableConcept.coding.system = "https://mos.esante.gouv.fr/NOS/JDV_J236-TypeIdentifiant-ROR/FHIR/JDV-J236-TypeIdentifiant-ROR/"
* identifier[numSIRET].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[numSIRET].type ^fixedCodeableConcept.coding.system = "https://mos.esante.gouv.fr/NOS/JDV_J236-TypeIdentifiant-ROR/FHIR/JDV-J236-TypeIdentifiant-ROR/"
* identifier[identifiantOI].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[identifiantOI].type ^fixedCodeableConcept.coding.system = "https://mos.esante.gouv.fr/NOS/JDV_J236-TypeIdentifiant-ROR/FHIR/JDV-J236-TypeIdentifiant-ROR/"
* identifier[numADELI].type = $#0 (exactly)
* identifier[numADELI].type from $JDV-J236-TypeIdentifiant-ROR (required)
* type[organizationType] from $JDV-J203-TypeOrganisationInterne-ROR (required)
* type[organizationType] ^sliceName = "organizationType"
* type[organizationType] ^binding.description = "Binding JDV_J203-TypeOrganisationInterne-ROR"
* type contains
    //secteurActiviteRASS 0..0 and
    //categorieEtablissementRASS 0..0 and
    statutJuridiqueINSEE 0..1 and
    categorieEtablissement 0..1 and
    sphParticipation 0..1 and
    sousEnsembleAgregatStatutJuridique 0..1
* type[statutJuridiqueINSEE] from $JDV-J199-StatutJuridique-ROR (required)
* type[statutJuridiqueINSEE] ^binding.description = "Binding JDV_J199-StatutJuridique-ROR"
* type[categorieEtablissement] from $JDV-J55-CategorieEG-ROR (required)
* type[categorieEtablissement] ^binding.description = "Binding JDV_J55-CategorieEG-ROR"
* type[sphParticipation] from $JDV-J202-ESPIC-ROR (required)
* type[sphParticipation] ^binding.description = "Binding JDV_J202-ESPIC-ROR"
* type[sousEnsembleAgregatStatutJuridique] from $JDV-J200-SousEnsembleAgregatStatutJuridique-ROR (required)
* alias ..1
//* address only $fr-address-extended
* address.extension ^slicing.discriminator.type = #value
* address.extension ^slicing.discriminator.path = "url"
* address.extension ^slicing.rules = #open
* address.extension ^min = 0
* address.extension[inseeCode] ^sliceName = "inseeCode"
* address.extension[inseeCode] ^min = 0
* address.extension[inseeCode].value[x] from $JDV-J230-CommuneOM-ROR (required)
* address.extension[inseeCode].value[x] ^binding.description = "JDV_J102-1-CommuneOM-ROR"
* address.extension contains
    RORAddressName named ror-address-name 0..1 and
    RORAddressDescription named ror-address-description 0..1 and
    RORAddressStatus named ror-address-status 0..1 and
    RORAddressCalculatedDistance named ror-address-calculated-distance 0..1
* address.extension[ror-address-name] ^isModifier = false
* address.extension[ror-address-description] ^isModifier = false
* address.extension[ror-address-status] ^isModifier = false
* address.extension[ror-address-calculated-distance] ^isModifier = false
* address.line.extension ^slicing.discriminator.type = #value
* address.line.extension ^slicing.discriminator.path = "url"
* address.line.extension ^slicing.rules = #open
* address.line.extension contains
    iso21090-ADXP-streetNameType named streetNameType 0.. 
* address.line.extension[streetNameType] ^sliceName = "streetNameType"
* address.line.extension[streetNameType] ^min = 0
* address.line.extension[streetNameType].valueString from $JDV-J219-TypeVoie-ROR (required)
* address.line.extension[streetNameType].valueString ^sliceName = "valueString"
* address.line.extension[streetNameType].valueString ^binding.description = "JDV_J219-TypeVoie-ROR"
* address.line.extension contains ROROrganizationAddressLineISO21090AdxpLocality named ror-organization-address-line-iso-21090-adxp-locality 0..1
* address.line.extension[ror-organization-address-line-iso-21090-adxp-locality] ^isModifier = false
* partOf only Reference($FrOrganization or ROROrganization)
* contact.extension ^slicing.discriminator.type = #value
* contact.extension ^slicing.discriminator.path = "url"
* contact.extension ^slicing.rules = #open
* contact.extension ^min = 0
* contact.extension contains
    RORContactDescription named ror-contact-description 0..1 and
    RORContactFonctionContact named ror-contact-fonction-contact 0..1 and
    RORContactConfidentialityLevel named ror-contact-confidentiality-level 0..1
* contact.extension[ror-contact-description] ^isModifier = false
* contact.extension[ror-contact-fonction-contact] ^isModifier = false
* contact.extension[ror-contact-confidentiality-level] ^isModifier = false
* contact.purpose from $JDV-J221-NatureContact-ROR (required)
* contact.telecom.extension ^slicing.discriminator.type = #value
* contact.telecom.extension ^slicing.discriminator.path = "url"
* contact.telecom.extension ^slicing.rules = #open
* contact.telecom.extension ^min = 0
* contact.telecom.extension contains
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 0..1 and
    RORContactTelecomUsage named ror-contact-telecom-usage 0..1
* contact.telecom.extension[ror-telecom-confidentiality-level] ^isModifier = false
* contact.telecom.extension[ror-contact-telecom-usage] ^isModifier = false
* endpoint ..0