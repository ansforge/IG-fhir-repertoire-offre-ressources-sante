# ror-sp-healthcareservice-psychiatric-sector - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-healthcareservice-psychiatric-sector**

## SearchParameter: ror-sp-healthcareservice-psychiatric-sector 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-psychiatric-sector | *Version*:0.7.0 |
| Active as of 2026-07-23 | *Computable Name*:RORHealthcareServicePsychiatricSector |

 
Paramètre de recherche décrivrant le secteur psychiatrique de l’offre opérationnelle 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-healthcareservice-psychiatric-sector",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-psychiatric-sector",
  "version" : "0.7.0",
  "name" : "RORHealthcareServicePsychiatricSector",
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
  "description" : "Paramètre de recherche décrivrant le secteur psychiatrique de l'offre opérationnelle",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "psychiatric-sector",
  "base" : ["HealthcareService"],
  "type" : "string",
  "expression" : "HealthcareService.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-psychiatric-sector').value.as(string)"
}

```
