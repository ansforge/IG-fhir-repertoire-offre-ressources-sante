# ror-sp-location-near-insee-code - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-location-near-insee-code**

## SearchParameter: ror-sp-location-near-insee-code 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-location-near-insee-code | *Version*:0.7.0 |
| Active as of 2026-07-23 | *Computable Name*:LocationNearINSEECode |

 
Paramètre de recherche similaire au paramètre spécial “near”, à l’exception que celui-ci pointe sur l’adresse et non pas la position géographique 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-location-near-insee-code",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-location-near-insee-code",
  "version" : "0.7.0",
  "name" : "LocationNearINSEECode",
  "status" : "active",
  "date" : "2026-07-23T08:09:55+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche similaire au paramètre spécial \"near\", à l'exception que celui-ci pointe sur l'adresse et non pas la position géographique",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "near-insee-code",
  "base" : ["Location"],
  "type" : "special",
  "expression" : "Location.address.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/structuredefinition/datatype/fr-address-insee-code').value.as(code)"
}

```
