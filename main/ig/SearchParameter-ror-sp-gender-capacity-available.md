# ror-sp-gender-capacity-available - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-gender-capacity-available**

## SearchParameter: ror-sp-gender-capacity-available 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-gender-capacity-available | *Version*:0.7.0 |
| Active as of 2026-07-23 | *Computable Name*:RORSPGenderCapacityAvailable |

 
Paramètre de recherche pour récupérer le genre disponible de la capacité. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-gender-capacity-available",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-gender-capacity-available",
  "version" : "0.7.0",
  "name" : "RORSPGenderCapacityAvailable",
  "status" : "active",
  "date" : "2026-07-23T07:54:45+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche pour récupérer le genre disponible de la capacité.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "gender-capacity-available",
  "base" : ["Location"],
  "type" : "token",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension.where(url='genderCapacityAvailable').value.as(code)"
}

```
