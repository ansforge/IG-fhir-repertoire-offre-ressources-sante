# InputTaskRORCodeSystem - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## CodeSystem: InputTaskRORCodeSystem (Expérimental) 

 
Code System pour la définition des éléments spécifiques de input dans ressource RORTask 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* Cette terminologie de référence (CodeSystem) n'est pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "input-task-ror-codesystem",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/input-task-ror-codesystem",
  "version" : "0.7.0",
  "name" : "InputTaskRORCodeSystem",
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
  "description" : "Code System pour la définition des éléments spécifiques de input dans ressource RORTask",
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
  "count" : 6,
  "concept" : [{
    "code" : "ruleErrorId",
    "display" : "ruleErrorId",
    "definition" : "Identifiant de la règle à l'origine de l'anomalie"
  },
  {
    "code" : "errorValue",
    "display" : "errorValue",
    "definition" : "donnée erronée"
  },
  {
    "code" : "proposedValue",
    "display" : "proposedValue",
    "definition" : "nouvelle valeur proposée"
  },
  {
    "code" : "pathElementError",
    "display" : "pathElementError",
    "definition" : "élément en erreur dans la ressource"
  },
  {
    "code" : "systemRequester",
    "display" : "systemRequester",
    "definition" : "système déclarant l'anomalie"
  },
  {
    "code" : "identifierRequester",
    "display" : "identifierRequester",
    "definition" : "Identifiant du déclarant de l'anomalie"
  }]
}

```
