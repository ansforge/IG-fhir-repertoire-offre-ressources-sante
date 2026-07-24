# RORHealthcareServiceContact - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR pour décrire la personne ou le service qui agit comme point de contact de l'offre.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [RORHealthcareService](StructureDefinition-ror-healthcareservice.md)
* Examples for this Extension: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.ror|current/StructureDefinition/StructureDefinition-ror-healthcareservice-contact.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ror-healthcareservice-contact.csv), [Excel](../StructureDefinition-ror-healthcareservice-contact.xlsx), [Schematron](../StructureDefinition-ror-healthcareservice-contact.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-healthcareservice-contact",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact",
  "version" : "0.7.0",
  "name" : "RORHealthcareServiceContact",
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
  "description" : "Extension créée dans le cadre du ROR pour décrire la personne ou le service qui agit comme point de contact de l'offre.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORHealthcareServiceContact",
    "name" : "Spécification métier vers l'extension ROR HealthcareServiceContact"
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
      "definition" : "Extension créée dans le cadre du ROR pour décrire la personne ou le service qui agit comme point de contact de l'offre.",
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareServiceContact",
        "map" : "contact"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:name",
      "path" : "Extension.extension",
      "sliceName" : "name",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:name.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:name.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "name"
    },
    {
      "id" : "Extension.extension:name.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "HumanName"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareServiceContact",
        "map" : "nom"
      }]
    },
    {
      "id" : "Extension.extension:ror-function-contact",
      "path" : "Extension.extension",
      "sliceName" : "ror-function-contact",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-function-contact|0.7.0"]
      }]
    },
    {
      "id" : "Extension.extension:purposeContact",
      "path" : "Extension.extension",
      "sliceName" : "purposeContact",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:purposeContact.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:purposeContact.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "purposeContact"
    },
    {
      "id" : "Extension.extension:purposeContact.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J221-NatureContact-ROR/FHIR/JDV-J221-NatureContact-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareServiceContact",
        "map" : "natureContact"
      }]
    },
    {
      "id" : "Extension.extension:description",
      "path" : "Extension.extension",
      "sliceName" : "description",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:description.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:description.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "description"
    },
    {
      "id" : "Extension.extension:description.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareServiceContact",
        "map" : "description"
      }]
    },
    {
      "id" : "Extension.extension:ror-confidentiality-level",
      "path" : "Extension.extension",
      "sliceName" : "ror-confidentiality-level",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level|0.7.0"]
      }]
    },
    {
      "id" : "Extension.extension:ror-healthcareservice-contact-telecom",
      "path" : "Extension.extension",
      "sliceName" : "ror-healthcareservice-contact-telecom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom|0.7.0"]
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
