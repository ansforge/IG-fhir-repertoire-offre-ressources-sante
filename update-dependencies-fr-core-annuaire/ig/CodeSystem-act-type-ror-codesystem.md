# ActTypeRORCodeSystem - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ActTypeRORCodeSystem**

## CodeSystem: ActTypeRORCodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/act-type-ror-codesystem | *Version*:0.7.0 |
| Draft as of 2026-07-23 | *Computable Name*:ActTypeRORCodeSystem |

 
CodeSystem pour le type d’acte pour les slices de characteristic concernant les actes dans la ressource ROR HealthcareService 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ActTypeRORValueSet](ValueSet-act-type-ror-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "act-type-ror-codesystem",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/act-type-ror-codesystem",
  "version" : "0.7.0",
  "name" : "ActTypeRORCodeSystem",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-23T08:09:55+00:00",
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
