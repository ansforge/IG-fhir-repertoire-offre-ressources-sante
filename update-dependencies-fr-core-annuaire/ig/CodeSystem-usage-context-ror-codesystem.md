# UsageContextRORCodeSystem - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UsageContextRORCodeSystem**

## CodeSystem: UsageContextRORCodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/usage-context-ror-codesystem | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:UsageContextRORCodeSystem |

 
CodeSystem pour définir le type de catégorie du contexte d’usage des instances de questionnaire dans le cadre du ROR 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Value Set type pour le contexte d'usage du modèle de saisie](ValueSet-ror-usage-context-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "usage-context-ror-codesystem",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/usage-context-ror-codesystem",
  "version" : "0.7.0",
  "name" : "UsageContextRORCodeSystem",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-21T09:28:33+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour définir le type de catégorie du contexte d'usage des instances de questionnaire dans le cadre du ROR",
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
    "code" : "champAct",
    "display" : "champAct",
    "definition" : "champActivite de l'OffreOperationnelle "
  },
  {
    "code" : "fonctionLieu",
    "display" : "fonctionLieu",
    "definition" : "fonctionLieu de LieuRealisationOffre "
  }]
}

```
