# ror-sp-capacity-type - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-capacity-type**

## SearchParameter: ror-sp-capacity-type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-capacity-type | *Version*:0.7.0 |
| Active as of 2026-07-23 | *Computable Name*:RORSPCapacityType |

 
Paramètre de recherche pour récupérer la nature de la capacité. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-capacity-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-capacity-type",
  "version" : "0.7.0",
  "name" : "RORSPCapacityType",
  "status" : "active",
  "date" : "2026-07-23T08:13:15+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche pour récupérer la nature de la capacité.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "capacity-type",
  "base" : ["Location"],
  "type" : "token",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension.where(url='capacityType').value.as(code)"
}

```
