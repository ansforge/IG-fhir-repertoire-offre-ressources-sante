# ROROrganizationNbPermanentSocialHelpPlace - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ROROrganizationNbPermanentSocialHelpPlace**

## Extension: ROROrganizationNbPermanentSocialHelpPlace 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-nb-permanent-social-help-place | *Version*:0.7.0 |
| Draft as of 2026-06-26 | *Computable Name*:ROROrganizationNbPermanentSocialHelpPlace |

Extension créée dans le cadre du ROR pour indiquer le nombre de places permanentes dédiées à l’aide sociale dans l’établissement

**Context of Use**

This extension may be used on the following element(s):

* Element ID Organization

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [ROROrganization](StructureDefinition-ror-organization.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-organization-nb-permanent-social-help-place)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-organization-nb-permanent-social-help-place.csv), [Excel](StructureDefinition-ror-organization-nb-permanent-social-help-place.xlsx), [Schematron](StructureDefinition-ror-organization-nb-permanent-social-help-place.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-organization-nb-permanent-social-help-place",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-nb-permanent-social-help-place",
  "version" : "0.7.0",
  "name" : "ROROrganizationNbPermanentSocialHelpPlace",
  "status" : "draft",
  "date" : "2026-06-26T12:10:23+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR pour indiquer le nombre de places permanentes dédiées à l'aide sociale dans l'établissement",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-ROROrganizationNbPermanentSocialHelpPlace",
    "name" : "Spécification métier vers l'extension ROR NbPermanentSocialHelpPlace"
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
      "definition" : "Extension créée dans le cadre du ROR pour indiquer le nombre de places permanentes dédiées à l'aide sociale dans l'établissement"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-nb-permanent-social-help-place"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationNbPermanentSocialHelpPlace",
        "map" : "nbPlaceAideSocialPermanent"
      }]
    }]
  }
}

```
