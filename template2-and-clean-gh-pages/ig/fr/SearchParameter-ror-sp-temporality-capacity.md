# ror-sp-temporality-capacity - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## SearchParameter: ror-sp-temporality-capacity 

 
Paramètre de recherche pour récupérer le moment où la capacité sera effective 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-temporality-capacity",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-temporality-capacity",
  "version" : "0.7.0",
  "name" : "RORSPTemporalityCapacity",
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
  "description" : "Paramètre de recherche pour récupérer le moment où la capacité sera effective",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "temporality-capacity",
  "base" : ["Location"],
  "type" : "token",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension.where(url='temporalityCapacity').value.as(code)"
}

```
