Alias: $example = http://example.org

Instance: ror-questionnaire-offre-de-ville
InstanceOf: RORQuestionnaire
Usage: #example
* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-questionnaire"
* version = "0.1"
* name = "FDS-offre-de-ville"
* title = "Cabinet de ville de médecine générale"
* identifier.value = "FDS-092"
* status = #draft
* experimental = true

* date = "2023-04-12T00:00:00.000Z"
* publisher = "ANS"
* description = "Dans le ROR, les cabinets de ville et les centres de santé prennent la forme d'une Entité Juridique, et d’un Établissement Géographique (EG), puis d’une unité élémentaire par professionnel. Ce document propose la description type d’un cabinet de ville de médecine générale."
* jurisdiction = urn:iso:std:iso:3166#FR "FRANCE"
* subjectType[0] = #HealthcareService
* subjectType[+] = #Organization
* subjectType[+] = #Practitioner
* subjectType[+] = #Location
* subjectType[+] = #PractitionerRole
* lastReviewDate = "2023-04-12T00:00:00.000Z"
* purpose = "Dans le ROR, l'offre de soins de ville comprend celle des cabinets et celle des centres de santé. Concernant les soins de médecine générale, le ROR référencera l’offre des médecins généralistes, qu’ils aient ou non une spécialité, dans leur cabinet, individuel ou de groupe, et les centres de santé."
* item.linkId = "grp"
* item.text = "Test: Required Radio Buttons"
* item.type = #group
* item.item[0].linkId = "textq"
* item.item[=].text = "Should I stay text?"
* item.item[=].type = #string
* item.item[=].required = true
* item.item[+].linkId = "radio"
* item.item[=].text = "Should I stay?"
* item.item[=].type = #choice
* item.item[=].required = true
* item.item[=].answerValueSet = "http://sqlonfhir-r4.azurewebsites.net/fhir/ValueSet/a015b6a1ac024dc19baec940be2c1695"
* item.item[+].linkId = "radio2"
* item.item[=].text = "Should I go now?"
* item.item[=].type = #choice
* item.item[=].required = true
* item.item[=].answerOption[0].valueCoding = $example#1 "One"
* item.item[=].answerOption[+].valueCoding = $example#2 "Two"
* item.item[+].linkId = "radio3"
* item.item[=].text = "Will there be trouble?"
* item.item[=].type = #choice
* item.item[=].required = true
* item.item[=].answerOption[0].valueCoding = $example#1 "One"
* item.item[=].answerOption[+].valueCoding = $example#2 "Two"
* item.item[=].answerOption[+].valueCoding = $example#3 "Three"