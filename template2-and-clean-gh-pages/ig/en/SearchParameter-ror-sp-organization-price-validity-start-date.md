# ror-sp-organization-price-validity-start-date - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## SearchParameter: ror-sp-organization-price-validity-start-date 

 
Paramètre de recherche sur la dernière date de début de validité du tarif indiqué 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-organization-price-validity-start-date",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-price-validity-start-date",
  "version" : "0.7.0",
  "name" : "RORSPOrganizationPriceValidityStartDate",
  "status" : "active",
  "date" : "2026-07-24T08:16:41+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche sur la dernière date de début de validité du tarif indiqué",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "price-validity-start-date",
  "base" : ["Organization"],
  "type" : "date",
  "expression" : "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization').extension.where(url='startDate').value.as(date)"
}

```
