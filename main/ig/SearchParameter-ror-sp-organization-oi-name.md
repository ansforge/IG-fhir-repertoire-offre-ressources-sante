# ror-sp-organization-oi-name - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-organization-oi-name**

## SearchParameter: ror-sp-organization-oi-name 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-oi-name | *Version*:0.7.0 |
| Active as of 2026-07-23 | *Computable Name*:RORSPOrganizationOIName |

 
Paramètre de recherche sur le nom de l’organisation interne 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-organization-oi-name",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-oi-name",
  "version" : "0.7.0",
  "name" : "RORSPOrganizationOIName",
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
  "description" : "Paramètre de recherche sur le nom de l'organisation interne",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "oi-name",
  "base" : ["Organization"],
  "type" : "string",
  "expression" : "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-oi-name').value.as(string)"
}

```
