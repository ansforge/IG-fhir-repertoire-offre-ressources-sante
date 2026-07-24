# Code System (CS) utilisé pour étendre le CS original avec le query parameter includeAssociatedData - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## CodeSystem: Code System (CS) utilisé pour étendre le CS original avec le query parameter includeAssociatedData (Expérimental) 

 
Code system pour étendre https://hl7.org/fhir/uv/bulkdata/CodeSystem-include-associated-data.html pour ajouter l'opération export pour le ROR 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [RorIncludeAssociatedDataVS](ValueSet-ror-include-associated-data-vs.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ror-include-associated-data-code-system",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/ror-include-associated-data-code-system",
  "version" : "0.7.0",
  "name" : "RorIncludeAssociatedDataCodeSystem",
  "title" : "Code System (CS) utilisé pour étendre le CS original avec le query parameter includeAssociatedData",
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
  "description" : "Code system pour étendre https://hl7.org/fhir/uv/bulkdata/CodeSystem-include-associated-data.html pour ajouter l'opération export pour le ROR",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "_myCompleteExtract",
    "display" : "Extraction complète",
    "definition" : "Valeur personnalisée pour  le query parameter includeAssociatedData de l'opération export, afin d'inclure toutes les ressources liées à la ressource identifiée dans _type."
  }]
}

```
