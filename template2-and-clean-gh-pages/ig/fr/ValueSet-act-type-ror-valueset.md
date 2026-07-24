# Valueset type d'acte - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## ValueSet: Valueset type d'acte (Expérimental) 

 
Valueset type d'acte 

 **References** 

* [RORActType](StructureDefinition-ror-act-type.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "act-type-ror-valueset",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/act-type-ror-valueset",
  "version" : "0.7.0",
  "name" : "ActTypeRORValueSet",
  "title" : "Valueset type d'acte",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-24T08:16:41+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Valueset type d'acte",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/act-type-ror-codesystem",
      "version" : "0.7.0"
    }]
  }
}

```
