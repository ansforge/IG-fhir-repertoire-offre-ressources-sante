# RORTelecomUsage - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR qui précise l'utilisation du canal de communication

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORHealthcareServiceContactTelecom](StructureDefinition-ror-healthcareservice-contact-telecom.md), [RORHealthcareService](StructureDefinition-ror-healthcareservice.md), [RORLocation](StructureDefinition-ror-location.md), [ROROrganization](StructureDefinition-ror-organization.md)... Show 2 more, [RORPractitioner](StructureDefinition-ror-practitioner.md) and [RORPractitionerRole](StructureDefinition-ror-practitionerrole.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-telecom-usage)

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

Extension simple avec le type string : Extension créée dans le cadre du ROR qui précise l'utilisation du canal de communication

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type string : Extension créée dans le cadre du ROR qui précise l'utilisation du canal de communication

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-telecom-usage.csv), [Excel](../StructureDefinition-ror-telecom-usage.xlsx), [Schematron](../StructureDefinition-ror-telecom-usage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-telecom-usage",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage",
  "version" : "0.7.0",
  "name" : "RORTelecomUsage",
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
  "description" : "Extension créée dans le cadre du ROR qui précise l'utilisation du canal de communication",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORTelecomUsage",
    "name" : "Spécification métier vers l'extension ROR TelecomCommunicationUsage"
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
    "expression" : "ContactPoint"
  },
  {
    "type" : "element",
    "expression" : "HealthcareService.extension.extension"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR qui précise l'utilisation du canal de communication"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORTelecomUsage",
        "map" : "utilisation"
      }]
    }]
  }
}

```
