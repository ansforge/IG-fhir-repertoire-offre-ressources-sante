# RORPractitionerRole - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORPractitionerRole**

## Resource Profile: RORPractitionerRole 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:RORPractitionerRole |

 
Profil créé dans le cadre du ROR pour décrire la situation d’exercice opérationnelle du professionnel dans la réalisation de l’offre 

**Utilisations:**

* Référence ce Profil: [RORMeasureReport](StructureDefinition-ror-measurereport.md) and [RORTask](StructureDefinition-ror-task.md)
* CapabilityStatements utilisant ce Profil: [ROR-Consommateur](CapabilityStatement-ror-consommateur.md) and [ROR-Serveur](CapabilityStatement-ror-serveur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-practitionerrole)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-practitionerrole.csv), [Excel](StructureDefinition-ror-practitionerrole.xlsx), [Schematron](StructureDefinition-ror-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-practitionerrole",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole",
  "version" : "0.7.0",
  "name" : "RORPractitionerRole",
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
  "description" : "Profil créé dans le cadre du ROR pour décrire la situation d'exercice opérationnelle du professionnel dans la réalisation de l'offre",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORPractitionerRole-situationOp",
    "name" : "SituationOperationnelle du Modèle exposition ROR V3"
  },
  {
    "identity" : "as-practitioner-role-to-mos-situation-exercice",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerRoleProfile to MOS - SituationExercice"
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
  "type" : "PractitionerRole",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole",
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "SituationOperationnelle",
        "comment" : "Profils ayant Accès"
      }]
    },
    {
      "id" : "PractitionerRole.id",
      "path" : "PractitionerRole.id",
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "metadonnee.identifiant",
        "comment" : "Profil 1,\nProfil 2 si uniteSensible = Non ,\nProfil 3 si champ d'activité de l'offre = MS et si uniteSensible = Non,\nProfil4,\nProfil5 si uniteSensible = Non,\nProfil 0 uniquement si champs d'activité de l'offre 'Ville'  "
      }]
    },
    {
      "id" : "PractitionerRole.meta",
      "path" : "PractitionerRole.meta",
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "metadonnee",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "PractitionerRole.meta.lastUpdated",
      "path" : "PractitionerRole.meta.lastUpdated",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "dateMiseJour",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "PractitionerRole.meta.tag",
      "path" : "PractitionerRole.meta.tag",
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
      "id" : "PractitionerRole.meta.tag:codeRegion",
      "path" : "PractitionerRole.meta.tag",
      "sliceName" : "codeRegion",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "regionSource",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "PractitionerRole.extension",
      "path" : "PractitionerRole.extension",
      "min" : 2
    },
    {
      "id" : "PractitionerRole.extension:as-ext-practitionerrole-contracted",
      "path" : "PractitionerRole.extension",
      "sliceName" : "as-ext-practitionerrole-contracted",
      "short" : "secteurConventionnement (SituationOperationnelle) : Secteur de conventionnement du professionnel libéral auquel il a adhéré auprès de l'Assurance Maladie",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.extension:as-ext-practitionerrole-contracted.value[x]",
      "path" : "PractitionerRole.extension.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J218-CNAMAmeliSecteurConventionnement-ROR/FHIR/JDV-J218-CNAMAmeliSecteurConventionnement-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "secteurConventionnement",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "PractitionerRole.extension:as-ext-practitionerrole-hascas",
      "path" : "PractitionerRole.extension",
      "sliceName" : "as-ext-practitionerrole-hascas",
      "short" : "optionContratAccèsAuxSoins (SituationOperationnelle) : L'Option pratique tarifaire maîtrisée (OPTAM) a remplacé le Contrat d'accès aux soins (CAS) en 2017",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "optionContratAccèsAuxSoins",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "PractitionerRole.extension:as-ext-practitionerrole-vitale-accepted",
      "path" : "PractitionerRole.extension",
      "sliceName" : "as-ext-practitionerrole-vitale-accepted",
      "short" : "carteVitaleAcceptee (SituationOperationnelle) : Précise si le professionnel, dans le cadre de cette situation opérationnelle, dispose des moyens techniques pour prendre en charge la carte vitale ou pas",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "carteVitaleAcceptee",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "PractitionerRole.extension:ror-practitionerrole-unit-exercise-mode",
      "path" : "PractitionerRole.extension",
      "sliceName" : "ror-practitionerrole-unit-exercise-mode",
      "short" : "modeExerciceOffre (SituationOperationnelle) : statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole-unit-exercise-mode"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "modeExerciceOffre",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "PractitionerRole.extension:ror-meta-creation-date",
      "path" : "PractitionerRole.extension",
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
      "id" : "PractitionerRole.extension:ror-meta-comment",
      "path" : "PractitionerRole.extension",
      "sliceName" : "ror-meta-comment",
      "short" : "commentaire (Metadonnee)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-comment"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.identifier:idSituationExercice",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "idSituationExercice",
      "short" : "identifiantSituationOperationnelle (SituationOperationnelle) : Identifiant de la situation opérationnelle, unique et persistant au niveau national",
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "identifiantSituationOperationnelle",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "Professionnel"
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "short" : "Rattachement à l'entité géographique (EG) ou juridique (EJ) - cible héritée d'AsPractitionerRoleProfile",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization"]
      }]
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "PractitionerRole.specialty:specificCompetence",
      "path" : "PractitionerRole.specialty",
      "sliceName" : "specificCompetence",
      "short" : "competenceSpecifique (SituationOperationnelle) : Capacité ou connaissance reconnue qui permet ou facilite l’accueil d’une personne",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J33-CompetenceSpecifique-ROR/FHIR/JDV-J33-CompetenceSpecifique-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "competenceSpecifique",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "PractitionerRole.location",
      "path" : "PractitionerRole.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location"]
      }]
    },
    {
      "id" : "PractitionerRole.healthcareService",
      "path" : "PractitionerRole.healthcareService",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "OffreOperationnelle"
      }]
    },
    {
      "id" : "PractitionerRole.telecom",
      "path" : "PractitionerRole.telecom",
      "short" : "telecommunication (SituationOperationnelle) : Adresse(s) de télécommunication du professionnel dans le cadre de l'offre décrite",
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "telecommunication",
        "comment" : "Profil 1,\nProfil 2 et Profil 5 si niveau de confidentialité de la telecommunication différent de 'très restreint' et uniteSensible = Non\nProfil 3 si champ d'activité MS et si si niveau de confidentialité de la telecommunication différent de 'très restreint' et uniteSensible = Non\nProfil 4 si niveau de confidentialité  de la telecommunication = 'public'\nProfil 0 si niveau de confidentialité  de la telecommunication = 'public' et uniteSensible = Non  "
      }]
    },
    {
      "id" : "PractitionerRole.telecom.extension",
      "path" : "PractitionerRole.telecom.extension",
      "min" : 2
    },
    {
      "id" : "PractitionerRole.telecom.extension:ror-telecom-communication-channel",
      "path" : "PractitionerRole.telecom.extension",
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
      "id" : "PractitionerRole.telecom.extension:ror-telecom-usage",
      "path" : "PractitionerRole.telecom.extension",
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
      "id" : "PractitionerRole.telecom.extension:ror-telecom-confidentiality-level",
      "path" : "PractitionerRole.telecom.extension",
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
      "id" : "PractitionerRole.telecom.value",
      "path" : "PractitionerRole.telecom.value",
      "short" : "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "adresseTelecom",
        "comment" : "cf telecommunication"
      }]
    },
    {
      "id" : "PractitionerRole.telecom:mailbox-mss",
      "path" : "PractitionerRole.telecom",
      "sliceName" : "mailbox-mss",
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.telecom:mailbox-mss.extension",
      "path" : "PractitionerRole.telecom.extension",
      "min" : 2
    },
    {
      "id" : "PractitionerRole.availableTime",
      "path" : "PractitionerRole.availableTime",
      "short" : "precisionHoraire (SituationOperationnelle) : planning d'activité du professionnel",
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "horaire",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "PractitionerRole.availableTime.extension",
      "path" : "PractitionerRole.availableTime.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "PractitionerRole.availableTime.extension:ror-available-time-type-of-time",
      "path" : "PractitionerRole.availableTime.extension",
      "sliceName" : "ror-available-time-type-of-time",
      "short" : "typePlageHoraire (Horaire) : Apporte un contexte à la plage horaire définie par la suite",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "typePlageHoraire",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "PractitionerRole.availableTime.extension:ror-available-time-effective-opening-closing-date",
      "path" : "PractitionerRole.availableTime.extension",
      "sliceName" : "ror-available-time-effective-opening-closing-date",
      "short" : "debutDateEffective + finDateEffective (Horaire)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "debutDateEffective/finDateEffective",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "PractitionerRole.availableTime.extension:ror-available-time-number-days-of-week",
      "path" : "PractitionerRole.availableTime.extension",
      "sliceName" : "ror-available-time-number-days-of-week",
      "short" : "jourSemaine (Horaire) : Numéro du jour dans la semaine",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "jourSemaine",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "PractitionerRole.availableTime.availableStartTime",
      "path" : "PractitionerRole.availableTime.availableStartTime",
      "short" : "heureDebut (Horaire) : Heure de début de la plage horaire",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "heureDebut",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "PractitionerRole.availableTime.availableEndTime",
      "path" : "PractitionerRole.availableTime.availableEndTime",
      "short" : "heureFin (Horaire) : Heure de fin de la plage horaire",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORPractitionerRole-situationOp",
        "map" : "heureFin",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    }]
  }
}

```
