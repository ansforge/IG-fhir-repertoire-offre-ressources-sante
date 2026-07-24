# UsageContextRORCodeSystem - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## CodeSystem: UsageContextRORCodeSystem (Experimental) 

 
CodeSystem pour définir le type de catégorie du contexte d'usage des instances de questionnaire dans le cadre du ROR 

This Code system is referenced in the definition of the following value sets:

* [RORUsageContextTypeVS](ValueSet-ror-usage-context-type-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "usage-context-ror-codesystem",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/usage-context-ror-codesystem",
  "version" : "0.7.0",
  "name" : "UsageContextRORCodeSystem",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-24T08:16:41+00:00",
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
