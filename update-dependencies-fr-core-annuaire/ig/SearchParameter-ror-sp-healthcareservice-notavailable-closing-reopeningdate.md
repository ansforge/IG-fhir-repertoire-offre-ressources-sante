# ror-sp-healthcareservice-notavailable-closing-reopeningdate - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-healthcareservice-notavailable-closing-reopeningdate**

## SearchParameter: ror-sp-healthcareservice-notavailable-closing-reopeningdate 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-notavailable-closing-reopeningdate | *Version*:0.7.0 |
| Active as of 2026-07-23 | *Computable Name*:RORSPHealthcareServiceNotAvailableClosingReopeningDate |

 
Paramètre de recherche pour rechercher la date dans la période de fermeture (during.start) et de réouverture prévisionnelle (during.end). 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-healthcareservice-notavailable-closing-reopeningdate",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-notavailable-closing-reopeningdate",
  "version" : "0.7.0",
  "name" : "RORSPHealthcareServiceNotAvailableClosingReopeningDate",
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
  "description" : "Paramètre de recherche pour rechercher la date dans la période de fermeture (during.start) et de réouverture prévisionnelle (during.end).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "notavailable-closing-reopeningdate",
  "base" : ["HealthcareService"],
  "type" : "date",
  "expression" : "HealthcareService.notAvailable.where(id='closingReopeningDate').during",
  "comparator" : ["eq",
  "ne",
  "gt",
  "ge",
  "lt",
  "le",
  "sa",
  "eb",
  "ap"]
}

```
