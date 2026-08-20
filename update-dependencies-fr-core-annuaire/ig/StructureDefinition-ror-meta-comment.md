# RORMetaComment - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORMetaComment**

## Extension: RORMetaComment 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-comment | *Version*:0.7.0 |
| Draft as of 2026-08-20 | *Computable Name*:RORMetaComment |

Extension créée dans le cadre du ROR qui correspond au commentaire présent dans les métadonnées.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Organization

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORCoreOrganizationUF](StructureDefinition-ror-core-organization-uf.md), [RORInternalOrganization](StructureDefinition-ror-internal-organization.md), [ROROrganization](StructureDefinition-ror-organization.md) and [RORPractitionerRoleProfile](StructureDefinition-ror-practitionerrole.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-meta-comment)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-meta-comment.csv), [Excel](StructureDefinition-ror-meta-comment.xlsx), [Schematron](StructureDefinition-ror-meta-comment.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-meta-comment",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-comment",
  "version" : "0.7.0",
  "name" : "RORMetaComment",
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
  "description" : "Extension créée dans le cadre du ROR qui correspond au commentaire présent dans les métadonnées.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORMetaComment",
    "name" : "Spécification métier vers l'extension ROR MetaComment"
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
      "definition" : "Extension créée dans le cadre du ROR qui correspond au commentaire présent dans les métadonnées."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-comment"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORMetaComment",
        "map" : "metadonnee.commentaire"
      }]
    }]
  }
}

```
