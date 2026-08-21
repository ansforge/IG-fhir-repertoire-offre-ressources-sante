# Fusion des valuesets pour le code de la division territoriale - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fusion des valuesets pour le code de la division territoriale**

## ValueSet: Fusion des valuesets pour le code de la division territoriale (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/code-region-territorial-division-ror-valueset | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:CodeRegionTerritorialDivisionRORValueSet |

 
ValueSet regroupant des valuesets du NOS pour le code de la division territoriale 

 **References** 

* [RORTerritorialDivision](StructureDefinition-ror-territorial-division.md)

### Définition logique (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "code-region-territorial-division-ror-valueset",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/code-region-territorial-division-ror-valueset",
  "version" : "0.7.0",
  "name" : "CodeRegionTerritorialDivisionRORValueSet",
  "title" : "Fusion des valuesets pour le code de la division territoriale",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-21T14:30:36+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet regroupant des valuesets du NOS pour le code de la division territoriale",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["https://mos.esante.gouv.fr/NOS/JDV_J124-Commune/FHIR/JDV-J124-Commune"]
    },
    {
      "valueSet" : ["https://mos.esante.gouv.fr/NOS/JDV_J248-DepartementOM-ROR/FHIR/JDV-J248-DepartementOM-ROR"]
    },
    {
      "valueSet" : ["https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR"]
    },
    {
      "valueSet" : ["https://mos.esante.gouv.fr/NOS/JDV_J249-TerritoireSante-ROR/FHIR/JDV-J249-TerritoireSante-ROR"]
    },
    {
      "valueSet" : ["https://mos.esante.gouv.fr/NOS/JDV_J247-Pays-ROR/FHIR/JDV-J247-Pays-ROR"]
    }]
  }
}

```
