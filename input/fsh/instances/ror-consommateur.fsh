Instance: ror-consommateur
InstanceOf: CapabilityStatement
Usage: #definition

* status = #active 
* name = "RORConsommateur"
* title = "ROR-Consommateur"
* experimental = false
* date = "2023-01-12T14:27:51+01:00"
* description = "Système qui est autorisé à consommer les données du ROR."
* kind = #requirements
* fhirVersion = #4.0.1

* instantiates = "http://hl7.org/fhir/uv/bulkdata/CapabilityStatement/bulk-data"
* instantiates.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* instantiates.extension.valueCode = #SHOULD

* format[+] = #application/fhir+json
* format[+] = #application/fhir+ndjson

* implementationGuide[+] = "https://interop.esante.gouv.fr/ig/fhir/ror/ImplementationGuide/ans.fhir.fr.ror"
* implementationGuide[+] = "http://hl7.org/fhir/uv/bulkdata/ImplementationGuide/hl7.fhir.uv.bulkdata"

* rest.mode = #client
* rest.documentation = "Recherche et consultation des lieux de réalisation de l'offre"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S ) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"

// Location
* rest.resource[+].type = #Location
* rest.resource[=].profile = Canonical(ror-location)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].searchRevInclude = "HealthcareService:location"

* rest.resource[=].searchParam[+].name = "_id"
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

* rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche dans le contenu textuel de la ressource"

* rest.resource[=].searchParam[+].name = "_has"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-has"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Permet la sélection des ressources en fonction des propriétés des ressources qui y font référence (reverse chaining)"

* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Destination d'usage du lieu"

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique du lieu de réalisation de l'offre"

* rest.resource[=].searchParam[+].name = "near"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-near"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Lieux proches du lieu de réalisation de l'offre"

* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Statut de la ressource"

* rest.resource[=].searchParam[+].name = "address-postalcode"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-address-postalcode"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Code Postal ou code postal spécifique CEDEX"

* rest.resource[=].searchParam[+].name = "address-city"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-address-city"
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

* rest.resource[=].searchParam[+].name = "additional-bed-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-additional-bed-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Types des lits disponnibles"

* rest.resource[=].searchParam[+].name = "capacity-closing-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-capacity-closing-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Type de la fermeture de la capacité"

* rest.resource[=].searchParam[+].name = "capacity-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-capacity-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Nature de la capacité"

* rest.resource[=].searchParam[+].name = "capacity-update-date"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-capacity-update-date)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date à jour de la capacité"

* rest.resource[=].searchParam[+].name = "crisis-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-crisis-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Type de la crise"

* rest.resource[=].searchParam[+].name = "equipment-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-equipment-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Type d'un equipement"

* rest.resource[=].searchParam[+].name = "equipment-feature"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-equipment-feature)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Caractéristique d'un equipement"

* rest.resource[=].searchParam[+].name = "gender-capacity-available"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-gender-capacity-available)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Genre disponnible de la capacité"

* rest.resource[=].searchParam[+].name = "limit-value"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-limit-value)
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "Valeur limite"

* rest.resource[=].searchParam[+].name = "commune-cog"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-location-commune-cog)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Code officiel géographique (cog) de la commune dans laquelle le lieu est situé"

* rest.resource[=].searchParam[+].name = "near-insee-code"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-location-near-insee-code)
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Lieux proches du lieu de réalisation de l'offre via le code COG INSEE"

* rest.resource[=].searchParam[+].name = "residential-number"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-residential-number)
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Nombre d'habitation"

* rest.resource[=].searchParam[+].name = "residential-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-residential-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Type d'habitation"

* rest.resource[=].searchParam[+].name = "temporality-capacity"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-temporality-capacity)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Affectations temporaires"

* rest.resource[=].searchParam[+].name = "temporary-assignement"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-temporary-assignement)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Affectations temporaires"

// HealthcareService
* rest.resource[+].type = #HealthcareService
* rest.resource[=].profile = Canonical(ror-healthcareservice)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].searchInclude = "HealthcareService:organization, HealthcareService:location"
* rest.resource[=].searchRevInclude = "PractitionerRole:service, Task:focus"

