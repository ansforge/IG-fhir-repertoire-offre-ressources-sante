# ror-sp-capacity-closing-type - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-capacity-closing-type**

## SearchParameter: ror-sp-capacity-closing-type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-capacity-closing-type | *Version*:0.7.0 |
| Active as of 2026-08-21 | *Computable Name*:RORSPCapacityClosingType |

 
Paramètre de recherche pour récupérer le type de la fermeture de la capacité 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-capacity-closing-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-capacity-closing-type",
  "version" : "0.7.0",
  "name" : "RORSPCapacityClosingType",
  "status" : "active",
  "date" : "2026-08-21T14:30:36+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche pour récupérer le type de la fermeture de la capacité",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "capacity-closing-type",
  "base" : ["Location"],
  "type" : "token",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension.where(url='capacityClosingType').value.as(code)"
}

```
