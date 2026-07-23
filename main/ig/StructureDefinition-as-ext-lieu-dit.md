# AsLieuDit - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AsLieuDit**

## Extension: AsLieuDit 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-lieu-dit | *Version*:0.7.0 |
| Draft as of 2026-07-23 | *Computable Name*:AsLieuDit |

Extension créée dans le cadre du ROR pour indiquer le lieu dit

**Context of Use**

This extension may be used on the following element(s):

* Element ID Address.line

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORLocation](StructureDefinition-ror-location.md) and [ROROrganization](StructureDefinition-ror-organization.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/as-ext-lieu-dit)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-ext-lieu-dit.csv), [Excel](StructureDefinition-as-ext-lieu-dit.xlsx), [Schematron](StructureDefinition-as-ext-lieu-dit.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-lieu-dit",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-lieu-dit",
  "version" : "0.7.0",
  "name" : "AsLieuDit",
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
  "description" : "Extension créée dans le cadre du ROR pour indiquer le lieu dit",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-AsLieuDit",
    "name" : "Spécification métier vers l'extension AsLieuDit"
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
    "expression" : "Address.line"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR pour indiquer le lieu dit"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-lieu-dit"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-AsLieuDit",
        "map" : "lieuDit"
      }]
    }]
  }
}

```