* rest.resource[=].searchParam[+].name = "_id"
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

* rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche dans le contenu textuel de la ressource"

* rest.resource[=].searchParam[+].name = "_has"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-has"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Permet la sélection des ressources en fonction des propriétés des ressources qui y font référence (reverse chaining)"

* rest.resource[=].searchParam[+].name = "_filter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-filter"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Fournit une syntaxe pour exprimer un ensemble d'expressions de requête sur les ressources sous-jacentes"

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
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Type d'offre"

* rest.resource[=].searchParam[+].name = "service-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Domaine dans lequel s'inscrit l'offre"

* rest.resource[=].searchParam[+].name = "characteristic"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-characteristic"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Caractéristiques de l'offre"

* rest.resource[=].searchParam[+].name = "specialty"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-specialty"
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

* rest.resource[=].searchParam[+].name = "patient-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-healthcareservice-patient-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Public pris en charge"

* rest.resource[=].searchParam[+].name = "psychiatric-sector"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-healthcareservice-psychiatric-sector)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Secteur psychiatrique de l'offre opérationnelle"

// Organization
* rest.resource[+].type = #Organization
* rest.resource[=].profile = Canonical(ror-organization)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read

* rest.resource[=].searchParam[+].name = "_id"
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

* rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche dans le contenu textuel de la ressource"

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identification nationale de l'Entité Géographique définie dans le CI-SIS"

* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Nom de l'organisation interne"

* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-type"
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

* rest.resource[=].searchParam[+].name = "price-amount-currency"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-amount-currency)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Devise du tarif des prestations et services"

* rest.resource[=].searchParam[+].name = "price-amount-value"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-amount-value)
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Valeur du tarif des prestations et services"

* rest.resource[=].searchParam[+].name = "price-dependency-level"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-dependency-level)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Niveau de dépendance de la personne âgée accueillie"

* rest.resource[=].searchParam[+].name = "price-residential-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-residential-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Caractéristiques de l'hébergement"

* rest.resource[=].searchParam[+].name = "price-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Type de tarif"

* rest.resource[=].searchParam[+].name = "price-unit"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-unit)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Unité de référence pour évaluer le prix des prestations et services"

* rest.resource[=].searchParam[+].name = "price-validity-start-date"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-validity-start-date)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Dernière date de début de validité du tarif indiqué"

* rest.resource[=].searchParam[+].name = "price-welcome-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-welcome-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = " Tarif applicable à un hébergement permanent ou à un hébergement temporaire"

* rest.resource[=].searchParam[+].name = "price-special-price"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-special-price)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Condition tarifaire"

// Practitioner
* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = Canonical(ror-practitioner)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read

* rest.resource[=].searchParam[+].name = "_id"
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

* rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche dans le contenu textuel de la ressource"

// PractitionerRole
* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = Canonical(ror-practitionerrole)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read

* rest.resource[=].searchParam[+].name = "_id"
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

* rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche dans le contenu textuel de la ressource"

// Task
* rest.resource[+].type = #Task
* rest.resource[=].profile = Canonical(ror-task)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #patch

* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique de la ressource"

* rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche dans le contenu textuel de la ressource"

// Measure
* rest.resource[+].type = #Measure
* rest.resource[=].profile = Canonical(ror-measure)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchRevInclude = "MeasureReport:measure"

* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique de la ressource"

* rest.resource[=].searchParam[+].name = "_has"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-has"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Permet la sélection des ressources en fonction des propriétés des ressources qui y font référence (reverse chaining)"

// MeasureReport
* rest.resource[+].type = #MeasureReport
* rest.resource[=].profile = Canonical(ror-measurereport)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read

* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique de la ressource"

// bulk data export from hl7.fhir.uv.bulkdata: 2.0.0
* rest.operation[+].name = "export"
* rest.operation[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.operation[=].extension.valueCode = #SHOULD
* rest.operation[=].definition = "http://hl7.org/fhir/uv/bulkdata/OperationDefinition/export"
* rest.operation[=].documentation = "Utilisation de https://hl7.org/fhir/uv/bulkdata/export.html avec ajout de la valeur _myCompleteExtract pour utiliser le query parameter includeAssociatedData."