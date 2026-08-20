# RORTask - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORTask**

## Resource Profile: RORTask 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-task | *Version*:0.7.0 |
| Draft as of 2026-08-20 | *Computable Name*:RORTask |

 
Anomalie concerant une donnée dans une ressource du ROR 

**Utilisations:**

* Référence ce Profil: [RORTask](StructureDefinition-ror-task.md)
* Exemples pour ce/t/te Profil: [Task/ror-task-exemple](Task-ror-task-exemple.md)
* CapabilityStatements utilisant ce Profil: [ROR-Consommateur](CapabilityStatement-ror-consommateur.md) and [ROR-Serveur](CapabilityStatement-ror-serveur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-task)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-task.csv), [Excel](StructureDefinition-ror-task.xlsx), [Schematron](StructureDefinition-ror-task.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-task",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-task",
  "version" : "0.7.0",
  "name" : "RORTask",
  "status" : "draft",
  "date" : "2026-08-20T16:34:37+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Anomalie concerant une donnée dans une ressource du ROR",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Task",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Task",
      "path" : "Task"
    },
    {
      "id" : "Task.identifier",
      "path" : "Task.identifier",
      "short" : "Identifiant de l'anomalie",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.partOf",
      "path" : "Task.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Task",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-task"]
      }]
    },
    {
      "id" : "Task.status",
      "path" : "Task.status",
      "mustSupport" : true
    },
    {
      "id" : "Task.businessStatus",
      "path" : "Task.businessStatus",
      "short" : "Statut métier de traitement de l'anomalie",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J244-StatutMetierAnomalie-ROR/FHIR/JDV-J244-StatutMetierAnomalie-ROR"
      }
    },
    {
      "id" : "Task.code",
      "path" : "Task.code",
      "short" : "Thématique de l'anomalie exemples :Exactitude, Complétude, Exhaustivité",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J241-ThematiqueAnomalie-ROR/FHIR/JDV-J241-ThematiqueAnomalie-ROR"
      }
    },
    {
      "id" : "Task.description",
      "path" : "Task.description",
      "short" : "Description de l'anomalie",
      "mustSupport" : true
    },
    {
      "id" : "Task.focus",
      "path" : "Task.focus",
      "short" : "référence vers la ressources en anomalie",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Task.executionPeriod.start",
      "path" : "Task.executionPeriod.start",
      "short" : "Date d'envoi au destinataire du traitement de l'anomalie",
      "mustSupport" : true
    },
    {
      "id" : "Task.executionPeriod.end",
      "path" : "Task.executionPeriod.end",
      "short" : "Date de fin de traitement de l'anomalie par le destinataire",
      "mustSupport" : true
    },
    {
      "id" : "Task.authoredOn",
      "path" : "Task.authoredOn",
      "short" : "Date création de l'anomalie",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Task.lastModified",
      "path" : "Task.lastModified",
      "short" : "Date de dernière modification",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Task.requester",
      "path" : "Task.requester",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-internal-organization",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-core-organization-uf",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.owner",
      "path" : "Task.owner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-internal-organization",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-core-organization-uf",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.location",
      "path" : "Task.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Location",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location"]
      }]
    },
    {
      "id" : "Task.reasonCode",
      "path" : "Task.reasonCode",
      "short" : "Type d'action proposée en réponse",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J242-ActionAnomalie-ROR/FHIR/JDV-J242-ActionAnomalie-ROR"
      }
    },
    {
      "id" : "Task.restriction.recipient",
      "path" : "Task.restriction.recipient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-internal-organization",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-core-organization-uf",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole"]
      }]
    },
    {
      "id" : "Task.input",
      "path" : "Task.input",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "description" : "slicing pour définir les entrants",
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Eléments en entrée pour définir l'anomalie",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Task.input:ruleErrorId",
      "path" : "Task.input",
      "sliceName" : "ruleErrorId",
      "short" : "Identifiant de la règle à l'origine de l'anomalie",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:ruleErrorId.type",
      "path" : "Task.input.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/input-task-ror-codesystem",
          "code" : "ruleErrorId"
        }]
      }
    },
    {
      "id" : "Task.input:ruleErrorId.value[x]",
      "path" : "Task.input.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Task.input:errorValue",
      "path" : "Task.input",
      "sliceName" : "errorValue",
      "short" : "donnée erronée",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:errorValue.type",
      "path" : "Task.input.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/input-task-ror-codesystem",
          "code" : "errorValue"
        }]
      }
    },
    {
      "id" : "Task.input:proposedValue",
      "path" : "Task.input",
      "sliceName" : "proposedValue",
      "short" : "nouvelle valeur proposée",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:proposedValue.type",
      "path" : "Task.input.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/input-task-ror-codesystem",
          "code" : "proposedValue"
        }]
      }
    },
    {
      "id" : "Task.input:pathElementError",
      "path" : "Task.input",
      "sliceName" : "pathElementError",
      "short" : "élément en erreur dans la ressource",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:pathElementError.type",
      "path" : "Task.input.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/input-task-ror-codesystem",
          "code" : "pathElementError"
        }]
      }
    },
    {
      "id" : "Task.input:pathElementError.value[x]",
      "path" : "Task.input.value[x]",
      "type" : [{
        "code" : "Expression"
      }]
    },
    {
      "id" : "Task.input:systemRequester",
      "path" : "Task.input",
      "sliceName" : "systemRequester",
      "short" : "système déclarant l'anomalie",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:systemRequester.type",
      "path" : "Task.input.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/input-task-ror-codesystem",
          "code" : "systemRequester"
        }]
      }
    },
    {
      "id" : "Task.input:systemRequester.value[x]",
      "path" : "Task.input.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Task.input:identifierRequester",
      "path" : "Task.input",
      "sliceName" : "identifierRequester",
      "short" : "Identifiant du déclarant de l'anomalie",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:identifierRequester.type",
      "path" : "Task.input.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/input-task-ror-codesystem",
          "code" : "identifierRequester"
        }]
      }
    },
    {
      "id" : "Task.input:identifierRequester.value[x]",
      "path" : "Task.input.value[x]",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "Task.output",
      "path" : "Task.output",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "description" : "slicing concernant le traitement de l'anomalie",
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Eléments en sortie concerant le traitement de l'anomalie"
    },
    {
      "id" : "Task.output:newValue",
      "path" : "Task.output",
      "sliceName" : "newValue",
      "short" : "Valeur corrigée",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:newValue.type",
      "path" : "Task.output.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/output-task-ror-codesystem",
          "code" : "newValue"
        }]
      }
    },
    {
      "id" : "Task.output:identifierAnalyst",
      "path" : "Task.output",
      "sliceName" : "identifierAnalyst",
      "short" : "identifiant du destinataire du traitement de la demande",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:identifierAnalyst.type",
      "path" : "Task.output.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/output-task-ror-codesystem",
          "code" : "identifierAnalyst"
        }]
      }
    },
    {
      "id" : "Task.output:identifierAnalyst.value[x]",
      "path" : "Task.output.value[x]",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
