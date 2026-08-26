# OutputTaskRORCodeSystem - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OutputTaskRORCodeSystem**

## CodeSystem: OutputTaskRORCodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/output-task-ror-codesystem | *Version*:0.7.0 |
| Draft as of 2026-08-26 | *Computable Name*:OutputTaskRORCodeSystem |

 
Code System pour la définition des éléments spécifiques de output dans ressource RORTask 

 This Code system is referenced in the content logical definition of the following value sets: 

* Cette terminologie de référence (CodeSystem) n'est pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "output-task-ror-codesystem",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/output-task-ror-codesystem",
  "version" : "0.7.0",
  "name" : "OutputTaskRORCodeSystem",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-26T13:04:13+00:00",
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
