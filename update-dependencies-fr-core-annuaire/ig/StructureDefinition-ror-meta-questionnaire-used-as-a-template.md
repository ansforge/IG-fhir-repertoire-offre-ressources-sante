# RORMetaQuestionnaireUsedAsATemplate - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORMetaQuestionnaireUsedAsATemplate**

## Extension: RORMetaQuestionnaireUsedAsATemplate 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-questionnaire-used-as-a-template | *Version*:0.7.0 |
| Draft as of 2026-08-26 | *Computable Name*:RORMetaQuestionnaireUsedAsATemplate |

Extension créée dans le cadre du ROR qui correspond au questionnaire de saisie utilisé comme modèle associé à la ressource.

**Context of Use**

This extension may be used on the following element(s):

* Element ID DomainResource

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORCoreOrganizationUF](StructureDefinition-ror-core-organization-uf.md), [RORHealthcareService](StructureDefinition-ror-healthcareservice.md), [RORInternalOrganization](StructureDefinition-ror-internal-organization.md), [RORLocation](StructureDefinition-ror-location.md) and [ROROrganization](StructureDefinition-ror-organization.md)
* Exemples pour ce/t/te Extension: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-meta-questionnaire-used-as-a-template)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-meta-questionnaire-used-as-a-template.csv), [Excel](StructureDefinition-ror-meta-questionnaire-used-as-a-template.xlsx), [Schematron](StructureDefinition-ror-meta-questionnaire-used-as-a-template.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-meta-questionnaire-used-as-a-template",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-questionnaire-used-as-a-template",
  "version" : "0.7.0",
  "name" : "RORMetaQuestionnaireUsedAsATemplate",
  "status" : "draft",
  "date" : "2026-08-26T13:04:13+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR qui correspond au questionnaire de saisie utilisé comme modèle associé à la ressource.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORMetaQuestionnaireUsedAsATemplate",
    "name" : "Spécification métier vers l'extension ROR MetaQuestionnaireUsedAsATemplate"
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
    "expression" : "DomainResource"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR qui correspond au questionnaire de saisie utilisé comme modèle associé à la ressource."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-questionnaire-used-as-a-template"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Référence canonique vers le questionnaire utilisé comme modèle de saisie, incluant obligatoirement la version sous la forme url|version. Exemple : https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/ror-questionnaire-2042|1",
      "type" : [{
        "code" : "canonical",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-questionnaire-healthcareservice"]
      }],
      "constraint" : [{
        "key" : "ror-questionnaire-version-required",
        "severity" : "error",
        "human" : "La référence canonique du questionnaire doit inclure la version sous la forme url|version",
        "expression" : "value.toString().contains('|')",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-questionnaire-used-as-a-template"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORMetaQuestionnaireUsedAsATemplate",
        "map" : "metadonnee.modeleSaisie"
      }]
    }]
  }
}

```
