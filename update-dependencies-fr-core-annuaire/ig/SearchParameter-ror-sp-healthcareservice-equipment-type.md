# ror-sp-healthcareservice-equipment-type - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-healthcareservice-equipment-type**

## SearchParameter: ror-sp-healthcareservice-equipment-type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-equipment-type | *Version*:0.7.0 |
| Active as of 2026-08-21 | *Computable Name*:RORHealthcareServiceEquipmentType |

 
Paramètre de recherche décrivant le type d’équipement de l’offre opérationnelle 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-healthcareservice-equipment-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-equipment-type",
  "version" : "0.7.0",
  "name" : "RORHealthcareServiceEquipmentType",
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
  "description" : "Paramètre de recherche décrivant le type d'équipement de l'offre opérationnelle",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "equipment-type",
  "base" : ["HealthcareService"],
  "type" : "token",
  "expression" : "HealthcareService.extension.where(url = 'http://interop.esante.gouv.fr/ig/fhir/ror30/StructureDefinition/ror-healthcareservice-equipement').extension.where(url = 'equipmentType').value.as(CodeableConcept)"
}

```
