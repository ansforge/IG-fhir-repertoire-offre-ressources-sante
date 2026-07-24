# ActTypeRORCodeSystem - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## CodeSystem: ActTypeRORCodeSystem (Expérimental) 

 
CodeSystem pour le type d'acte pour les slices de characteristic concernant les actes dans la ressource ROR HealthcareService 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [ActTypeRORValueSet](ValueSet-act-type-ror-valueset.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "act-type-ror-codesystem",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/act-type-ror-codesystem",
  "version" : "0.7.0",
  "name" : "ActTypeRORCodeSystem",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-24T08:25:42+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour le type d'acte pour les slices de characteristic concernant les actes dans la ressource ROR HealthcareService",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "compositional" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "specificAct",
    "display" : "specificAct",
    "definition" : "Acte spécifique"
  },
  {
    "code" : "outsideOfficeAct",
    "display" : "outsideOfficeAct",
    "definition" : "Acte hors cabinet"
  }]
}

```
