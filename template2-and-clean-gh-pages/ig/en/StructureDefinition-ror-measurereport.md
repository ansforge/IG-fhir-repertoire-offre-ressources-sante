# RORMeasureReport - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Resource Profile: RORMeasureReport 

 
Valeur pour un indicateur de pilotage du ROR National 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.ror|current/StructureDefinition/StructureDefinition-ror-measurereport.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ror-measurereport.csv), [Excel](../StructureDefinition-ror-measurereport.xlsx), [Schematron](../StructureDefinition-ror-measurereport.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-measurereport",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-measurereport",
  "version" : "0.7.0",
  "name" : "RORMeasureReport",
  "status" : "draft",
  "date" : "2026-07-24T08:16:41+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Valeur pour un indicateur de pilotage du ROR National",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MeasureReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MeasureReport|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MeasureReport",
      "path" : "MeasureReport"
    },
    {
      "id" : "MeasureReport.identifier",
      "path" : "MeasureReport.identifier",
      "short" : "Identifiant de l'indicateur de pilotage du ROR National",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.status",
      "path" : "MeasureReport.status",
      "short" : "Statut de la mesure de l'indicateur de pilotage du ROR National",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.type",
      "path" : "MeasureReport.type",
      "short" : "Type de mesure",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.measure",
      "path" : "MeasureReport.measure",
      "short" : "L'indicateur de pilotage du ROR National calculé",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.subject",
      "path" : "MeasureReport.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner|0.7.0",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole|0.7.0",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location|0.7.0"]
      }]
    },
    {
      "id" : "MeasureReport.date",
      "path" : "MeasureReport.date",
      "short" : "Date de la mesure",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.reporter",
      "path" : "MeasureReport.reporter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner|0.7.0",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole|0.7.0",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location|0.7.0",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization|0.7.0"]
      }]
    },
    {
      "id" : "MeasureReport.period",
      "path" : "MeasureReport.period",
      "short" : "Période de la mesure",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.code",
      "path" : "MeasureReport.group.code",
      "short" : "Code du groupe popu",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.measureScore",
      "path" : "MeasureReport.group.measureScore",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
