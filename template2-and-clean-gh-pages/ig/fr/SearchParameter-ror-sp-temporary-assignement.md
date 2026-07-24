# ror-sp-temporary-assignement - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## SearchParameter: ror-sp-temporary-assignement 

 
Paramètre de recherche pour récupérer les affectations temporaires 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-temporary-assignement",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-temporary-assignement",
  "version" : "0.7.0",
  "name" : "RORSPTemporaryAssignement",
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
  "description" : "Paramètre de recherche pour récupérer les affectations temporaires",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "temporary-assignement",
  "base" : ["Location"],
  "type" : "token",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension.where(url='temporaryAssignement').value.as(CodeableConcept)"
}

```
