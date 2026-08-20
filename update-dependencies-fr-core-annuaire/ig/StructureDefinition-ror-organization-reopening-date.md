# ROROrganizationReopeningDate - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ROROrganizationReopeningDate**

## Extension: ROROrganizationReopeningDate 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-reopening-date | *Version*:0.7.0 |
| Draft as of 2026-08-20 | *Computable Name*:ROROrganizationReopeningDate |

Extension créée dans le cadre du ROR pour définir la date prévisionnelle de réouverture de l’organisation interne.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Organization

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORCoreOrganizationUF](StructureDefinition-ror-core-organization-uf.md) and [RORInternalOrganization](StructureDefinition-ror-internal-organization.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-organization-reopening-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-organization-reopening-date.csv), [Excel](StructureDefinition-ror-organization-reopening-date.xlsx), [Schematron](StructureDefinition-ror-organization-reopening-date.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-organization-reopening-date",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-reopening-date",
  "version" : "0.7.0",
  "name" : "ROROrganizationReopeningDate",
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
  "description" : "Extension créée dans le cadre du ROR pour définir la date prévisionnelle de réouverture de l'organisation interne.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-ROROrganizationReopeningDate",
    "name" : "Spécification métier vers l'extension ROR ReopeningDate"
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
    "expression" : "Organization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR pour définir la date prévisionnelle de réouverture de l'organisation interne."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-reopening-date"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationReopeningDate",
        "map" : "datePrevisionnelleReouverture"
      }]
    }]
  }
}

```
