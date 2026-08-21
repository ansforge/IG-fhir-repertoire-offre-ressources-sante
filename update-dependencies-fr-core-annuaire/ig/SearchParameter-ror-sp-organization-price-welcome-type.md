# ror-sp-organization-price-welcome-type - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-organization-price-welcome-type**

## SearchParameter: ror-sp-organization-price-welcome-type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-welcome-type | *Version*:0.7.0 |
| Active as of 2026-08-21 | *Computable Name*:RORSPOrganizationPriceWelcomeType |

 
Paramètre de recherche décrivant si le tarif s’applique à un hébergement permanent ou à un hébergement temporaire 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-organization-price-welcome-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-welcome-type",
  "version" : "0.7.0",
  "name" : "RORSPOrganizationPriceWelcomeType",
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
  "description" : "Paramètre de recherche décrivant si le tarif s'applique à un hébergement permanent ou à un hébergement temporaire",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "price-welcome-type",
  "base" : ["Organization"],
  "type" : "token",
  "expression" : "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price').extension.where(url='welcomeType').value.as(CodeableConcept)"
}

```
