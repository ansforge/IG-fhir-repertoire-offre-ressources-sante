# ROR-Serveur - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## CapabilityStatement: ROR-Serveur (Experimental) 

 
Capability Statement pour le Système ROR National. Le Répertoire Opérationnel des Ressources (ROR) est le gisement de données qui décrit les offres de santé au niveau national. 

 [Raw OpenAPI-Swagger Definition file](../ror-serveur.openapi.json) | [Download](../ror-serveur.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "ror-serveur",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/CapabilityStatement/ror-serveur",
  "version" : "0.7.0",
  "name" : "RORServeur",
  "title" : "ROR-Serveur",
  "status" : "draft",
  "experimental" : true,
  "date" : "2024-03-12T11:35:00+01:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Capability Statement pour le Système ROR National. Le Répertoire Opérationnel des Ressources (ROR) est le gisement de données qui décrit les offres de santé au niveau national.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "kind" : "requirements",
  "instantiates" : ["http://hl7.org/fhir/uv/bulkdata/CapabilityStatement/bulk-data|2.0.0"],
  "_instantiates" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
      "valueCode" : "SHOULD"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+json", "application/fhir+ndjson"],
  "patchFormat" : ["application/fhir+json"],
  "implementationGuide" : ["https://interop.esante.gouv.fr/ig/fhir/ror/ImplementationGuide/ans.fhir.fr.ror",
  "http://hl7.org/fhir/uv/bulkdata/ImplementationGuide/hl7.fhir.uv.bulkdata|2.0.0"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "Recherche et consultation des lieux de réalisation de l'offre  \n  \n Note : Seuls les attributs de 'premier niveau' peuvent être mis à jour avec l'interaction patch.",
    "security" : {
      "cors" : false,
      "service" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/restful-security-service",
          "code" : "OAuth"
        }]
      }],
      "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S ) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"
    },
    "resource" : [{
      "type" : "Location",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location|0.7.0",
      "interaction" : [{
        "code" : "search-type"
      },
      {
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "patch",
        "documentation" : "Seuls les attributs de 'premier niveau' peuvent être mis à jour avec l'interaction patch."
      }],
      "searchRevInclude" : ["HealthcareService:location"],
      "searchParam" : [{
        "name" : "_filter",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-filter",
        "type" : "special",
        "documentation" : "Paramètre de recherche de filtre qui prend en charge une grammaire de recherche plus sophistiquée. Voir la [documentation](https://hl7.org/fhir/search_filter.html) pour plus de détails"
      },
      {
        "name" : "_has",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-has",
        "type" : "special",
        "documentation" : "Permet la sélection des ressources en fonction des propriétés des ressources qui y font référence (reverse chaining)"
      },
      {
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur l'identifiant logique, également appelé technique, de la ressource"
      },
      {
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated|4.0.1",
        "type" : "date",
        "documentation" : "Permet la recherche sur la date de la dernière mise a jour de la ressource"
      },
      {
        "name" : "_tag",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-tag|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur le code de la région de la source de la donnée"
      },
      {
        "name" : "type",
        "definition" : "http://hl7.org/fhir/SearchParameter/Location-type|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur la destination d'usage du lieu"
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Location-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur l'identifiant logique du lieu de réalisation de l'offre. Il correspond à l'identifiant externe de synchronisation est l'identifiant défini par le porteur d'offre pour la zone d'hébergement des lits."
      },
      {
        "name" : "near",
        "definition" : "http://hl7.org/fhir/SearchParameter/Location-near|4.0.1",
        "type" : "special",
        "documentation" : "Permet la recherche positionnelle (coordonnées géographique): lieux proches du lieu de réalisation de l'offre"
      },
      {
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/Location-status|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur le statut de la ressource"
      },
      {
        "name" : "operational-status",
        "definition" : "http://hl7.org/fhir/SearchParameter/Location-operational-status|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur le statut opérationnel du lieu, fermé temporairement ou fermé définitivement."
      },
      {
        "name" : "address-postalcode",
        "definition" : "http://hl7.org/fhir/SearchParameter/Location-address-postalcode|4.0.1",
        "type" : "string",
        "documentation" : "Permet la recherche sur le code Postal ou code postal spécifique CEDEX"
      },
      {
        "name" : "address-city",
        "definition" : "http://hl7.org/fhir/SearchParameter/Location-address-city|4.0.1",
        "type" : "string",
        "documentation" : "Permet la recherche sur la localité ou Libellé du bureau distributeur CEDEX"
      },
      {
        "name" : "capacity-status",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-capacity-status|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur le statut de la capacité"
      },
      {
        "name" : "nb-capacity",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-nb-capacity|0.7.0",
        "type" : "number",
        "documentation" : "Permet la recherche sur la quantité de lits ou places de la capacité exprimée"
      },
      {
        "name" : "additional-bed-type",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-additional-bed-type|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur le type des lits disponnibles"
      },
      {
        "name" : "capacity-closing-type",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-capacity-closing-type|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur le type de la fermeture de la capacité"
      },
      {
        "name" : "capacity-type",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-capacity-type|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur la nature de la capacité"
      },
      {
        "name" : "capacity-update-date",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-capacity-update-date|0.7.0",
        "type" : "date",
        "documentation" : "Permet la recherche sur la date à laquelle la capacité d'accueil a été mise à jour dans la source."
      },
      {
        "name" : "crisis-type",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-crisis-type|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur le type de la crise qui permet de mobiliser le nombre de lits supplémentaires décrits."
      },
      {
        "name" : "equipment-type",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-equipment-type|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur le type d'un equipement. Les équipements spécifiques décrits sont des ressources propres de la structure ou mises à disposition dans le cadre d'une convention à la condition qu'elles soient utilisées sur site."
      },
      {
        "name" : "equipment-feature",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-equipment-feature|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur la caractéristique de l'équipement pour laquelle une valeur limite est précisée."
      },
      {
        "name" : "gender-capacity-available",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-gender-capacity-available|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur le genre disponible de la capacité"
      },
      {
        "name" : "limit-value",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-limit-value|0.7.0",
        "type" : "quantity",
        "documentation" : "Permet la recherche sur la valeur limite : correspond à la valeur extrême associée à une caractéristique de l'équipement."
      },
      {
        "name" : "commune-cog",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-location-commune-cog|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur le code officiel géographique (cog) de la commune dans laquelle le lieu est situé"
      },
      {
        "name" : "near-insee-code",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-location-near-insee-code|0.7.0",
        "type" : "special",
        "documentation" : "Permet la recherche positionnelle (code INSEE commune): lieux proches du lieu de réalisation de l'offre via le code COG INSEE"
      },
      {
        "name" : "residential-number",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-residential-number|0.7.0",
        "type" : "number",
        "documentation" : "Permet la recherche sur le nombre d'habitation du même type."
      },
      {
        "name" : "residential-type",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-residential-type|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur le type d'habitation."
      },
      {
        "name" : "temporality-capacity",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-temporality-capacity|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur les affectations temporaires. Indique le moment où cette capacité sera effective. Il est ainsi possible de décrire la situation immédiate, ou de fournir des informations prospectives de capacités, prenant notamment en compte les entrées et sorties déjà identifiés de patients."
      },
      {
        "name" : "temporary-assignement",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-temporary-assignement|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur les affectations temporaires. L'affectation temporaire permet de réserver tout ou partie des lits d'une zone d'hébergement pour des patients selon qu'ils soient -ou non- concernés par une pathologie (Covid+, Covid-, ...) ou un évènement (catastrophe naturelle, attentat, ...)."
      }]
    },
    {
      "type" : "HealthcareService",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice|0.7.0",
      "interaction" : [{
        "code" : "search-type"
      },
      {
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "patch",
        "documentation" : "Seuls les attributs de 'premier niveau' peuvent être mis à jour avec l'interaction patch."
      },
      {
        "code" : "update"
      }],
      "searchInclude" : ["HealthcareService:organization, HealthcareService:location, Organization:partof, PractitionerRole:practitioner"],
      "searchRevInclude" : ["PractitionerRole:service, Task:focus"],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur l'identifiant logique de la ressource"
      },
      {
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated|4.0.1",
        "type" : "date",
        "documentation" : "Permet la recherche sur la date de la dernière mise a jour"
      },
      {
        "name" : "_tag",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-tag|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur le code de la région de la source de la donnée"
      },
      {
        "name" : "_has",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-has",
        "type" : "special",
        "documentation" : "Permet la sélection des ressources en fonction des propriétés des ressources qui y font référence (reverse chaining)"
      },
      {
        "name" : "_filter",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-filter",
        "type" : "special",
        "documentation" : "Fournit une syntaxe pour filtrer de manière plus complexe"
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur l'identifiant métier de l’offre"
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-name|4.0.1",
        "type" : "string",
        "documentation" : "Permet la recherche sur la dénomination sous laquelle l'offre est identifiée"
      },
      {
        "name" : "service-category",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-service-category|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur le type d'offre"
      },
      {
        "name" : "service-type",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-service-type|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur le domaine dans lequel s'inscrit l'offre"
      },
      {
        "name" : "characteristic",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-characteristic|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur les caractéristiques de l'offre"
      },
      {
        "name" : "specialty",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-specialty|4.0.1",
        "type" : "token",
        "documentation" : "Ensemble cohérent d'actions et de pratiques mises en œuvre pour répondre aux besoins en Santé de la personne"
      },
      {
        "name" : "age-range-high",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-age-range-high|0.7.0",
        "type" : "quantity",
        "documentation" : "Permet la recherche sur l'age maximum de la patientèle"
      },
      {
        "name" : "age-range-low",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-age-range-low|0.7.0",
        "type" : "quantity",
        "documentation" : "Permet la recherche sur l'age minimum de la patientèle"
      },
      {
        "name" : "intervention-zone",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-intervention-zone|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur la zone d'intervention"
      },
      {
        "name" : "patient-type",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-patient-type|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur le type de public pris en charge"
      },
      {
        "name" : "psychiatric-sector",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-psychiatric-sector|0.7.0",
        "type" : "string",
        "documentation" : "Permet la recherche sur le secteur psychiatrique de l'offre opérationnelle"
      },
      {
        "name" : "notavailable-closing-reopeningdate",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-notavailable-closing-reopeningdate|0.7.0",
        "type" : "date",
        "documentation" : "Permet la recherche de date dans la période de fermeture (during.start) et de réouverture prévisionnelle (during.end)"
      }]
    },
    {
      "type" : "Organization",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization|0.7.0",
      "interaction" : [{
        "code" : "search-type"
      },
      {
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "patch"
      },
      {
        "code" : "update",
        "documentation" : "Seuls les attributs de 'premier niveau' peuvent être mis à jour avec l'interaction patch."
      }],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur l'identifiant logique de la ressource"
      },
      {
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated|4.0.1",
        "type" : "date",
        "documentation" : "Permet la recherche sur la date de la dernière mise à jour"
      },
      {
        "name" : "_tag",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-tag|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur le code de la région de la source de la donnée"
      },
      {
        "name" : "_content",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-content|4.0.1",
        "type" : "string",
        "documentation" : "Recherche dans le contenu textuel de la ressource"
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur l'identification nationale de l'Entité Géographique définie dans le CI-SIS"
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-name|4.0.1",
        "type" : "string",
        "documentation" : "Permet la recherche sur le nom de l'organisation interne"
      },
      {
        "name" : "type",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-type|4.0.1",
        "type" : "token"
      },
      {
        "name" : "closing-type",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-closing-type|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur le type de fermeture de l'entité géographique, au sens des règles de gestion du SI FINESS"
      },
      {
        "name" : "drop-zone",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-drop-zone|0.7.0",
        "type" : "token",
        "documentation" : "Indique s'il y a une zone poser sur le site concerné"
      },
      {
        "name" : "period-end",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-period-end|0.7.0",
        "type" : "date",
        "documentation" : "Permet la recherche sur la date de fermeture de l'entité géographique"
      },
      {
        "name" : "price-amount-value",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-amount-value|0.7.0",
        "type" : "number",
        "documentation" : "Permet la recherche sur la valeur du tarif des prestations et services"
      },
      {
        "name" : "price-dependency-level",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-dependency-level|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur le niveau de dépendance de la personne âgée accueillie"
      },
      {
        "name" : "price-residential-type",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-residential-type|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur les caractéristiques tarifaires de l'hébergement"
      },
      {
        "name" : "price-type",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-type|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur le type de tarif"
      },
      {
        "name" : "price-unit",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-unit|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur l'unité de référence pour évaluer le prix des prestations et services"
      },
      {
        "name" : "price-validity-start-date",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-validity-start-date|0.7.0",
        "type" : "date",
        "documentation" : "Permet la recherche sur la dernière date de début de validité du tarif indiqué"
      },
      {
        "name" : "price-welcome-type",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-welcome-type|0.7.0",
        "type" : "token",
        "documentation" : " Permet la recherche sur le tarif applicable à un hébergement permanent ou à un hébergement temporaire"
      },
      {
        "name" : "special-price",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-special-price|0.7.0",
        "type" : "token",
        "documentation" : "Permet la recherche sur la condition tarifaire"
      }]
    },
    {
      "type" : "Practitioner",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner|0.7.0",
      "interaction" : [{
        "code" : "search-type"
      },
      {
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur l'idNat_PS (Professionnel) : Identification nationale du professionnel définie par le CI-SIS"
      },
      {
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Identifiant logique de la ressource"
      },
      {
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated|4.0.1",
        "type" : "date",
        "documentation" : "Date de la dernière mise a jour"
      },
      {
        "name" : "_tag",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-tag|4.0.1",
        "type" : "token",
        "documentation" : "Code de la région de la source de la donnée"
      }]
    },
    {
      "type" : "PractitionerRole",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole|0.7.0",
      "interaction" : [{
        "code" : "search-type"
      },
      {
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Permet la recherche sur l'identifiant de la situation opérationnelle, unique et persistant au niveau national"
      },
      {
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Identifiant logique de la ressource"
      },
      {
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated|4.0.1",
        "type" : "date",
        "documentation" : "Date de la dernière mise a jour"
      },
      {
        "name" : "_tag",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-tag|4.0.1",
        "type" : "token",
        "documentation" : "Code de la région de la source de la donnée"
      }]
    },
    {
      "type" : "Task",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-task|0.7.0",
      "interaction" : [{
        "code" : "search-type"
      },
      {
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "patch",
        "documentation" : "Seuls les attributs de 'premier niveau' peuvent être mis à jour avec l'interaction patch."
      }],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Identifiant logique de la ressource"
      },
      {
        "name" : "_content",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-content|4.0.1",
        "type" : "string",
        "documentation" : "Recherche dans le contenu textuel de la ressource"
      },
      {
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Identifiant logique de la ressource"
      }]
    }],
    "searchParam" : [{
      "name" : "_count",
      "definition" : "http://hl7.org/fhir/SearchParameter/Resource-count",
      "type" : "number",
      "documentation" : "Permet de choisir le nombre de résultat par page (Par défaut la recherche retourne 200 résultats maximum par page.)"
    },
    {
      "name" : "_sort",
      "definition" : "http://hl7.org/fhir/SearchParameter/Resource-source|4.0.1",
      "type" : "token",
      "documentation" : "Permet de choisir dans quel ordre renvoyer les résultats"
    },
    {
      "name" : "_include",
      "definition" : "http://hl7.org/fhir/SearchParameter/Resource-include",
      "type" : "token",
      "documentation" : "Permet d'inclure des ressources référencées par la ressource recherchée dans le résultat"
    },
    {
      "name" : "_revinclude",
      "definition" : "http://hl7.org/fhir/SearchParameter/Resource-revinclude",
      "type" : "token",
      "documentation" : "Permet d'inclure les ressources qui font référence à la ressource recherchée dans le résultat"
    }],
    "operation" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "name" : "export",
      "definition" : "http://hl7.org/fhir/uv/bulkdata/OperationDefinition/export|2.0.0",
      "documentation" : "Utilisation de https://hl7.org/fhir/uv/bulkdata/export.html avec ajout de la valeur _myCompleteExtract pour utiliser le query parameter includeAssociatedData"
    }]
  }]
}

```
