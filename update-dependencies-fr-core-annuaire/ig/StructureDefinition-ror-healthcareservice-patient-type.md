# RORHealthcareServicePatientType - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORHealthcareServicePatientType**

## Extension: RORHealthcareServicePatientType 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:RORHealthcareServicePatientType |

Extension créée dans le cadre du ROR pour décrire un ensemble de personnes qui répondent à des critères leur permettant de bénéficier de la prestation décrite

**Context of Use**

This extension may be used on the following element(s):

* Element ID HealthcareService

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORHealthcareService](StructureDefinition-ror-healthcareservice.md)
* Exemples pour ce/t/te Extension: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-healthcareservice-patient-type)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-healthcareservice-patient-type.csv), [Excel](StructureDefinition-ror-healthcareservice-patient-type.xlsx), [Schematron](StructureDefinition-ror-healthcareservice-patient-type.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-healthcareservice-patient-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type",
  "version" : "0.7.0",
  "name" : "RORHealthcareServicePatientType",
  "status" : "draft",
  "date" : "2026-08-21T14:30:36+00:00",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
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
      "id" : "Extension.extension:ageRange.value[x].low.system",
      "path" : "Extension.extension.value[x].low.system",
      "min" : 1,
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:ageRange.value[x].low.code",
      "path" : "Extension.extension.value[x].low.code",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J37-UcumUniteTemps/FHIR/JDV-J37-UcumUniteTemps"
      }
    },
    {
      "id" : "Extension.extension:ageRange.value[x].high",
      "path" : "Extension.extension.value[x].high",
      "min" : 1
    },
    {
      "id" : "Extension.extension:ageRange.value[x].high.system",
      "path" : "Extension.extension.value[x].high.system",
      "min" : 1,
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:ageRange.value[x].high.code",
      "path" : "Extension.extension.value[x].high.code",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J37-UcumUniteTemps/FHIR/JDV-J37-UcumUniteTemps"
      }
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
