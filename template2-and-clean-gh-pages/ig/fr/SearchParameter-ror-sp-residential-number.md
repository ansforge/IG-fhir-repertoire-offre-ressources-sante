# ror-sp-residential-number - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## SearchParameter: ror-sp-residential-number 

 
Paramètre de recherche pour récupérer le nombre d'habitation 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-residential-number",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-residential-number",
  "version" : "0.7.0",
  "name" : "RORSPResidentialNumber",
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
  "description" : "Paramètre de recherche pour récupérer le nombre d'habitation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "residential-number",
  "base" : ["Location"],
  "type" : "number",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-residential-capacity').extension.where(url='residentialNumber').value.as(integer)"
}

```
