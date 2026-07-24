# OutputTaskRORCodeSystem - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## CodeSystem: OutputTaskRORCodeSystem (Experimental) 

 
Code System pour la définition des éléments spécifiques de output dans ressource RORTask 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "output-task-ror-codesystem",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/output-task-ror-codesystem",
  "version" : "0.7.0",
  "name" : "OutputTaskRORCodeSystem",
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
  "description" : "Code System pour la définition des éléments spécifiques de output dans ressource RORTask",
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
    "code" : "newValue",
    "display" : "newValue",
    "definition" : "Nouvelle valeur renseignée"
  },
  {
    "code" : "identifierAnalyst",
    "display" : "identifierAnalyst",
    "definition" : "identifiant du destinataire du traitement de la demande"
  }]
}

```
