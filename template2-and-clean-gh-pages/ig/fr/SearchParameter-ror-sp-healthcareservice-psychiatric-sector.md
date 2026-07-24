# ror-sp-healthcareservice-psychiatric-sector - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## SearchParameter: ror-sp-healthcareservice-psychiatric-sector 

 
Paramètre de recherche décrivrant le secteur psychiatrique de l'offre opérationnelle 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-healthcareservice-psychiatric-sector",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-psychiatric-sector",
  "version" : "0.7.0",
  "name" : "RORHealthcareServicePsychiatricSector",
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
  "description" : "Paramètre de recherche décrivrant le secteur psychiatrique de l'offre opérationnelle",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "psychiatric-sector",
  "base" : ["HealthcareService"],
  "type" : "string",
  "expression" : "HealthcareService.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-psychiatric-sector').value.as(string)"
}

```
