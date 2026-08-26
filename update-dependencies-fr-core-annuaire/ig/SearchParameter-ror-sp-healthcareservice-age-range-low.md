# ror-sp-healthcareservice-age-range-low - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-healthcareservice-age-range-low**

## SearchParameter: ror-sp-healthcareservice-age-range-low 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-age-range-low | *Version*:0.7.0 |
| Active as of 2026-08-26 | *Computable Name*:RORHealthcareServiceAgeRangeLow |

 
Paramètre de recherche décrivant l’age minimum de la patientèle 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-healthcareservice-age-range-low",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-age-range-low",
  "version" : "0.7.0",
  "name" : "RORHealthcareServiceAgeRangeLow",
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
  "description" : "Paramètre de recherche décrivant l'age minimum de la patientèle",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "age-range-low",
  "base" : ["HealthcareService"],
  "type" : "quantity",
  "expression" : "HealthcareService.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type').extension.where(url = 'ageRange').value.as(Range).low",
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
