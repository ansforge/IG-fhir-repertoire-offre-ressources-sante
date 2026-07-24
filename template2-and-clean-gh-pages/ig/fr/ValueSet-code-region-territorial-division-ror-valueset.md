# Fusion des valuesets pour le code de la division territoriale - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## ValueSet: Fusion des valuesets pour le code de la division territoriale (Expérimental) 

 
ValueSet regroupant des valuesets du NOS pour le code de la division territoriale 

 **References** 

* [RORTerritorialDivision](StructureDefinition-ror-territorial-division.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "code-region-territorial-division-ror-valueset",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/code-region-territorial-division-ror-valueset",
  "version" : "0.7.0",
  "name" : "CodeRegionTerritorialDivisionRORValueSet",
  "title" : "Fusion des valuesets pour le code de la division territoriale",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-24T08:25:42+00:00",
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
