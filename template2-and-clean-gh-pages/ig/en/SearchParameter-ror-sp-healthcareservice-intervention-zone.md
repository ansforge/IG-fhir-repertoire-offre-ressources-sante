# ror-sp-healthcareservice-intervention-zone - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## SearchParameter: ror-sp-healthcareservice-intervention-zone 

 
Paramètre de recherche décrivant la zone d'intervention 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-healthcareservice-intervention-zone",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-healthcareservice-intervention-zone",
  "version" : "0.7.0",
  "name" : "RORHealthcareServiceInterventionZone",
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
  "description" : "Paramètre de recherche décrivant la zone d'intervention",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "intervention-zone",
  "base" : ["HealthcareService"],
  "type" : "token",
  "expression" : "HealthcareService.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division').extension.where(url='codeTerritorialDivision').value.as(CodeableConcept)"
}

```
