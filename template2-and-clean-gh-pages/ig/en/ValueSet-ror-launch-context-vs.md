# Value Set pour le contexte standard du lancement d'un questionnaire dans le cadre du ROR - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## ValueSet: Value Set pour le contexte standard du lancement d'un questionnaire dans le cadre du ROR (Experimental) 

 
Extension du Value Set https://hl7.org/fhir/uv/sdc/ValueSet-launchContext.html afin de l'adapter au contexte de lancement des questionnaires dans le cadre du ROR 

 **References** 

* [Profil de LaunchContextExtension créé dans le cadre du ROR afin d'ajouter le name 'ror-structure' acceptant les ressources FHIR 'Organization', 'HealthcareService' et 'Location'](StructureDefinition-ror-launchcontext.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ror-launch-context-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-launch-context-vs",
  "version" : "0.7.0",
  "name" : "RORLaunchContextVS",
  "title" : "Value Set pour le contexte standard du lancement d'un questionnaire dans le cadre du ROR",
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
  "description" : "Extension du Value Set https://hl7.org/fhir/uv/sdc/ValueSet-launchContext.html afin de l'adapter au contexte de lancement des questionnaires dans le cadre du ROR",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/uv/sdc/CodeSystem-launchContext.html"
    },
    {
      "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/ror-launch-context-codesystem",
      "version" : "0.7.0"
    }]
  }
}

```
