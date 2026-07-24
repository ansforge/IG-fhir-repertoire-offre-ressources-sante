# RORPractitionerRoleName - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR pour définir l'identité d’exercice d’un professionnel

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORPractitionerRole](StructureDefinition-ror-practitionerrole.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-practitionerrole-name)

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

Extension complexe: Extension créée dans le cadre du ROR pour définir l'identité d’exercice d’un professionnel

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Extension créée dans le cadre du ROR pour définir l'identité d’exercice d’un professionnel

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-practitionerrole-name.csv), [Excel](../StructureDefinition-ror-practitionerrole-name.xlsx), [Schematron](../StructureDefinition-ror-practitionerrole-name.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-practitionerrole-name",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole-name",
  "version" : "0.7.0",
  "name" : "RORPractitionerRoleName",
  "status" : "draft",
  "date" : "2026-07-24T08:16:41+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR pour définir l'identité d’exercice d’un professionnel",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORPractitionerRoleName",
    "name" : "Spécification métier vers l'extension ROR RORPractitionerRoleName"
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
      "definition" : "Extension créée dans le cadre du ROR pour définir l'identité d’exercice d’un professionnel"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:exerciseTitle",
      "path" : "Extension.extension",
      "sliceName" : "exerciseTitle",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:exerciseTitle.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:exerciseTitle.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "exerciseTitle"
    },
    {
      "id" : "Extension.extension:exerciseTitle.value[x]",
      "path" : "Extension.extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.extension:exerciseTitle.value[x]:valueCodeableConcept",
      "path" : "Extension.extension.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J208-CiviliteExercice-ROR/FHIR/JDV-J208-CiviliteExercice-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRoleName",
        "map" : "civiliteExercice"
      }]
    },
    {
      "id" : "Extension.extension:exerciseLastName",
      "path" : "Extension.extension",
      "sliceName" : "exerciseLastName",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:exerciseLastName.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:exerciseLastName.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "exerciseLastName"
    },
    {
      "id" : "Extension.extension:exerciseLastName.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRoleName",
        "map" : "nomExercice"
      }]
    },
    {
      "id" : "Extension.extension:exerciseFirstName",
      "path" : "Extension.extension",
      "sliceName" : "exerciseFirstName",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:exerciseFirstName.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:exerciseFirstName.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "exerciseFirstName"
    },
    {
      "id" : "Extension.extension:exerciseFirstName.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRoleName",
        "map" : "prenomExercice"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole-name"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
