# RORMeasureReport - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Profil de ressource: RORMeasureReport 

 
Valeur pour un indicateur de pilotage du ROR National 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-measurereport)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MeasureReport](http://hl7.org/fhir/R4/measurereport.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MeasureReport](http://hl7.org/fhir/R4/measurereport.html) 

** Résumé **

Obligatoire : 2 éléments(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 8 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [RORPractitioner (https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner|0.7.0)](StructureDefinition-ror-practitioner.md)
* [RORPractitionerRole (https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole|0.7.0)](StructureDefinition-ror-practitionerrole.md)
* [RORLocation (https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location|0.7.0)](StructureDefinition-ror-location.md)
* [ROROrganization (https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization|0.7.0)](StructureDefinition-ror-organization.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [MeasureReport](http://hl7.org/fhir/R4/measurereport.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MeasureReport](http://hl7.org/fhir/R4/measurereport.html) 

** Résumé **

Obligatoire : 2 éléments(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 8 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [RORPractitioner (https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner|0.7.0)](StructureDefinition-ror-practitioner.md)
* [RORPractitionerRole (https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole|0.7.0)](StructureDefinition-ror-practitionerrole.md)
* [RORLocation (https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location|0.7.0)](StructureDefinition-ror-location.md)
* [ROROrganization (https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization|0.7.0)](StructureDefinition-ror-organization.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-measurereport.csv), [Excel](../StructureDefinition-ror-measurereport.xlsx), [Schematron](../StructureDefinition-ror-measurereport.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-measurereport",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-measurereport",
  "version" : "0.7.0",
  "name" : "RORMeasureReport",
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
  "description" : "Valeur pour un indicateur de pilotage du ROR National",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MeasureReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MeasureReport|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MeasureReport",
      "path" : "MeasureReport"
    },
    {
      "id" : "MeasureReport.identifier",
      "path" : "MeasureReport.identifier",
      "short" : "Identifiant de l'indicateur de pilotage du ROR National",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.status",
      "path" : "MeasureReport.status",
      "short" : "Statut de la mesure de l'indicateur de pilotage du ROR National",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.type",
      "path" : "MeasureReport.type",
      "short" : "Type de mesure",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.measure",
      "path" : "MeasureReport.measure",
      "short" : "L'indicateur de pilotage du ROR National calculé",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.subject",
      "path" : "MeasureReport.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner|0.7.0",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole|0.7.0",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location|0.7.0"]
      }]
    },
    {
      "id" : "MeasureReport.date",
      "path" : "MeasureReport.date",
      "short" : "Date de la mesure",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.reporter",
      "path" : "MeasureReport.reporter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner|0.7.0",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole|0.7.0",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location|0.7.0",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization|0.7.0"]
      }]
    },
    {
      "id" : "MeasureReport.period",
      "path" : "MeasureReport.period",
      "short" : "Période de la mesure",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.code",
      "path" : "MeasureReport.group.code",
      "short" : "Code du groupe popu",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.measureScore",
      "path" : "MeasureReport.group.measureScore",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
