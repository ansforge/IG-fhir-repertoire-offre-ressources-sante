# RORPractitioner - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORPractitioner**

## Resource Profile: RORPractitioner 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner | *Version*:0.7.0 |
| Draft as of 2026-06-26 | *Computable Name*:RORPractitioner |

 
Profil créée dans le cadre du ROR pour décrire les données d’identification pérennes d’une personne physique, qui travaille en tant que professionnel 

**Utilisations:**

* Référence ce Profil: [RORMeasureReport](StructureDefinition-ror-measurereport.md), [RORPractitionerRole](StructureDefinition-ror-practitionerrole.md) and [RORTask](StructureDefinition-ror-task.md)
* CapabilityStatements utilisant ce Profil: [ROR-Consommateur](CapabilityStatement-ror-consommateur.md) and [ROR-Serveur](CapabilityStatement-ror-serveur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-practitioner)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-practitioner.csv), [Excel](StructureDefinition-ror-practitioner.xlsx), [Schematron](StructureDefinition-ror-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-practitioner",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner",
  "version" : "0.7.0",
  "name" : "RORPractitioner",
  "status" : "draft",
  "date" : "2026-06-26T12:10:23+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil créée dans le cadre du ROR pour décrire les données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORPractitioner",
    "uri" : "https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf",
    "name" : "Practitioner du Modèle exposition ROR V3"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner",
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "Professionnel",
        "comment" : "Profils ayant Accès"
      }]
    },
    {
      "id" : "Practitioner.id",
      "path" : "Practitioner.id",
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "metadonnee.identifiant",
        "comment" : "Profil 1,   \nProfil 2 si uniteSensible = Non,  \nProfil 3 si champ d'activité de l'offre = MS et si uniteSensible = Non,  \nProfil4,  \nProfil5 si uniteSensible = Non,  \nProfil 0 uniquement si champs d'activité de l'offre 'Ville'  "
      }]
    },
    {
      "id" : "Practitioner.meta",
      "path" : "Practitioner.meta",
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "metadonnee",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.meta.lastUpdated",
      "path" : "Practitioner.meta.lastUpdated",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "dateMiseJour",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.meta.tag",
      "path" : "Practitioner.meta.tag",
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
      "id" : "Practitioner.meta.tag:codeRegion",
      "path" : "Practitioner.meta.tag",
      "sliceName" : "codeRegion",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "regionSource",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.extension",
      "path" : "Practitioner.extension",
      "min" : 1
    },
    {
      "id" : "Practitioner.extension:ror-meta-creation-date",
      "path" : "Practitioner.extension",
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
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "short" : "idNat_PS (Professionnel) : Identification nationale du professionnel définie par le CI-SIS",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "idNat_PS",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.identifier.system",
      "path" : "Practitioner.identifier.system",
      "patternUri" : "urn:oid:1.2.250.1.71.4.2.1"
    },
    {
      "id" : "Practitioner.name.prefix",
      "path" : "Practitioner.name.prefix",
      "short" : "Civilite (PersonnePhysique) : Civilite de la personne physique",
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J207-Civilite-ROR/FHIR/JDV-J207-Civilite-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "PersonnePhysique.civilite",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "short" : "boiteLettreMSS (Professionnel) : Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) au professionnel",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "boiteLettreMSS.adresseMSS",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.telecom.extension",
      "path" : "Practitioner.telecom.extension",
      "min" : 2
    },
    {
      "id" : "Practitioner.telecom.extension:ror-telecom-communication-channel",
      "path" : "Practitioner.telecom.extension",
      "sliceName" : "ror-telecom-communication-channel",
      "short" : "canal (Telecommunication) : Code spécifiant le canal ou la manière dont s'établit la communication",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom.extension:ror-telecom-usage",
      "path" : "Practitioner.telecom.extension",
      "sliceName" : "ror-telecom-usage",
      "short" : "utilisation (Telecommunication) : Utilisation du canal de communication",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom.extension:ror-telecom-confidentiality-level",
      "path" : "Practitioner.telecom.extension",
      "sliceName" : "ror-telecom-confidentiality-level",
      "short" : "niveauConfidentialite (Telecommunication) : niveau de restriction de l'accès aux attributs de la classe Télécommunication",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom.value",
      "path" : "Practitioner.telecom.value",
      "short" : "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "adresseTelecom",
        "comment" : "cf. boiteLettreMSS"
      }]
    },
    {
      "id" : "Practitioner.qualification.issuer",
      "path" : "Practitioner.qualification.issuer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://interopsante.org/fhir/StructureDefinition/FrOrganization",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization"]
      }]
    }]
  }
}

```
