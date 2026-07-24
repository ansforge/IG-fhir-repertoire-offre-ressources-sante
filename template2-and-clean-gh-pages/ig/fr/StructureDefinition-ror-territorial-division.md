# RORTerritorialDivision - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR qui correspond au périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite. Cela inclut notamment les divisions territoriales dans lesquelles les professionnels se déplacent.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORHealthcareService](StructureDefinition-ror-healthcareservice.md) and [ROROrganization](StructureDefinition-ror-organization.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-territorial-division)

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

Extension complexe: Extension créée dans le cadre du ROR qui correspond au périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite. Cela inclut notamment les divisions territoriales dans lesquelles les professionnels se déplacent.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Extension créée dans le cadre du ROR qui correspond au périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite. Cela inclut notamment les divisions territoriales dans lesquelles les professionnels se déplacent.

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-territorial-division.csv), [Excel](../StructureDefinition-ror-territorial-division.xlsx), [Schematron](../StructureDefinition-ror-territorial-division.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-territorial-division",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division",
  "version" : "0.7.0",
  "name" : "RORTerritorialDivision",
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
  "description" : "Extension créée dans le cadre du ROR qui correspond au périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite. \nCela inclut notamment les divisions territoriales dans lesquelles les professionnels se déplacent.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORTerritorialDivision",
    "name" : "Spécification métier vers l'extension ROR territorial division"
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
    "expression" : "HealthcareService"
  },
  {
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
      "definition" : "Extension créée dans le cadre du ROR qui correspond au périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite. \nCela inclut notamment les divisions territoriales dans lesquelles les professionnels se déplacent.",
      "mapping" : [{
        "identity" : "specmetier-to-RORTerritorialDivision",
        "map" : "DivisionTerritoriale",
        "comment" : "RORHealthcareService : Tous les profils\n/ ROROrganization : Tous les profils"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:typeTerritorialDivision",
      "path" : "Extension.extension",
      "sliceName" : "typeTerritorialDivision",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:typeTerritorialDivision.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:typeTerritorialDivision.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "typeTerritorialDivision"
    },
    {
      "id" : "Extension.extension:typeTerritorialDivision.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J223-TypeDivisionTerritoriale-ROR/FHIR/JDV-J223-TypeDivisionTerritoriale-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORTerritorialDivision",
        "map" : "type"
      }]
    },
    {
      "id" : "Extension.extension:codeTerritorialDivision",
      "path" : "Extension.extension",
      "sliceName" : "codeTerritorialDivision",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:codeTerritorialDivision.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:codeTerritorialDivision.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "codeTerritorialDivision"
    },
    {
      "id" : "Extension.extension:codeTerritorialDivision.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/code-region-territorial-division-ror-valueset|0.7.0"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORTerritorialDivision",
        "map" : "code"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
