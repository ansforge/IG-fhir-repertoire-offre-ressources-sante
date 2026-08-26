# ror-sp-additional-bed-type - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-additional-bed-type**

## SearchParameter: ror-sp-additional-bed-type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-additional-bed-type | *Version*:0.7.0 |
| Active as of 2026-08-26 | *Computable Name*:RORSPAdditionalBedType |

 
Paramètre de recherche pour récupérer les types des lits disponnibles 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-additional-bed-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-additional-bed-type",
  "version" : "0.7.0",
  "name" : "RORSPAdditionalBedType",
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
  "description" : "Paramètre de recherche pour récupérer les types des lits disponnibles",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "additional-bed-type",
  "base" : ["Location"],
  "type" : "token",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension.where(url='additionalBedType').value.as(code)"
}

```
