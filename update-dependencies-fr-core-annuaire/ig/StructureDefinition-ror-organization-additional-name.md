# ROROrganizationAdditionalName - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ROROrganizationAdditionalName**

## Extension: ROROrganizationAdditionalName 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-additional-name | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:ROROrganizationAdditionalName |

Extension créée dans le cadre du ROR pour nom complémentaire de l’EJ (complementRaisonSociale) ou nom complémentaire de l’EG (DenominationEG)

**Context of Use**

This extension may be used on the following element(s):

* Element ID Organization.name

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [ROROrganization](StructureDefinition-ror-organization.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-organization-additional-name)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-organization-additional-name.csv), [Excel](StructureDefinition-ror-organization-additional-name.xlsx), [Schematron](StructureDefinition-ror-organization-additional-name.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-organization-additional-name",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-additional-name",
  "version" : "0.7.0",
  "name" : "ROROrganizationAdditionalName",
  "status" : "draft",
  "date" : "2026-08-21T16:03:39+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR pour nom complémentaire de l'EJ (complementRaisonSociale)  ou nom complémentaire de l'EG (DenominationEG)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-ROROrganizationAdditionalName",
    "name" : "Spécification métier vers l'extension ROR AdditionalName"
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
    "expression" : "Organization.name"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR pour nom complémentaire de l'EJ (complementRaisonSociale)  ou nom complémentaire de l'EG (DenominationEG)"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-additional-name"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationAdditionalName",
        "map" : "EG.complementDenominationEG"
      },
      {
        "identity" : "specmetier-to-ROROrganizationAdditionalName",
        "map" : "EJ.complementRaisonSociale"
      }]
    }]
  }
}

```
