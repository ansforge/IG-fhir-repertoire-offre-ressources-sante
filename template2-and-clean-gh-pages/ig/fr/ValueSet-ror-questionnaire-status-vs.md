# Statuts autorisés pour les Questionnaires ROR - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## ValueSet: Statuts autorisés pour les Questionnaires ROR (Expérimental) 

 
Restriction des statuts de publication FHIR aux valeurs applicables aux modèles de saisie ROR. La valeur 'unknown' est exclue. 

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
  "id" : "ror-questionnaire-status-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-questionnaire-status-vs",
  "version" : "0.7.0",
  "name" : "RORQuestionnaireStatusVS",
  "title" : "Statuts autorisés pour les Questionnaires ROR",
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
  "description" : "Restriction des statuts de publication FHIR aux valeurs applicables aux modèles de saisie ROR. La valeur 'unknown' est exclue.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/publication-status",
      "version" : "4.0.1",
      "concept" : [{
        "code" : "draft"
      },
      {
        "code" : "active"
      },
      {
        "code" : "retired"
      }]
    }]
  }
}

```
