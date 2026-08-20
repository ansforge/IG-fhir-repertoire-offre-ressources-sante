# Profil de LaunchContextExtension créé dans le cadre du ROR afin d'ajouter le name 'ror-structure' acceptant les ressources FHIR 'Organization', 'HealthcareService' et 'Location' - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profil de LaunchContextExtension créé dans le cadre du ROR afin d'ajouter le name 'ror-structure' acceptant les ressources FHIR 'Organization', 'HealthcareService' et 'Location'**

## Extension: Profil de LaunchContextExtension créé dans le cadre du ROR afin d'ajouter le name 'ror-structure' acceptant les ressources FHIR 'Organization', 'HealthcareService' et 'Location' 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-launchcontext | *Version*:0.7.0 |
| Draft as of 2026-08-20 | *Computable Name*:RORLaunchContextExtension |

Profil de l’extension http://hl7.org/fhir/uv/sdc/StructureDefinition-sdc-questionnaire-launchContext.html créé dans le cadre du ROR afin d’ajouter le name ‘structure’ acceptant les ressources FHIR ‘Organization’, ‘HealthcareService’ et ‘Location’

**Context of Use**

This extension may be used on the following element(s):

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORQuestionnaire](StructureDefinition-ror-questionnaire-healthcareservice.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-launchcontext)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-launchcontext.csv), [Excel](StructureDefinition-ror-launchcontext.xlsx), [Schematron](StructureDefinition-ror-launchcontext.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-launchcontext",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-launchcontext",
  "version" : "0.7.0",
  "name" : "RORLaunchContextExtension",
  "title" : "Profil de LaunchContextExtension créé dans le cadre du ROR afin d'ajouter le name 'ror-structure' acceptant les ressources FHIR 'Organization', 'HealthcareService' et 'Location'",
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
  "description" : "Profil de l'extension http://hl7.org/fhir/uv/sdc/StructureDefinition-sdc-questionnaire-launchContext.html créé dans le cadre du ROR afin d'ajouter le name 'structure' acceptant les ressources FHIR 'Organization', 'HealthcareService' et 'Location'",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "constraint" : [{
        "key" : "ror-inv-1",
        "severity" : "error",
        "human" : "Types must be from the specified value set of resource types based on name ror-structure: Location, HealthcareServive, Organization",
        "expression" : "(extension('name').value.where(code='ror-structure' and system='http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext').exists() implies extension('type').all(value='Location' or value='HealthcareService' or value='Organization'))",
        "xpath" : "(not(f:extension[@url='name' and f:valueCoding[f:code/@value='ror-structure' and f:system/@value='http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext']]) or not(f:extension[@url='type' and f:valueCode/@value!=('Location','HealthcareService','Organization')]))",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-launchcontext"
      }]
    },
    {
      "id" : "Extension.extension:name",
      "path" : "Extension.extension",
      "sliceName" : "name"
    },
    {
      "id" : "Extension.extension:name.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:name.value[x]",
      "path" : "Extension.extension.value[x]",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-launch-context-vs"
      }
    }]
  }
}

```
