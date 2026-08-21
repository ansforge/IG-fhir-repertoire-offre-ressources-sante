# ror-sp-crisis-type - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-crisis-type**

## SearchParameter: ror-sp-crisis-type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-crisis-type | *Version*:0.7.0 |
| Active as of 2026-08-21 | *Computable Name*:RORSPCrisisType |

 
Paramètre de recherche pour récupérer le type de la crise 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-crisis-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-crisis-type",
  "version" : "0.7.0",
  "name" : "RORSPCrisisType",
  "status" : "active",
  "date" : "2026-08-21T16:03:39+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche pour récupérer le type de la crise",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "crisis-type",
  "base" : ["Location"],
  "type" : "token",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension.where(url='crisisType').value.as(code)"
}

```
