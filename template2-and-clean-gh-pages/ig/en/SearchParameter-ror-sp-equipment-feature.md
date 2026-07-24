# ror-sp-equipment-feature - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## SearchParameter: ror-sp-equipment-feature 

 
Paramètre de recherche pour récupérer le type de caractéristique d'un equipement. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-equipment-feature",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-equipment-feature",
  "version" : "0.7.0",
  "name" : "RORSPEquipmentFeature",
  "status" : "active",
  "date" : "2026-07-24T08:16:41+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche pour récupérer le type de caractéristique d'un equipement.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "equipment-feature",
  "base" : ["Location"],
  "type" : "token",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit').extension.where(url='equipmentFeature').value.as(CodeableConcept)"
}

```
