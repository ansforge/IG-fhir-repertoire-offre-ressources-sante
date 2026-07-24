# RORAvailableTimeNumberDaysofWeek - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR pour indiquer le numéro du jour dans la semaine.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORHealthcareService](StructureDefinition-ror-healthcareservice.md) and [RORPractitionerRole](StructureDefinition-ror-practitionerrole.md)
* Exemples pour ce/t/te Extension: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-available-time-number-days-of-week)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type integer : Extension créée dans le cadre du ROR pour indiquer le numéro du jour dans la semaine.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type integer : Extension créée dans le cadre du ROR pour indiquer le numéro du jour dans la semaine.

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-available-time-number-days-of-week.csv), [Excel](../StructureDefinition-ror-available-time-number-days-of-week.xlsx), [Schematron](../StructureDefinition-ror-available-time-number-days-of-week.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-available-time-number-days-of-week",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
  "version" : "0.7.0",
  "name" : "RORAvailableTimeNumberDaysofWeek",
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
  "description" : "Extension créée dans le cadre du ROR pour indiquer le numéro du jour dans la semaine.",
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
  "context" : [{
    "type" : "element",
    "expression" : "HealthcareService.availableTime"
  },
  {
    "type" : "extension",
    "expression" : "PractitionerRole.availableTime"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR pour indiquer le numéro du jour dans la semaine."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
