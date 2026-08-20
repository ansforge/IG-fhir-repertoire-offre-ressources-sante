# ror-sp-organization-price-residential-type - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-organization-price-residential-type**

## SearchParameter: ror-sp-organization-price-residential-type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-residential-type | *Version*:0.7.0 |
| Active as of 2026-08-20 | *Computable Name*:RORSPOrganizationPriceResidentialType |

 
Paramètre de recherche sur les caractéristiques de l’hébergement 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-organization-price-residential-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-residential-type",
  "version" : "0.7.0",
  "name" : "RORSPOrganizationPriceResidentialType",
  "status" : "active",
  "date" : "2026-08-20T16:34:37+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche sur les caractéristiques de l'hébergement",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "price-residential-type",
  "base" : ["Organization"],
  "type" : "token",
  "expression" : "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price').extension.where(url='residentialType').value.as(CodeableConcept)"
}

```
