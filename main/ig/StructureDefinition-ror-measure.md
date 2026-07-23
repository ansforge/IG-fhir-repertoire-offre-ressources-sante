# RORMeasure - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORMeasure**

## Resource Profile: RORMeasure 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-measure | *Version*:0.7.0 |
| Draft as of 2026-07-23 | *Computable Name*:RORMeasure |

 
Définition de l’indicateur de pilotage du ROR National 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-measure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-measure.csv), [Excel](StructureDefinition-ror-measure.xlsx), [Schematron](StructureDefinition-ror-measure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-measure",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-measure",
  "version" : "0.7.0",
  "name" : "RORMeasure",
  "status" : "draft",
  "date" : "2026-07-23T08:13:15+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Définition de l'indicateur de pilotage du ROR National",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Measure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Measure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Measure",
      "path" : "Measure"
    },
    {
      "id" : "Measure.identifier",
      "path" : "Measure.identifier",
      "short" : "Identifiant de l'indicateur de pilotage du ROR National",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Measure.status",
      "path" : "Measure.status",
      "short" : "Statut de l'indicateur de pilotage du ROR National",
      "mustSupport" : true
    },
    {
      "id" : "Measure.date",
      "path" : "Measure.date",
      "short" : "Date de dernière modification de l'indicateur",
      "mustSupport" : true
    },
    {
      "id" : "Measure.purpose",
      "path" : "Measure.purpose",
      "short" : "Objectif de l'indicateur",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Measure.topic",
      "path" : "Measure.topic",
      "short" : "Sujet de l'indicateur",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Measure.type",
      "path" : "Measure.type",
      "short" : "Type d'indicateur",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Measure.group.code",
      "path" : "Measure.group.code",
      "short" : "Code du groupe popu",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Measure.group.description",
      "path" : "Measure.group.description",
      "short" : "Description du groupe popu exemple ROR N",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
