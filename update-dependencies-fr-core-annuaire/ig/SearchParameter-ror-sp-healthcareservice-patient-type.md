# ror-sp-healthcareservice-patient-type - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-healthcareservice-patient-type**

## SearchParameter: ror-sp-healthcareservice-patient-type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-patient-type | *Version*:0.7.0 |
| Active as of 2026-08-21 | *Computable Name*:RORHealthcareServiceSupportedPatientType |

 
Paramètre de recherche décrivant le public pris en charge 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-healthcareservice-patient-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-patient-type",
  "version" : "0.7.0",
  "name" : "RORHealthcareServiceSupportedPatientType",
  "status" : "active",
  "date" : "2026-08-21T09:39:43+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche décrivant le public pris en charge",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "patient-type",
  "base" : ["HealthcareService"],
  "type" : "token",
  "expression" : "HealthcareService.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type').extension.where(url='supportedPatientInfo').value.as(CodeableConcept)"
}

```
