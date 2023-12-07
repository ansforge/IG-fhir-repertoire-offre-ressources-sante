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
* item[=].item[0].linkId = "IdNat_Struct_EJ"
* item[=].item[=].prefix = "1.1"
* item[=].item[=].text = "IdNat_Struct (Identification nationale des Entités Juridiques définie dans le CI-SIS)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:idNatSt.value"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].linkId = "date-creation-EJ"
* item[=].item[=].prefix = "1.2"
* item[=].item[=].text = "Veuillez indiquer la date de création de l’EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:ror-organization-creation-date"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[+].linkId = "TypeOffreInfoEG"
* item[=].prefix = "2"
* item[=].text = "Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Information sur l'EG"
* item[=].type = #group
* item[=].item[0].linkId = "IdNat_Struct_EG"
* item[=].item[=].prefix = "2.1"
* item[=].item[=].text = "IdNat_Struct (Identification nationale des Entités Géographiques définie dans le CI-SIS)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:idNatSt.value"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[+].linkId = "TypeOffreInfo"
* item[=].prefix = "3"
* item[=].text = "Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Informations sur l'offre"
* item[=].type = #group
* item[=].item[0].linkId = "ModalAccueil"
* item[=].item[=].text = "Modalité d’accueil"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:receptionModality.coding"
* item[=].item[=].prefix = "3.1"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $JDV-J226-ModaliteAccueil-ROR#03 "Consultation en présentiel"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J226-ModaliteAccueil-ROR#04 "Téléconsultation"
* item[=].item[=].answerOption[+].valueCoding = $JDV-J226-ModaliteAccueil-ROR#05 "Visite à domicile"
* item[=].item[+].linkId = "CompetenceSpecifique"
* item[=].item[=].text = "Compétence(s) spécifique(s)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:specificCompetence.coding"
* item[=].item[=].prefix = "3.2"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J33-CompetenceSpecifique-ROR/FHIR/JDV-J33-CompetenceSpecifique-ROR/"