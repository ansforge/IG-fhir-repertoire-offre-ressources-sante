Alias: $example = http://example.org

Instance: ror-questionnaire-offre-de-ville
InstanceOf: RORQuestionnaire
Usage: #example
* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-questionnaire"
* version = "0.1"
* name = "FDS-offre-de-ville"
* title = "Cabinet de ville de médecine générale"
* identifier.use = #official
* identifier.value = "FDS-092"
* status = #draft
* experimental = true
* date = "2023-12-05"
* publisher = "ANS"
* description = "Dans le ROR, les cabinets de ville et les centres de santé prennent la forme d'une Entité Juridique, et d’un Établissement Géographique (EG), puis d’une unité élémentaire par professionnel. Ce document propose la description type d’un cabinet de ville de médecine générale."
* jurisdiction = urn:iso:std:iso:3166#FR "FRANCE"
* subjectType[0] = #HealthcareService
* subjectType[+] = #Organization
* subjectType[+] = #Practitioner
* subjectType[+] = #Location
* subjectType[+] = #PractitionerRole
* lastReviewDate = "2023-12-05"
* purpose = "Dans le ROR, l'offre de soins de ville comprend celle des cabinets et celle des centres de santé. Concernant les soins de médecine générale, le ROR référencera l’offre des médecins généralistes, qu’ils aient ou non une spécialité, dans leur cabinet, individuel ou de groupe, et les centres de santé."
* item[0].linkId = "TypeOffreInfoEJ"
* item[=].prefix = "1"
* item[=].text = "Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Information sur l'EJ"
* item[=].type = #group
/*Partie Entité Juridique*/
* item[=].item[0].linkId = "idNatstruct-EJ"
* item[=].item[=].prefix = "1.1"
* item[=].item[=].text = "IdNat_Struct (Identification nationale des Entités Juridiques définie dans le CI-SIS)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:idNatSt.value"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "numFINESS-EJ"
* item[=].item[=].prefix = "1.2"
* item[=].item[=].text = "Numéro FINESS de l'EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.identifier:finess.value"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "numSIREN-EJ"
* item[=].item[=].prefix = "1.3"
* item[=].item[=].text = "Numéro SIRET de l'EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.identifier:sirene.value"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "numEJ_RPPS_ADELI_Rang"
* item[=].item[=].prefix = "1.4"
* item[=].item[=].text = "Numéro EJ/RPPS/ADELIrang"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.identifier:rppsRang.value"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "raisonSociale-EJ"
* item[=].item[=].prefix = "1.5"
* item[=].item[=].text = "Raison sociale EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.name"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "complementRaisonSociale-EJ"
* item[=].item[=].prefix = "1.6"
* item[=].item[=].text = "Complément Raison sociale (EJ)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.name.extension:ror-organization-additional-name"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "statutJuridique-EJ"
* item[=].item[=].prefix = "1.7"
* item[=].item[=].text = "Statut juridique (EJ)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.type:statutJuridiqueINSEE"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J199-StatutJuridique-ROR/FHIR/JDV-J199-StatutJuridique-ROR"
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "sousEnsembleAgregatStatutJuridique"
* item[=].item[=].prefix = "1.8"
* item[=].item[=].text = "Ss Ens Agrégat Stat. Jur."
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.type:sousEnsembleAgregatStatutJuridique"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J200-SousEnsembleAgregatStatutJuridique-ROR/FHIR/JDV-J200-SousEnsembleAgregatStatutJuridique-ROR"
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "adresseEJ"
* item[=].item[=].prefix = "1.9"
* item[=].item[=].text = "Adresse de l’EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.address.text"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "dateCreation-EJ"
* item[=].item[=].prefix = "1.10"
* item[=].item[=].text = "Veuillez indiquer la date de création de l’EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:ror-organization-creation-date"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "dateFermeture-EJ"
* item[=].item[=].prefix = "1.11"
* item[=].item[=].text = "Veuillez indiquer la date de fermeture de l’EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.extension:organization-period.end"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "typeFermeture-EJ"
* item[=].item[=].prefix = "1.12"
* item[=].item[=].text = "Veuillez indiquer le type de fermeture de l’EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.extension:ror-organization-closing-type"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J201-TypeFermeture-ROR/FHIR/JDV-J201-TypeFermeture-ROR"
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
/*Partie Entité Géographique*/
* item[+].linkId = "TypeOffreInfoEG"
* item[=].prefix = "2"
* item[=].text = "Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Information sur l'EG"
* item[=].type = #group
* item[=].item[0].linkId = "idNatstruct-EG"
* item[=].item[=].prefix = "2.1"
* item[=].item[=].text = "IdNat_Struct (Identification nationale des Entités Géographiques définie dans le CI-SIS)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:idNatSt.value"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "numFINESS-EG"
* item[=].item[=].prefix = "2.2"
* item[=].item[=].text = "Numéro FINESS de l'EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.identifier:finess.value"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "numSIRET"
* item[=].item[=].prefix = "2.3"
* item[=].item[=].text = "Numéro SIRET de l'EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.identifier:numSIRET.value"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "numEG_RPPS_ADELI_Rang"
* item[=].item[=].prefix = "2.4"
* item[=].item[=].text = "N°EG/RPPS/ADELIrang"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.identifier:rppsRang.value"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "nom-EG"
* item[=].item[=].prefix = "2.5"
* item[=].item[=].text = "Dénomination EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.name"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "complementRaisonSociale-EG"
* item[=].item[=].prefix = "2.6"
* item[=].item[=].text = "Complément Dénomination"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.name"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "cNomOperationnel-EG"
* item[=].item[=].prefix = "2.7"
* item[=].item[=].text = "Le cas échéant, veuillez renseigner le nom opérationnel de l’entité géographique"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.alias"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "categorieEG"
* item[=].item[=].prefix = "2.8"
* item[=].item[=].text = "Catégorie EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.type:categorieEtablissement"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J55-CategorieEG-ROR/FHIR/JDV-J55-CategorieEG-ROR"
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "adresseEG"
* item[=].item[=].prefix = "2.9"
* item[=].item[=].text = "Lieu EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.address.text"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "contactEG"
* item[=].item[=].prefix = "2.10"
* item[=].item[=].text = "Contact (Informations permettant de contacter l'accueil ou le secrétariat de l'entité géographique)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#diff_Organization.contact.telecom.value"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "accessibiliteLieu-EG"
* item[=].item[=].prefix = "2.11"
* item[=].item[=].text = "Accessibilité lieu"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#diff_Organization.extension:ror-organization-accessibility-location"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J50-AccessibiliteLieu-ROR/FHIR/JDV-J50-AccessibiliteLieu-ROR"
* item[=].item[=].required = false
* item[=].item[=].prefix = "2.12"
* item[=].item[=].text = "modaliteParticipationSPH"
* item[=].item[=].definition = "https://ansforge.github.io/IG-fhir-repertoire-offre-ressources-sante/ig/main/StructureDefinition-ror-organization-definitions.html#Organization.type:sphParticipation"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J202-ESPIC-ROR/FHIR/JDV-J202-ESPIC-ROR"
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "dateOuverture-EG"
* item[=].item[=].prefix = "2.13"
* item[=].item[=].text = "Veuillez indiquer la date de création de l’EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.extension:organization-period.start"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "dateFermeture-EG"
* item[=].item[=].prefix = "2.14"
* item[=].item[=].text = "Veuillez indiquer la date de fermeture de l’EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.extension:organization-period.end"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "typeFermeture-EG"
* item[=].item[=].prefix = "2.15"
* item[=].item[=].text = "Veuillez indiquer le type de fermeture de l’EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-organization-definitions.html#Organization.extension:ror-organization-closing-type"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J201-TypeFermeture-ROR/FHIR/JDV-J201-TypeFermeture-ROR"
* item[=].item[=].required = false
* item[=].item[=].readOnly = true

