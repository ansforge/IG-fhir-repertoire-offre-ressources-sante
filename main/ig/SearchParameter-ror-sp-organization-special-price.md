# ror-sp-organization-special-price - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-organization-special-price**

## SearchParameter: ror-sp-organization-special-price 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-special-price | *Version*:0.7.0 |
| Active as of 2026-07-23 | *Computable Name*:RORSPOrganizationPriceSpecialPrice |

 
Paramètre de recherche sur la condition tarifaire 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-organization-special-price",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-special-price",
  "version" : "0.7.0",
  "name" : "RORSPOrganizationPriceSpecialPrice",
  "status" : "active",
  "date" : "2026-07-23T07:54:45+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche sur la condition tarifaire",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "special-price",
  "base" : ["Organization"],
  "type" : "token",
  "expression" : "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price').extension.where(url='dependencyLevel').value.as(CodeableConcept)"
}

```
