Instance: ror-consommateur
InstanceOf: CapabilityStatement
Usage: #definition
* status = #active 
* date = "2023-01-12T14:27:51+01:00"
* url = "http://esante.gouv.fr/fhir/ror/CapabilityStatement/ror-consommateur"
* name = "RORConsommateur"
* title = "ROR-Consommateur"
* experimental = false
* description = "Système qui est autorisé à consommer les données du ROR."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "http://esante.gouv.fr/fhir/ror/ImplementationGuide/ror-ig"
* rest.mode = #client
* rest.documentation = "Recherche et consultation des lieux de réalisation de l'offre"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S ) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"
* rest.resource[0].type = #Location
* rest.resource[=].profile = Canonical(ror-location)
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date de la dernière mise a jour"
* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Code de la région de la source de la donnée"
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Destination d'usage du lieu"
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique du lieu de réalisation de l'offre"
* rest.resource[=].searchParam[0].name = "near"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-near"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Lieux proches du lieu de réalisation de l'offre"
* rest.resource[=].searchParam[0].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Statut de la ressource"
* rest.resource[=].searchParam[+].name = "adress-postalcode"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-adress-postalcode"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Code Postal ou code postal spécifique CEDEX"
* rest.resource[=].searchParam[+].name = "adress-city"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-adress-city"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Localité ou Libellé du bureau distributeur CEDEX"
* rest.resource[=].searchParam[+].name = "capacity-status"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-capacity-status)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Statut de la capacité"
* rest.resource[=].searchParam[+].name = "nb-capacity"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-nb-capacity)
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Nombre de capacité"
* rest.resource[=].searchParam[0].name = "additional-bed-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-additional-bed-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Types des lits disponnibles"
* rest.resource[=].searchParam[0].name = "capacity-closing-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-capacity-closing-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Type de la fermeture de la capacité"
* rest.resource[=].searchParam[0].name = "capacity-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-capacity-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Nature de la capacité"
* rest.resource[=].searchParam[0].name = "capacity-update-date"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-capacity-update-date)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date à jour de la capacité"
* rest.resource[=].searchParam[0].name = "crisis-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-crisis-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Type de la crise"
* rest.resource[=].searchParam[0].name = "equipment-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-equipment-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Type d'un equipement"
* rest.resource[=].searchParam[0].name = "equipment-feature"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-equipment-feature)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Caractéristique d'un equipement"
* rest.resource[=].searchParam[0].name = "gender-capacity-available"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-gender-capacity-available)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Genre disponnible de la capacité"
* rest.resource[=].searchParam[0].name = "limit-value"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-limit-value)
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "Valeur limite"
* rest.resource[=].searchParam[0].name = "commune-cog"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-location-commune-cog)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Indique s'il y a une zone poser sur le site concerné"
* rest.resource[=].searchParam[0].name = "near-insee-code"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-location-near-insee-code)
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Lieux proches du lieu de réalisation de l'offre via le code COG INSEE"
* rest.resource[=].searchParam[0].name = "residential-number"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-residential-number)
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Nombre d'habitation"
* rest.resource[=].searchParam[0].name = "residential-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-residential-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Type d'habitation"
* rest.resource[=].searchParam[0].name = "temporality-capacity"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-temporality-capacity)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Affectations temporaires"
* rest.resource[=].searchParam[0].name = "temporary-assignement"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-temporary-assignement)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Affectations temporaires"
* rest.resource[+].type = #HealthcareService
* rest.resource[=].profile = Canonical(ror-healthcareservice)
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique de la ressource"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date de la dernière mise a jour"
* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Code de la région de la source de la donnée"
* rest.resource[=].searchParam[+].name = "location"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-location"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Référence à la ressource Location"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant métier de l’offre"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Dénomination sous laquelle l'offre est identifiée"
* rest.resource[=].searchParam[+].name = "service-category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Type d'offre"
* rest.resource[=].searchParam[+].name = "service-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Domaine dans lequel s'inscrit l'offre"
* rest.resource[=].searchParam[+].name = "characteristic"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-characteristic"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Caractéristiques de l'offre"
* rest.resource[=].searchParam[+].name = "speciality"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-speciality"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Ensemble cohérent d’actions et de pratiques mises en œuvre pour répondre aux besoins en Santé de la personne"
* rest.resource[=].searchParam[+].name = "age-range-high"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-healthcareservice-age-range-high)
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "Age maximum de la patientèle"
* rest.resource[=].searchParam[+].name = "age-range-low"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-healthcareservice-age-range-low)
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "Age minimum de la patientèle"
* rest.resource[=].searchParam[+].name = "intervention-zone"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-healthcareservice-intervention-zone)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Zone d'intervention"
* rest.resource[=].searchParam[+].name = "supported-patient-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-healthcareservice-patient-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Public pris en charge"
* rest.resource[=].searchParam[+].name = "psychiatric-sector"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-healthcareservice-psychiatric-sector)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Secteur psychiatrique de l'offre opérationnelle"
* rest.resource[=].searchParam[+].name = "specific-competence"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-healthcareservice-specific-competence)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Compétence spécifique"
* rest.resource[+].type = #Organization
* rest.resource[=].profile = Canonical(ror-organization)
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date de la dernière mise a jour"
* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Code de la région de la source de la donnée"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identification nationale de l'Entité Géographique définie dans le CI-SIS"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Nom de l'organisation interne"
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organiztion-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Cadre réglementaire dans lequel s'exerce l'activité de l'entité géographique"
* rest.resource[=].searchParam[+].name = "closing-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-closing-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Type de fermeture de l'entité géographique, au sens des règles de gestion du SI FINESS"
* rest.resource[=].searchParam[+].name = "drop-zone"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-drop-zone)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Indique s'il y a une zone poser sur le site concerné"
* rest.resource[=].searchParam[+].name = "period-end"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-period-end)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date de fermeture de l'entité géographique"
* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = Canonical(ror-practitioner)
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date de la dernière mise a jour"
* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Code de la région de la source de la donnée"
* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = Canonical(ror-practitionerrole)
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date de la dernière mise a jour"
* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Code de la région de la source de la donnée"