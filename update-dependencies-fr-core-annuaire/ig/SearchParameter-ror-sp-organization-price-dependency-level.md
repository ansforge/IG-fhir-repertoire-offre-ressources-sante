# ror-sp-organization-price-dependency-level - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-organization-price-dependency-level**

## SearchParameter: ror-sp-organization-price-dependency-level 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-dependency-level | *Version*:0.7.0 |
| Active as of 2026-08-21 | *Computable Name*:RORSPOrganizationPriceDependecyLevel |

 
Paramètre de recherche sur le niveau de dépendance de la personne âgée accueillie 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-organization-price-dependency-level",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-dependency-level",
  "version" : "0.7.0",
  "name" : "RORSPOrganizationPriceDependecyLevel",
  "status" : "active",
  "date" : "2026-08-21T09:39:43+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche sur le niveau de dépendance de la personne âgée accueillie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "price-dependency-level",
  "base" : ["Organization"],
  "type" : "token",
  "expression" : "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price').extension.where(url='dependencyLevel').value.as(CodeableConcept)"
}

```
