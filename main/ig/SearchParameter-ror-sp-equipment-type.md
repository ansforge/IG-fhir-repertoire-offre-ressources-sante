# ror-sp-equipment-type - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-equipment-type**

## SearchParameter: ror-sp-equipment-type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-equipment-type | *Version*:0.7.0 |
| Active as of 2026-07-23 | *Computable Name*:RORSPEquipmentType |

 
Paramètre de recherche pour récupérer le type d’un équipement. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-equipment-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-equipment-type",
  "version" : "0.7.0",
  "name" : "RORSPEquipmentType",
  "status" : "active",
  "date" : "2026-07-23T08:00:07+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche pour récupérer le type d'un équipement.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "equipment-type",
  "base" : ["Location"],
  "type" : "token",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment').extension.where(url='equipmentType').value.as(CodeableConcept)"
}

```
