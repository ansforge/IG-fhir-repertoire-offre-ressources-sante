# Value Set type pour le contexte d'usage du modèle de saisie - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## ValueSet: Value Set type pour le contexte d'usage du modèle de saisie (Expérimental) 

 
Extension du Value Set http://hl7.org/fhir/ValueSet/usage-context-type pour fixer le type de contexte d'usage du modèle de saisie avec le code EG ou le S pour Spécialité ordinale ou P01 pour le type de profession 

 **References** 

* [RORQuestionnaire](StructureDefinition-ror-questionnaire-healthcareservice.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ror-usage-context-type-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-usage-context-type-vs",
  "version" : "0.7.0",
  "name" : "RORUsageContextTypeVS",
  "title" : "Value Set type pour le contexte d'usage du modèle de saisie",
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
  "description" : "Extension du Value Set http://hl7.org/fhir/ValueSet/usage-context-type pour fixer le type de contexte d'usage du modèle de saisie avec le code EG ou le S pour Spécialité ordinale ou P01 pour le type de profession",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "version" : "2.0.1"
    },
    {
      "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/usage-context-ror-codesystem",
      "version" : "0.7.0"
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R67-TypeStructure-EJ-EG/FHIR/TRE-R67-TypeStructure-EJ-EG",
      "concept" : [{
        "code" : "EG"
      }]
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
      "concept" : [{
        "code" : "S"
      }]
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R288-TypeProfession/FHIR/TRE-R288-TypeProfession",
      "concept" : [{
        "code" : "P01"
      }]
    }]
  }
}

```
