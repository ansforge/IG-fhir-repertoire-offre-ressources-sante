# ror-sp-capacity-status - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## SearchParameter: ror-sp-capacity-status 

 
Paramètre de recherche pour récupérer le statut de la capacité. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ror-sp-capacity-status",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/SearchParameter/ror-sp-capacity-status",
  "version" : "0.7.0",
  "name" : "RORSPCapacityStatus",
  "status" : "active",
  "date" : "2026-07-24T08:25:42+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Paramètre de recherche pour récupérer le statut de la capacité.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "capacity-status",
  "base" : ["Location"],
  "type" : "token",
  "expression" : "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension.where(url='capacityStatus').value.as(code)"
}

```
