# ror-sp-location-commune-cog - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## SearchParameter: ror-sp-location-commune-cog 

 
Paramètre de recherche sur le code officiel géographique (cog) de la commune dans laquelle le lieu est situé 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-location-commune-cog",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-location-commune-cog",
  "version" : "0.7.0",
  "name" : "RORSPLocationCommuneCOG",
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
  "description" : "Paramètre de recherche sur le code officiel géographique (cog) de la commune dans laquelle le lieu est situé",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "commune-cog",
  "base" : ["Location"],
  "type" : "token",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog').value.as(CodeableConcept)"
}

```
