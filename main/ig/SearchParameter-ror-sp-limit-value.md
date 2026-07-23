# ror-sp-limit-value - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-limit-value**

## SearchParameter: ror-sp-limit-value 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-limit-value | *Version*:0.7.0 |
| Active as of 2026-07-23 | *Computable Name*:RORSPLimitValue |

 
Paramètre de recherche pour récupérer la valeur limite (poids, taille, etc..) de l’équipement 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-limit-value",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-limit-value",
  "version" : "0.7.0",
  "name" : "RORSPLimitValue",
  "status" : "active",
  "date" : "2026-07-23T08:13:15+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche pour récupérer la valeur limite (poids, taille, etc..) de l'équipement",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "limit-value",
  "base" : ["Location"],
  "type" : "quantity",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit').extension.where(url='limitValue').value.as(Quantity)"
}

```
