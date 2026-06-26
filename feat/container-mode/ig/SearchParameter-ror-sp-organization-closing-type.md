# ror-sp-organization-closing-type - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-organization-closing-type**

## SearchParameter: ror-sp-organization-closing-type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-closing-type | *Version*:0.7.0 |
| Active as of 2026-06-26 | *Computable Name*:ROROrganizationClosingType |

 
Paramètre de recherche décrivant le type de fermeture de l’entité géographique, au sens des règles de gestion du SI FINESS 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-organization-closing-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-closing-type",
  "version" : "0.7.0",
  "name" : "ROROrganizationClosingType",
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
  "description" : "Paramètre de recherche décrivant le type de fermeture de l'entité géographique, au sens des règles de gestion du SI FINESS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "closing-type",
  "base" : ["Organization"],
  "type" : "token",
  "expression" : "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-closing-type').value.as(CodeableConcept)"
}

```
