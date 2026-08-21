# RORPractitioner - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORPractitioner**

## Resource Profile: RORPractitioner 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:RORPractitioner |

 
Profil créé dans le cadre du ROR pour décrire l’exercice professionnel d’une personne physique : identité d’exercice, profession et savoir-faire (spécialités, compétences…) 

**Utilisations:**

* Référence ce Profil: [RORMeasureReport](StructureDefinition-ror-measurereport.md), [RORPerson](StructureDefinition-ror-person.md), [RORPractitionerRole](StructureDefinition-ror-practitionerrole.md) and [RORTask](StructureDefinition-ror-task.md)
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
  "date" : "2026-08-21T16:03:39+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil créé dans le cadre du ROR pour décrire l'exercice professionnel d'une personne physique : identité d'exercice, profession et savoir-faire (spécialités, compétences...)",
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
    "name" : "ExerciceProfessionnel du Modèle exposition ROR V3"
  },
  {
    "identity" : "as-practitioner-role-to-mos-savoir-faire",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - SavoirFaire"
  },
  {
    "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - ExerciceProfessionnel"
  },
  {
    "identity" : "as-practitioner-role-to-mos-inscription-ordre",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - InscriptionOrdre"
  },
  {
    "identity" : "as-practitioner-role-to-mos-diplome",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - Diplome"
  },
  {
    "identity" : "as-practitioner-role-to-mos-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - Professionnel"
  },
  {
    "identity" : "as-practitioner-role-to-mos-autorisation-exercice",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - AutorisationExercice"
  },
  {
    "identity" : "as-practitioner-role-to-mos-carte-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - CarteProfessionnel"
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
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner",
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "ExerciceProfessionnel",
        "comment" : "Profils ayant Accès"
      }]
    },
    {
      "id" : "Practitioner.id",
      "path" : "Practitioner.id",
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "metadonnee.identifiant",
        "comment" : "Profil 1,\nProfil 2 si uniteSensible = Non,\nProfil 3 si champ d'activité de l'offre = MS et si uniteSensible = Non,\nProfil4,\nProfil5 si uniteSensible = Non,\nProfil 0 uniquement si champs d'activité de l'offre 'Ville'  "
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
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:idNatPs",
      "path" : "Practitioner.identifier",
      "sliceName" : "idNatPs",
      "short" : "idNat_PS (Professionnel) : Identification nationale du professionnel définie par le CI-SIS",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "idNat_PS",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.name.family",
      "path" : "Practitioner.name.family",
      "short" : "nomExercice (ExerciceProfessionnel) : Nom sous lequel exerce le professionnel",
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "ExerciceProfessionnel.nomExercice",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.name.given",
      "path" : "Practitioner.name.given",
      "short" : "prenomExercice (ExerciceProfessionnel) : Prénom sous lequel exerce le professionnel",
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "ExerciceProfessionnel.prenomExercice",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.name.suffix",
      "path" : "Practitioner.name.suffix",
      "short" : "civiliteExercice (ExerciceProfessionnel) : Civilité d'exercice du professionnel",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J208-CiviliteExercice-ROR/FHIR/JDV-J208-CiviliteExercice-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "ExerciceProfessionnel.civiliteExercice",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "short" : "boiteLettreMSS (Professionnel) : Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) au professionnel"
    },
    {
      "id" : "Practitioner.telecom:mailbox-mss",
      "path" : "Practitioner.telecom",
      "sliceName" : "mailbox-mss",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "boiteLettreMSS.adresseMSS",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.telecom:mailbox-mss.extension",
      "path" : "Practitioner.telecom.extension",
      "min" : 3
    },
    {
      "id" : "Practitioner.telecom:mailbox-mss.extension:emailType",
      "path" : "Practitioner.telecom.extension",
      "sliceName" : "emailType"
    },
    {
      "id" : "Practitioner.telecom:mailbox-mss.extension:emailType.value[x]",
      "path" : "Practitioner.telecom.extension.value[x]",
      "patternCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie",
        "code" : "MSSANTE",
        "display" : "MSSANTE"
      }
    },
    {
      "id" : "Practitioner.telecom:mailbox-mss.extension:ror-telecom-communication-channel",
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
      "id" : "Practitioner.telecom:mailbox-mss.extension:ror-telecom-usage",
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
      "id" : "Practitioner.telecom:mailbox-mss.extension:ror-telecom-confidentiality-level",
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
      "id" : "Practitioner.telecom:mailbox-mss.value",
      "path" : "Practitioner.telecom.value",
      "short" : "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication",
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "adresseTelecom",
        "comment" : "cf. boiteLettreMSS"
      }]
    },
    {
      "id" : "Practitioner.qualification",
      "path" : "Practitioner.qualification",
      "min" : 1
    },
    {
      "id" : "Practitioner.qualification:exercicePro",
      "path" : "Practitioner.qualification",
      "sliceName" : "exercicePro",
      "short" : "profession (ExerciceProfessionnel) : Profession exercée ou future profession de l'étudiant",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:exercicePro.code.coding:profession",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "profession",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J229-ProfessionSante-ROR/FHIR/JDV-J229-ProfessionSante-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "profession",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.qualification:savoirFaire",
      "path" : "Practitioner.qualification",
      "sliceName" : "savoirFaire",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code.coding.where(system = 'https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire').code"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorSpecialty",
      "path" : "Practitioner.qualification",
      "sliceName" : "savoirFaire/rorSpecialty",
      "short" : "specialite (SavoirFaire) : Spécialité ordinale",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "SavoirFaire.specialite",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorSpecialty.code.coding",
      "path" : "Practitioner.qualification.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "rules" : "closed"
      },
      "min" : 2
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorSpecialty.code.coding:typeSavoirFaire",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "typeSavoirFaire",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
        "code" : "S"
      },
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorSpecialty.code.coding:valeur",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "valeur",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J210-SpecialiteOrdinale-ROR/FHIR/JDV-J210-SpecialiteOrdinale-ROR"
      }
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorCompetence",
      "path" : "Practitioner.qualification",
      "sliceName" : "savoirFaire/rorCompetence",
      "short" : "competence (SavoirFaire) : Compétence acquise par le professionnel",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "SavoirFaire.competence",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorCompetence.code.coding",
      "path" : "Practitioner.qualification.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "rules" : "closed"
      },
      "min" : 2
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorCompetence.code.coding:typeSavoirFaire",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "typeSavoirFaire",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
        "code" : "C"
      },
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorCompetence.code.coding:valeur",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "valeur",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J232-Competence-ROR/FHIR/JDV-J232-Competence-ROR"
      }
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorExclusiveCompetence",
      "path" : "Practitioner.qualification",
      "sliceName" : "savoirFaire/rorExclusiveCompetence",
      "short" : "competenceExclusive (SavoirFaire) : Compétence exclusive",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "SavoirFaire.competenceExclusive",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorExclusiveCompetence.code.coding",
      "path" : "Practitioner.qualification.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "rules" : "closed"
      },
      "min" : 2
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorExclusiveCompetence.code.coding:typeSavoirFaire",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "typeSavoirFaire",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
        "code" : "CEX"
      },
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorExclusiveCompetence.code.coding:valeur",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "valeur",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J211-CompetenceExclusive-ROR/FHIR/JDV-J211-CompetenceExclusive-ROR"
      }
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorSpecificOrientation",
      "path" : "Practitioner.qualification",
      "sliceName" : "savoirFaire/rorSpecificOrientation",
      "short" : "orientationParticuliere (SavoirFaire) : Orientation particulière",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "SavoirFaire.orientationParticuliere",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorSpecificOrientation.code.coding",
      "path" : "Practitioner.qualification.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "rules" : "closed"
      },
      "min" : 2
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorSpecificOrientation.code.coding:typeSavoirFaire",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "typeSavoirFaire",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
        "code" : "OP"
      },
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorSpecificOrientation.code.coding:valeur",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "valeur",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J212-OrientationParticuliere-ROR/FHIR/JDV-J212-OrientationParticuliere-ROR"
      }
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorExpertiseCapacity",
      "path" : "Practitioner.qualification",
      "sliceName" : "savoirFaire/rorExpertiseCapacity",
      "short" : "capacite (SavoirFaire) : Capacité de médecine",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "SavoirFaire.capacite",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorExpertiseCapacity.code.coding",
      "path" : "Practitioner.qualification.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "rules" : "closed"
      },
      "min" : 2
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorExpertiseCapacity.code.coding:typeSavoirFaire",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "typeSavoirFaire",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
        "code" : "CAPA"
      },
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorExpertiseCapacity.code.coding:valeur",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "valeur",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J213-CapaciteSavoirFaire-ROR/FHIR/JDV-J213-CapaciteSavoirFaire-ROR"
      }
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorQualificationPAC",
      "path" : "Practitioner.qualification",
      "sliceName" : "savoirFaire/rorQualificationPAC",
      "short" : "qualificationPAC (SavoirFaire) : Qualification de praticien adjoint contractuel",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "SavoirFaire.qualificationPAC",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorQualificationPAC.code.coding",
      "path" : "Practitioner.qualification.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "rules" : "closed"
      },
      "min" : 2
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorQualificationPAC.code.coding:typeSavoirFaire",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "typeSavoirFaire",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
        "code" : "PAC"
      },
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorQualificationPAC.code.coding:valeur",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "valeur",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J214-QualificationPAC-ROR/FHIR/JDV-J214-QualificationPAC-ROR"
      }
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorNonQualifyingDESC",
      "path" : "Practitioner.qualification",
      "sliceName" : "savoirFaire/rorNonQualifyingDESC",
      "short" : "DESCNonQualifiant (SavoirFaire) : Diplôme d'études spécialisées complémentaires (DESC)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "SavoirFaire.DESCNonQualifiant",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorNonQualifyingDESC.code.coding",
      "path" : "Practitioner.qualification.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "rules" : "closed"
      },
      "min" : 2
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorNonQualifyingDESC.code.coding:typeSavoirFaire",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "typeSavoirFaire",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
        "code" : "DNQ"
      },
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorNonQualifyingDESC.code.coding:valeur",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "valeur",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J215-DESCnonQualifiant-ROR/FHIR/JDV-J215-DESCnonQualifiant-ROR"
      }
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorSupplementaryExerciseRight",
      "path" : "Practitioner.qualification",
      "sliceName" : "savoirFaire/rorSupplementaryExerciseRight",
      "short" : "droitExerciceComplémentaire (SavoirFaire) : Droit d'exercice complémentaire du professionnel",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitioner",
        "map" : "SavoirFaire.droitExerciceComplémentaire",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorSupplementaryExerciseRight.code.coding",
      "path" : "Practitioner.qualification.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "rules" : "closed"
      },
      "min" : 2
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorSupplementaryExerciseRight.code.coding:typeSavoirFaire",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "typeSavoirFaire",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
        "code" : "DEC"
      },
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:savoirFaire/rorSupplementaryExerciseRight.code.coding:valeur",
      "path" : "Practitioner.qualification.code.coding",
      "sliceName" : "valeur",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J216-DroitExerciceCompl-ROR/FHIR/JDV-J216-DroitExerciceCompl-ROR"
      }
    }]
  }
}

```
