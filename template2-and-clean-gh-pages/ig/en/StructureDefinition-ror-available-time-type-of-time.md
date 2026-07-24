# RORAvailableTimeTypeOfTime - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR pour apporter un contexte à la plage horaire définie par la suite. Un planning peut être constitué de plusieurs plages horaires du même type ou de type différent.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [RORHealthcareService](StructureDefinition-ror-healthcareservice.md) and [RORPractitionerRole](StructureDefinition-ror-practitionerrole.md)
* Examples for this Extension: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.ror|current/StructureDefinition/StructureDefinition-ror-available-time-type-of-time.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ror-available-time-type-of-time.csv), [Excel](../StructureDefinition-ror-available-time-type-of-time.xlsx), [Schematron](../StructureDefinition-ror-available-time-type-of-time.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-available-time-type-of-time",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time",
  "version" : "0.7.0",
  "name" : "RORAvailableTimeTypeOfTime",
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
  "description" : "Extension créée dans le cadre du ROR pour apporter un contexte à la plage horaire définie par la suite. Un planning peut être constitué de plusieurs plages horaires du même type ou de type différent.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "HealthcareService.availableTime"
  },
  {
    "type" : "element",
    "expression" : "PractitionerRole.availableTime"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR pour apporter un contexte à la plage horaire définie par la suite. Un planning peut être constitué de plusieurs plages horaires du même type ou de type différent."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J41-TypeHoraire-ROR/FHIR/JDV-J41-TypeHoraire-ROR"
      }
    }]
  }
}

```
