# RORLocationResidentialCapacity - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR qui décrit un type d'habitation adapté à la réalisation d'une offre.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORLocation](StructureDefinition-ror-location.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-location-residential-capacity)

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

Extension complexe: Extension créée dans le cadre du ROR qui décrit un type d'habitation adapté à la réalisation d'une offre.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Extension créée dans le cadre du ROR qui décrit un type d'habitation adapté à la réalisation d'une offre.

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-location-residential-capacity.csv), [Excel](../StructureDefinition-ror-location-residential-capacity.xlsx), [Schematron](../StructureDefinition-ror-location-residential-capacity.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-location-residential-capacity",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-residential-capacity",
  "version" : "0.7.0",
  "name" : "RORLocationResidentialCapacity",
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
  "description" : "Extension créée dans le cadre du ROR qui décrit un type d'habitation adapté à la réalisation d'une offre.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORResidentialLocationCapacity",
    "name" : "Spécification métier vers l'extension ROR LocationResidentialCapacity"
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
    "expression" : "Location"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR qui décrit un type d'habitation adapté à la réalisation d'une offre.",
      "mapping" : [{
        "identity" : "specmetier-to-RORResidentialLocationCapacity",
        "map" : "CapaciteHabitation"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:residentialType",
      "path" : "Extension.extension",
      "sliceName" : "residentialType",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:residentialType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:residentialType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "residentialType"
    },
    {
      "id" : "Extension.extension:residentialType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J32-TypeHabitation-ROR/FHIR/JDV-J32-TypeHabitation-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORResidentialLocationCapacity",
        "map" : "typeHabitation"
      }]
    },
    {
      "id" : "Extension.extension:residentialNumber",
      "path" : "Extension.extension",
      "sliceName" : "residentialNumber",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:residentialNumber.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:residentialNumber.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "residentialNumber"
    },
    {
      "id" : "Extension.extension:residentialNumber.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORResidentialLocationCapacity",
        "map" : "nbHabitation"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-residential-capacity"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
