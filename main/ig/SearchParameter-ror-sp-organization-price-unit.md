# ror-sp-organization-price-unit - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-organization-price-unit**

## SearchParameter: ror-sp-organization-price-unit 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-unit | *Version*:0.7.0 |
| Active as of 2026-07-23 | *Computable Name*:RORSPOrganizationPriceUnit |

 
Paramètre de recherche sur l’unité de référence pour évaluer le prix des prestations et services 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-organization-price-unit",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-unit",
  "version" : "0.7.0",
  "name" : "RORSPOrganizationPriceUnit",
  "status" : "active",
  "date" : "2026-07-23T08:00:07+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche sur l'unité de référence pour évaluer le prix des prestations et services",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "price-unit",
  "base" : ["Organization"],
  "type" : "token",
  "expression" : "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price').extension.where(url='priceUnit').value.as(CodeableConcept)"
}

```
