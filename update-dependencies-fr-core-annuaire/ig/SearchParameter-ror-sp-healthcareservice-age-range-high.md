# ror-sp-healthcareservice-age-range-high - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-healthcareservice-age-range-high**

## SearchParameter: ror-sp-healthcareservice-age-range-high 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-age-range-high | *Version*:0.7.0 |
| Active as of 2026-08-21 | *Computable Name*:RORHealthcareServiceAgeRangeHigh |

 
Paramètre de recherche décrivant l’age maximum de la patientèle 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-healthcareservice-age-range-high",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-age-range-high",
  "version" : "0.7.0",
  "name" : "RORHealthcareServiceAgeRangeHigh",
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
  "description" : "Paramètre de recherche décrivant l'age maximum de la patientèle",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "age-range-high",
  "base" : ["HealthcareService"],
  "type" : "quantity",
  "expression" : "HealthcareService.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type').extension.where(url = 'ageRange').value.as(Range).high",
  "comparator" : ["eq",
  "ne",
  "gt",
  "lt",
  "ge",
  "le",
  "sa",
  "eb",
  "ap"]
}

```
