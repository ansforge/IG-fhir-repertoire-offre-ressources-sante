# RORPractitionerRoleUnitExerciseMode - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR qui correspond au statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORPractitionerRole](StructureDefinition-ror-practitionerrole.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-practitionerrole-unit-exercise-mode)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type CodeableConcept : Extension créée dans le cadre du ROR qui correspond au statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type CodeableConcept : Extension créée dans le cadre du ROR qui correspond au statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite.

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-practitionerrole-unit-exercise-mode.csv), [Excel](../StructureDefinition-ror-practitionerrole-unit-exercise-mode.xlsx), [Schematron](../StructureDefinition-ror-practitionerrole-unit-exercise-mode.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-practitionerrole-unit-exercise-mode",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole-unit-exercise-mode",
  "version" : "0.7.0",
  "name" : "RORPractitionerRoleUnitExerciseMode",
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
  "description" : "Extension créée dans le cadre du ROR qui correspond au statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORPractitionerRoleUnitExerciseMode",
    "name" : "Spécification métier vers l'extension ROR RORPractitionerRoleUnitExerciseMode"
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
    "expression" : "PractitionerRole"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR qui correspond au statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole-unit-exercise-mode"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J217-ModeExercice-ROR/FHIR/JDV-J217-ModeExercice-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRoleUnitExerciseMode",
        "map" : "modeExerciceOffre"
      }]
    }]
  }
}

```
