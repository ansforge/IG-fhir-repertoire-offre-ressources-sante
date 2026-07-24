# RORHealthcareServicePatientType - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR pour décrire un ensemble de personnes qui répondent à des critères leur permettant de bénéficier de la prestation décrite

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [RORHealthcareService](StructureDefinition-ror-healthcareservice.md)
* Examples for this Extension: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.ror|current/StructureDefinition/StructureDefinition-ror-healthcareservice-patient-type.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ror-healthcareservice-patient-type.csv), [Excel](../StructureDefinition-ror-healthcareservice-patient-type.xlsx), [Schematron](../StructureDefinition-ror-healthcareservice-patient-type.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-healthcareservice-patient-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type",
  "version" : "0.7.0",
  "name" : "RORHealthcareServicePatientType",
  "status" : "draft",
  "date" : "2026-07-24T08:25:42+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR pour décrire un ensemble de personnes qui répondent à des critères leur permettant de  bénéficier de la prestation décrite",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORHealthcareServicePatientType",
    "name" : "Spécification métier vers l'extension ROR HealthcareServicePatientType"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "HealthcareService"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR pour décrire un ensemble de personnes qui répondent à des critères leur permettant de  bénéficier de la prestation décrite",
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareServicePatientType",
        "map" : "Patientele"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:supportedPatientInfo",
      "path" : "Extension.extension",
      "sliceName" : "supportedPatientInfo",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:supportedPatientInfo.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:supportedPatientInfo.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "supportedPatientInfo"
    },
    {
      "id" : "Extension.extension:supportedPatientInfo.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J29-PublicPrisEnCharge-ROR/FHIR/JDV-J29-PublicPrisEnCharge-ROR"
      }
    },
    {
      "id" : "Extension.extension:ageRange",
      "path" : "Extension.extension",
      "sliceName" : "ageRange",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ageRange.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ageRange.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ageRange"
    },
    {
      "id" : "Extension.extension:ageRange.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "Extension.extension:ageRange.value[x].low",
      "path" : "Extension.extension.value[x].low",
      "min" : 1
    },
    {
      "id" : "Extension.extension:ageRange.value[x].high",
      "path" : "Extension.extension.value[x].high",
      "min" : 1
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
