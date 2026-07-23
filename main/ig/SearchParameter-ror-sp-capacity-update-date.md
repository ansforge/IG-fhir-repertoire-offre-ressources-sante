# ror-sp-capacity-update-date - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-capacity-update-date**

## SearchParameter: ror-sp-capacity-update-date 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-capacity-update-date | *Version*:0.7.0 |
| Active as of 2026-07-23 | *Computable Name*:RORSPCapacityUpdateDate |

 
Paramètre de recherche pour récupérer la date à jour de la capacité 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-capacity-update-date",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-capacity-update-date",
  "version" : "0.7.0",
  "name" : "RORSPCapacityUpdateDate",
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
  "description" : "Paramètre de recherche pour récupérer la date à jour de la capacité",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "capacity-update-date",
  "base" : ["Location"],
  "type" : "date",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension.where(url='capacityUpdateDate').value.as(dateTime)"
}

```
