# ror-sp-nb-capacity - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-nb-capacity**

## SearchParameter: ror-sp-nb-capacity 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-nb-capacity | *Version*:0.7.0 |
| Active as of 2026-08-21 | *Computable Name*:RORSPNbCapacity |

 
Paramètre de recherche pour récupérer le nombre de la capacité. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-nb-capacity",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-nb-capacity",
  "version" : "0.7.0",
  "name" : "RORSPNbCapacity",
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
  "description" : "Paramètre de recherche pour récupérer le nombre de la capacité.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "nb-capacity",
  "base" : ["Location"],
  "type" : "number",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension.where(url='nbCapacity').value.as(integer)"
}

```
