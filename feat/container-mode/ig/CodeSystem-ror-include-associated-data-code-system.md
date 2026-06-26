# Code System (CS) utilisé pour étendre le CS original avec le query parameter includeAssociatedData - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Code System (CS) utilisé pour étendre le CS original avec le query parameter includeAssociatedData**

## CodeSystem: Code System (CS) utilisé pour étendre le CS original avec le query parameter includeAssociatedData (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/ror-include-associated-data-code-system | *Version*:0.7.0 |
| Draft as of 2026-06-26 | *Computable Name*:RorIncludeAssociatedDataCodeSystem |

 
Code system pour étendre https://hl7.org/fhir/uv/bulkdata/CodeSystem-include-associated-data.html pour ajouter l’opération export pour le ROR 

 This Code system is referenced in the content logical definition of the following value sets: 

* [RorIncludeAssociatedDataVS](ValueSet-ror-include-associated-data-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ror-include-associated-data-code-system",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/ror-include-associated-data-code-system",
  "version" : "0.7.0",
  "name" : "RorIncludeAssociatedDataCodeSystem",
  "title" : "Code System (CS) utilisé pour étendre le CS original avec le query parameter includeAssociatedData",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-26T12:10:23+00:00",
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
