# ror-sp-organization-period-end - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ror-sp-organization-period-end**

## SearchParameter: ror-sp-organization-period-end 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-period-end | *Version*:0.7.0 |
| Active as of 2026-07-23 | *Computable Name*:ROROrganizationPeriodEnd |

 
Paramètre de recherche décrivant la date de fermeture de l’entité géographique 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-organization-period-end",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-organization-period-end",
  "version" : "0.7.0",
  "name" : "ROROrganizationPeriodEnd",
  "status" : "active",
  "date" : "2026-07-23T07:54:45+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche décrivant la date de fermeture de l'entité géographique",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "period-end",
  "base" : ["Organization"],
  "type" : "date",
  "expression" : "Organization.extension.where(url='http://hl7.org/fhir/StructureDefinition/organization-period').value.as(Period).end"
}

```
