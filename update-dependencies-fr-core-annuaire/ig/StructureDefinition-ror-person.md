# RORPerson - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORPerson**

## Resource Profile: RORPerson 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-person | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:RORPerson |

 
Profil créé dans le cadre du ROR pour décrire les données d’identité civile pérennes d’une personne physique qui exerce en tant que professionnel de santé 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-person)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-person.csv), [Excel](StructureDefinition-ror-person.xlsx), [Schematron](StructureDefinition-ror-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-person",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-person",
  "version" : "0.7.0",
  "name" : "RORPerson",
  "status" : "draft",
  "date" : "2026-08-21T14:30:36+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil créé dans le cadre du ROR pour décrire les données d'identité civile pérennes d'une personne physique qui exerce en tant que professionnel de santé",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORPerson",
    "uri" : "https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf",
    "name" : "PersonnePhysique du Modèle exposition ROR V3"
  },
  {
    "identity" : "as-person-to-mos-personne-physique",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPersonProfile to MOS - PersonnePhysique"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Person",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-person",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Person",
      "path" : "Person",
      "mapping" : [{
        "identity" : "specmetier-to-RORPerson",
        "map" : "PersonnePhysique",
        "comment" : "Profils ayant Accès"
      }]
    },
    {
      "id" : "Person.id",
      "path" : "Person.id",
      "mapping" : [{
        "identity" : "specmetier-to-RORPerson",
        "map" : "metadonnee.identifiant",
        "comment" : "Profil 1,\nProfil 2 si uniteSensible = Non,\nProfil 3 si champ d'activité de l'offre = MS et si uniteSensible = Non,\nProfil4,\nProfil5 si uniteSensible = Non,\nProfil 0 uniquement si champs d'activité de l'offre 'Ville'  "
      }]
    },
    {
      "id" : "Person.meta",
      "path" : "Person.meta",
      "mapping" : [{
        "identity" : "specmetier-to-RORPerson",
        "map" : "metadonnee",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Person.meta.lastUpdated",
      "path" : "Person.meta.lastUpdated",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPerson",
        "map" : "dateMiseJour",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Person.meta.tag",
      "path" : "Person.meta.tag",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "description" : "Slicing pour gérer le code région définissant la région source des données",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Person.meta.tag:codeRegion",
      "path" : "Person.meta.tag",
      "sliceName" : "codeRegion",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORPerson",
        "map" : "regionSource",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Person.extension",
      "path" : "Person.extension",
      "min" : 1
    },
    {
      "id" : "Person.extension:ror-meta-creation-date",
      "path" : "Person.extension",
      "sliceName" : "ror-meta-creation-date",
      "short" : "dateCreation (Metadonnee)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Person.name",
      "path" : "Person.name",
      "mustSupport" : true
    },
    {
      "id" : "Person.name.family",
      "path" : "Person.name.family",
      "mustSupport" : true
    },
    {
      "id" : "Person.name.given",
      "path" : "Person.name.given",
      "mustSupport" : true
    },
    {
      "id" : "Person.name.prefix",
      "path" : "Person.name.prefix",
      "short" : "Civilite (PersonnePhysique) : Civilite de la personne physique",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J207-Civilite-ROR/FHIR/JDV-J207-Civilite-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORPerson",
        "map" : "PersonnePhysique.civilite",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Person.link",
      "path" : "Person.link",
      "mustSupport" : true
    },
    {
      "id" : "Person.link:as-practitioner-exercice-professionnel",
      "path" : "Person.link",
      "sliceName" : "as-practitioner-exercice-professionnel",
      "short" : "Référence vers l'exercice professionnel (RORPractitioner) de la personne",
      "mustSupport" : true
    },
    {
      "id" : "Person.link:as-practitioner-exercice-professionnel.target",
      "path" : "Person.link.target",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner"]
      }]
    }]
  }
}

```
