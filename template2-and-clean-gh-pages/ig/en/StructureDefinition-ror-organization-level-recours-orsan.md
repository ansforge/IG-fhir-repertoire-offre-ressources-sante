# ROROrganizationLevelRecourseORSAN - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR pour décrire une hiérarchisation fonctionnelle de la mobilisation des établissements pour accueillir les patients après régulation par le SAMU.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ROROrganization](StructureDefinition-ror-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.ror|current/StructureDefinition/StructureDefinition-ror-organization-level-recours-orsan.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ror-organization-level-recours-orsan.csv), [Excel](../StructureDefinition-ror-organization-level-recours-orsan.xlsx), [Schematron](../StructureDefinition-ror-organization-level-recours-orsan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-organization-level-recours-orsan",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-level-recours-orsan",
  "version" : "0.7.0",
  "name" : "ROROrganizationLevelRecourseORSAN",
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
  "description" : "Extension créée dans le cadre du ROR pour décrire une hiérarchisation fonctionnelle de la mobilisation des établissements pour accueillir les patients après régulation par le SAMU.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-ROROrganizationLevelRecourseORSAN",
    "name" : "Spécification métier vers l'extension ROR LevelRecourseORSAN"
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR pour décrire une hiérarchisation fonctionnelle de la mobilisation des établissements pour accueillir les patients après régulation par le SAMU."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-level-recours-orsan"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J204-NiveauRecoursORSAN-ROR/FHIR/JDV-J204-NiveauRecoursORSAN-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganizationLevelRecourseORSAN",
        "map" : "niveauRecoursORSAN"
      }]
    }]
  }
}

```
