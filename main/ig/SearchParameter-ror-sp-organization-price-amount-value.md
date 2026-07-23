# ror-sp-organization-price-amount-value - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-organization-price-amount-value**

## SearchParameter: ror-sp-organization-price-amount-value 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-amount-value | *Version*:0.7.0 |
| Active as of 2026-07-23 | *Computable Name*:RORSPOrganizationPriceAmountValue |

 
Paramètre de recherche sur la valeur du tarif des prestations et services 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-organization-price-amount-value",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-amount-value",
  "version" : "0.7.0",
  "name" : "RORSPOrganizationPriceAmountValue",
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
  "description" : "Paramètre de recherche sur la valeur du tarif des prestations et services",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "amount-value",
  "base" : ["Organization"],
  "type" : "number",
  "expression" : "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price').extension.where(url='amount').value.as(Money).value"
}

```
