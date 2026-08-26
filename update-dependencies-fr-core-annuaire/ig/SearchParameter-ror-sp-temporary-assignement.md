# ror-sp-temporary-assignement - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-temporary-assignement**

## SearchParameter: ror-sp-temporary-assignement 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-temporary-assignement | *Version*:0.7.0 |
| Active as of 2026-08-26 | *Computable Name*:RORSPTemporaryAssignement |

 
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
  "date" : "2026-08-26T13:04:13+00:00",
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
