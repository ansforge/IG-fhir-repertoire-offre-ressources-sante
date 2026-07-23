# RORContactFunctionContact - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORContactFunctionContact**

## Extension: RORContactFunctionContact 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-function-contact | *Version*:0.7.0 |
| Draft as of 2026-07-23 | *Computable Name*:RORContactFunctionContact |

Extension créée dans le cadre du ROR qui indique un titre, une position ou une fonction de la personne assurant le contact au sein de l’organisation (directeur, secrétaire, etc.).

**Context of Use**

This extension may be used on the following element(s):

* Element ID Organization.contact
* Element ID HealthcareService.extension

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORHealthcareServiceContact](StructureDefinition-ror-healthcareservice-contact.md) and [ROROrganization](StructureDefinition-ror-organization.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-contact-function-contact)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-contact-function-contact.csv), [Excel](StructureDefinition-ror-contact-function-contact.xlsx), [Schematron](StructureDefinition-ror-contact-function-contact.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-contact-function-contact",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-function-contact",
  "version" : "0.7.0",
  "name" : "RORContactFunctionContact",
  "status" : "draft",
  "date" : "2026-07-23T08:00:07+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR qui indique un titre, une position ou une fonction de la personne assurant le contact au sein de l'organisation (directeur, secrétaire, etc.).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORContactFunctionContact",
    "name" : "Spécification métier vers l'extension ROR ContactFunctionContact"
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
    "expression" : "Organization.contact"
  },
  {
    "type" : "element",
    "expression" : "HealthcareService.extension"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR qui indique un titre, une position ou une fonction de la personne assurant le contact au sein de l'organisation (directeur, secrétaire, etc.)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-function-contact"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J220-FonctionContact-ROR/FHIR/JDV-J220-FonctionContact-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORContactFunctionContact",
        "map" : "fonctionContact"
      }]
    }]
  }
}

```
