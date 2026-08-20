# ror-sp-healthcareservice-intervention-zone - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-healthcareservice-intervention-zone**

## SearchParameter: ror-sp-healthcareservice-intervention-zone 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-intervention-zone | *Version*:0.7.0 |
| Active as of 2026-08-20 | *Computable Name*:RORHealthcareServiceInterventionZone |

 
Paramètre de recherche décrivant la zone d’intervention 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-healthcareservice-intervention-zone",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-intervention-zone",
  "version" : "0.7.0",
  "name" : "RORHealthcareServiceInterventionZone",
  "status" : "active",
  "date" : "2026-08-20T16:34:37+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche décrivant la zone d'intervention",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "intervention-zone",
  "base" : ["HealthcareService"],
  "type" : "token",
  "expression" : "HealthcareService.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division').extension.where(url='codeTerritorialDivision').value.as(CodeableConcept)"
}

```
