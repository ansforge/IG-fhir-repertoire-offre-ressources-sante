# ror-sp-organization-drop-zone - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-organization-drop-zone**

## SearchParameter: ror-sp-organization-drop-zone 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-drop-zone | *Version*:0.7.0 |
| Active as of 2026-08-26 | *Computable Name*:RORSPOrganizationDropZone |

 
Paramètre de recherche permettant d’indiquer s’il y a une zone poser sur le site concerné 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-organization-drop-zone",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-drop-zone",
  "version" : "0.7.0",
  "name" : "RORSPOrganizationDropZone",
  "status" : "active",
  "date" : "2026-08-26T13:04:13+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche permettant d'indiquer s'il y a une zone poser sur le site concerné",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "drop-zone",
  "base" : ["Organization"],
  "type" : "token",
  "expression" : "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-drop-zone').value.as(boolean)"
}

```
