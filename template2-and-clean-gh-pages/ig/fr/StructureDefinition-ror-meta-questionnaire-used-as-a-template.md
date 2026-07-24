# RORMetaQuestionnaireUsedAsATemplate - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR qui correspond au questionnaire de saisie utilisé comme modèle associé à la ressource.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORHealthcareService](StructureDefinition-ror-healthcareservice.md), [RORLocation](StructureDefinition-ror-location.md) and [ROROrganization](StructureDefinition-ror-organization.md)
* Exemples pour ce/t/te Extension: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-meta-questionnaire-used-as-a-template)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Contraintes

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type canonical : Extension créée dans le cadre du ROR qui correspond au questionnaire de saisie utilisé comme modèle associé à la ressource.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Contraintes

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type canonical : Extension créée dans le cadre du ROR qui correspond au questionnaire de saisie utilisé comme modèle associé à la ressource.

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-meta-questionnaire-used-as-a-template.csv), [Excel](../StructureDefinition-ror-meta-questionnaire-used-as-a-template.xlsx), [Schematron](../StructureDefinition-ror-meta-questionnaire-used-as-a-template.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-meta-questionnaire-used-as-a-template",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-questionnaire-used-as-a-template",
  "version" : "0.7.0",
  "name" : "RORMetaQuestionnaireUsedAsATemplate",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
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
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-questionnaire-healthcareservice|0.7.0"]
      }],
      "constraint" : [{
        "key" : "ror-questionnaire-version-required",
        "severity" : "error",
        "human" : "La référence canonique du questionnaire doit inclure la version sous la forme url|version",
        "expression" : "value.toString().contains('|')",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-questionnaire-used-as-a-template|0.7.0"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORMetaQuestionnaireUsedAsATemplate",
        "map" : "metadonnee.modeleSaisie"
      }]
    }]
  }
}

```