/*Type d'offre*/
* item[+].linkId = "TypeOffreInfo"
* item[=].prefix = "3"
* item[=].text = "Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Informations sur l'offre"
* item[=].type = #group
* item[=].item[0].linkId = "IdentifiantOffre"
* item[=].item[=].text = "Identifiant Offre (Fourni par le ROR)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.identifier.value"
* item[=].item[=].prefix = "3.1"
* item[=].item[=].type = #string
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "NomOffre"
* item[=].item[=].text = "Nom Offre"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.name"
* item[=].item[=].prefix = "3.2"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].linkId = "modePriseEnCharge"
* item[=].item[=].text = "Mode de prise en charge"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:careMode.coding"
* item[=].item[=].prefix = "3.3"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption[0].valueCoding = $JDV-J19-ModePriseEnCharge-ROR#32 "Consultation (CS)"
* item[=].item[=].answerOption[0].initialSelected = true
* item[=].item[=].answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J19-ModePriseEnCharge-ROR/FHIR/JDV-J19-ModePriseEnCharge-ROR/"
* item[=].item[+].linkId = "ModalAccueil"
* item[=].item[=].text = "Modalité d’accueil"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:receptionModality.coding"
* item[=].item[=].prefix = "3.4"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $JDV-J226-ModaliteAccueil-ROR#03 "Consultation en présentiel"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J226-ModaliteAccueil-ROR#04 "Téléconsultation"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J226-ModaliteAccueil-ROR#05 "Visite à domicile"
* item[=].item[=].repeats = true
* item[=].item[+].linkId = "ageMin"
* item[=].item[=].text = "Veuillez indiquer l’âge minimum de la patientèle."
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-healthcareservice-patient-type-definitions.html#key_Extension.extension:ageRange.value[x].low"
* item[=].item[=].prefix = "3.5"
* item[=].item[=].type = #quantity
* item[=].item[=].required = false
* item[=].item[+].linkId = "ageMax"
* item[=].item[=].text = "Veuillez indiquer l’âge maximum de la patientèle"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-healthcareservice-patient-type-definitions.html#key_Extension.extension:ageRange.value[x].high"
* item[=].item[=].prefix = "3.6"
* item[=].item[=].type = #quantity
* item[=].item[=].required = false
* item[=].item[+].linkId = "ZoneInter"
* item[=].item[=].text = "Zone d’intervention (A renseigner si la modalité d’accueil « visite à domicile » est renseignée)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-territorial-division-definitions.html#diff_Extension.extension:codeTerritorialDivision"
* item[=].item[=].prefix = "3.7"
* item[=].item[=].type = #choice
* item[=].item[=].enableWhen.question = "ModalAccueil"
* item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].answerValueSet = "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/code-region-territorial-division-ror-valueset"
* item[=].item[=].required = false
* item[=].item[+].linkId = "activiteOperationnelle"
* item[=].item[=].text = "Activités opérationnelles"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.specialty:operationalActivity"
* item[=].item[=].prefix = "3.8"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#404 "Addictologie avec substance(s)"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#001 "Addictologie comportementale (sans substance)"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#004 "Algologie et Médecine de la douleur"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#040 "Diététique et Nutrition"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#435 "Expertise médicale (évaluation de préjudice)"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#179 "Médecine aéronautique et aérospatiale"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#480 "Médecine du sommeil"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#081 "Médecine du sport"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#437 "Médecine générale"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#481 "Médecine générale à orientation Allergologie"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#482 "Médecine générale à orientation Andrologie"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#483 "Médecine générale à orientation Diabétologie"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#484 "Médecine générale à orientation Gériatrie, Gérontologie"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#485 "Médecine générale à orientation Gynécologie médicale"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#486 "Médecine générale à orientation Maladies infectieuses, parasitaires et tropicales"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#487 "Médecine générale à orientation Médecine pédiatrique"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#488 "Médecine générale à orientation Médecine vasculaire (Angiologie, Phlébologie)"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#489 "Médecine générale à orientation Oncogériatrie (cancérologie)"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#490 "Médecine générale à orientation Pathologies osseuses médicales"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#084 "Médecine hyperbare"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#455 "Médecine thermale"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#135 "Sexologie médicale"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#170 "Soins palliatifs"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J17-ActiviteOperationnelle-ROR#139 "Tabacologie"
* item[=].item[=].repeats = true
* item[=].item[+].linkId = "acteSpecifique"
* item[=].item[=].text = "Actes Specifiques"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:specificAct"
* item[=].item[=].prefix = "3.9"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $JDV-J16-ActeSpecifique-ROR#0739 "Audiogramme"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1167 "Contention souple d’articulation"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1171 "Dépistage de la déficience visuelle de l'enfant"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1172 "Dépistage des surdités de l'enfant"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1181 "Diagnostic par dermatoscope"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1182 "Diagnostic par echoscope doppler"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#0172 "ECG (électrocardiographie)"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1186 "Echographie clinique ciblée"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#0628 "Education thérapeutique du patient non labellisée ou psychoéducation"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1197 "Évacuation / Excision d'une thrombose hémorroïdaire externe"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#0483 "Evaluation des troubles du sommeil (polysomnographie)"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1199 "Examen médical d’aptitude à la fonction publique par médecin agréé"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1200 "Examen médical du permis de conduire par médecin agréé"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1208 "Frottis du col utérin"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1215 "Incision / excision d'un panaris superficiel"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#0268 "Interruption volontaire de grossesse (IVG) médicamenteuse"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#0812 "Médiation Familiale"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1244 "Pose d’implants contraceptifs"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1245 "Pose de DIU"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1247 "Pose de plâtres ou résines, orthèse"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1248 "Prescription initiale d'audioprothèses"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1249 "Prise en charge des migraines et céphalées"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#0825 "Prophylaxie pré-exposition par voie orale (PrEP)"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#0768 "Psychothérapie"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#0921 "Repérage des conduites addictives, soins et orientation"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#0441 "Soins avec administration de MEOPA"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1269 "Sutures cutanées"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#0448 "Synoviorthèse isotopique"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#1270 "Tamponnement nasal antérieur"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#0626 "Bilan neuro-psychologique"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#0610 "Thérapie individuelle cognitivo-comportementale (TCC)"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J16-ActeSpecifique-ROR#0608 "Thérapie individuelle par hypnose"
* item[=].item[=].repeats = true
* item[=].item[+].linkId = "acteRealiseHorsCabinet"
* item[=].item[=].text = "Acte spécifique hors cabinet"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:outsideOfficeAct"
* item[=].item[=].prefix = "3.10"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $JDV-J16-ActeSpecifique-ROR#0528 "Education thérapeutique du patient (ETP) labellisée"
* item[=].item[+].linkId = "CompetenceSpecifique"
* item[=].item[=].text = "Compétence(s) spécifique(s)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:specificCompetence.coding"
* item[=].item[=].prefix = "3.11"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J33-CompetenceSpecifique-ROR/FHIR/JDV-J33-CompetenceSpecifique-ROR/"


