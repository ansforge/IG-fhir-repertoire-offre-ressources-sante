# RORTelecomConfidentialityLevel - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORTelecomConfidentialityLevel**

## Extension: RORTelecomConfidentialityLevel 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level | *Version*:0.7.0 |
| Draft as of 2026-08-20 | *Computable Name*:RORTelecomConfidentialityLevel |

Extension créée dans le cadre du ROR qui permet de définir le niveau de restriction de l’accès aux attributs de la classe Télécommunication.

**Context of Use**

This extension may be used on the following element(s):

* Element ID ContactPoint
* Element ID HealthcareService.extension.extension

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORCoreOrganizationUF](StructureDefinition-ror-core-organization-uf.md), [RORHealthcareServiceContactTelecom](StructureDefinition-ror-healthcareservice-contact-telecom.md), [RORHealthcareService](StructureDefinition-ror-healthcareservice.md), [RORInternalOrganization](StructureDefinition-ror-internal-organization.md)... Show 4 more, [RORLocation](StructureDefinition-ror-location.md), [ROROrganization](StructureDefinition-ror-organization.md), [RORPractitionerProfile](StructureDefinition-ror-practitioner.md) and [RORPractitionerRoleProfile](StructureDefinition-ror-practitionerrole.md)
* Exemples pour ce/t/te Extension: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-telecom-confidentiality-level)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-telecom-confidentiality-level.csv), [Excel](StructureDefinition-ror-telecom-confidentiality-level.xlsx), [Schematron](StructureDefinition-ror-telecom-confidentiality-level.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-telecom-confidentiality-level",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level",
  "version" : "0.7.0",
  "name" : "RORTelecomConfidentialityLevel",
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
  "description" : "Extension créée dans le cadre du ROR qui permet de définir le niveau de restriction de l'accès aux attributs de la classe Télécommunication.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORTelecomConfidentialityLevel",
    "name" : "Spécification métier vers l'extension ROR TelecomConfidentialityLevel"
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
    "expression" : "ContactPoint"
  },
  {
    "type" : "element",
    "expression" : "HealthcareService.extension.extension"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR qui permet de définir le niveau de restriction de l'accès aux attributs de la classe Télécommunication."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J222-NiveauConfidentialite-ROR/FHIR/JDV-J222-NiveauConfidentialite-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORTelecomConfidentialityLevel",
        "map" : "niveauConfidentialite"
      }]
    }]
  }
}

```
