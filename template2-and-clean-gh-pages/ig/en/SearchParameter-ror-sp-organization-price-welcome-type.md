# ror-sp-organization-price-welcome-type - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## SearchParameter: ror-sp-organization-price-welcome-type 

 
Paramètre de recherche décrivant si le tarif s'applique à un hébergement permanent ou à un hébergement temporaire 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-organization-price-welcome-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-welcome-type",
  "version" : "0.7.0",
  "name" : "RORSPOrganizationPriceWelcomeType",
  "status" : "active",
  "date" : "2026-07-24T08:25:42+00:00",
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
