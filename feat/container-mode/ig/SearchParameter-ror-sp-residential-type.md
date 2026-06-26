# ror-sp-residential-type - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-residential-type**

## SearchParameter: ror-sp-residential-type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-residential-type | *Version*:0.7.0 |
| Active as of 2026-06-26 | *Computable Name*:RORSPResidentialType |

 
Paramètre de recherche pour récupérer le type d’habitation 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-residential-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-residential-type",
  "version" : "0.7.0",
  "name" : "RORSPResidentialType",
  "status" : "active",
  "date" : "2026-06-26T12:10:23+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche pour récupérer le type d'habitation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "residential-type",
  "base" : ["Location"],
  "type" : "token",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-residential-capacity').extension.where(url='residentialType').value.as(CodeableConcept)"
}

```
