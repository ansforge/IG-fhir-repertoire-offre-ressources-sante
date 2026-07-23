# RORHealthcareService - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORHealthcareService**

## Resource Profile: RORHealthcareService 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice | *Version*:0.7.0 |
| Draft as of 2026-07-23 | *Computable Name*:RORHealthcareService |

 
Profil créé dans le cadre du ROR pour décrire les prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d’une personne 

**Utilisations:**

* Référence ce Profil: [RORPractitionerRoleProfile](StructureDefinition-ror-practitionerrole.md) and [RORTask](StructureDefinition-ror-task.md)
* Exemples pour ce/t/te Profil: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md)
* CapabilityStatements utilisant ce Profil: [ROR-Consommateur](CapabilityStatement-ror-consommateur.md) and [ROR-Serveur](CapabilityStatement-ror-serveur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-healthcareservice)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-healthcareservice.csv), [Excel](StructureDefinition-ror-healthcareservice.xlsx), [Schematron](StructureDefinition-ror-healthcareservice.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-healthcareservice",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice",
  "version" : "0.7.0",
  "name" : "RORHealthcareService",
  "status" : "draft",
  "date" : "2026-07-23T08:09:55+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil créé dans le cadre du ROR pour décrire les prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORHealthcareService",
    "uri" : "https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf",
    "name" : "HealthcareService du Modèle exposition ROR V3"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HealthcareService",
      "path" : "HealthcareService",
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "OffreOperationnelle",
        "comment" : "Profils ayant Accès"
      }]
    },
    {
      "id" : "HealthcareService.id",
      "path" : "HealthcareService.id",
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "metadonnee.identifiant",
        "comment" : "Tous les profils si uniteSensible = Non  \nUniquement Profil 1 et Profil 4 si uniteSensible = Oui"
      }]
    },
    {
      "id" : "HealthcareService.meta",
      "path" : "HealthcareService.meta",
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "metadonnee",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.meta.lastUpdated",
      "path" : "HealthcareService.meta.lastUpdated",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "dateMiseJour",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.meta.tag",
      "path" : "HealthcareService.meta.tag",
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
      "id" : "HealthcareService.meta.tag:codeRegion",
      "path" : "HealthcareService.meta.tag",
      "sliceName" : "codeRegion",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "regionSource",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.extension",
      "path" : "HealthcareService.extension",
      "min" : 3
    },
    {
      "id" : "HealthcareService.extension:ror-territorial-division",
      "path" : "HealthcareService.extension",
      "sliceName" : "ror-territorial-division",
      "short" : "zoneIntervention (OffreOperationnelle) : Périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite.  \nCela inclus notamment les divisions territoriales dans lesquelles les professionnels se déplacent.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "zoneIntervention",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.extension:ror-territorial-division.extension:typeTerritorialDivision",
      "path" : "HealthcareService.extension.extension",
      "sliceName" : "typeTerritorialDivision"
    },
    {
      "id" : "HealthcareService.extension:ror-territorial-division.extension:typeTerritorialDivision.value[x]",
      "path" : "HealthcareService.extension.extension.value[x]",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R201-TypeDivisionTerritoriale/FHIR/TRE-R201-TypeDivisionTerritoriale",
          "code" : "3"
        }]
      }
    },
    {
      "id" : "HealthcareService.extension:ror-healthcareservice-sensitive-unit",
      "path" : "HealthcareService.extension",
      "sliceName" : "ror-healthcareservice-sensitive-unit",
      "short" : "uniteSensible (OffreOperationnelle) : Permet de signaler que toutes les informations de description d'une offre sont confidentielles",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "uniteSensible",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.extension:ror-healthcareservice-no-consent-habilitation",
      "path" : "HealthcareService.extension",
      "sliceName" : "ror-healthcareservice-no-consent-habilitation",
      "short" : "habilitationAuxSoinsSansConsentement (OffreOperationnelle) : permet d'identifier les offres pour lesquelles un établissement est autorisé à prendre en charge des patients sans leur consentement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-no-consent-habilitation"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "habilitationAuxSoinsSansConsentement",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.extension:ror-healthcareservice-psychiatric-sector",
      "path" : "HealthcareService.extension",
      "sliceName" : "ror-healthcareservice-psychiatric-sector",
      "short" : "secteurPsychiatrique (OffreOperationnelle) : aire géographique à laquelle sont rattachées des structures de relais et de soins qui prennent en charge des patients résidants sur ce secteur",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-psychiatric-sector"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "secteurPsychiatrique",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.extension:ror-healthcareservice-patient-type",
      "path" : "HealthcareService.extension",
      "sliceName" : "ror-healthcareservice-patient-type",
      "short" : "publicPrisEnCharge (Patientele) : Ensemble de personnes qui présentent des caractéristiques psychologiques, intellectuelles, physiques, psycho-motrices, comportementales leur permettant de bénéficier de la prestation décrite",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "publicPrisEnCharge",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.extension:ror-healthcareservice-contact",
      "path" : "HealthcareService.extension",
      "sliceName" : "ror-healthcareservice-contact",
      "short" : "contact (OffreOperationnelle) : Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "contact",
        "comment" : "Profil 1,  \nProfil 2 et Profil 5 si niveau de confidentialité du contact différent de 'très restreint' et si uniteSensible = non  \nProfil 3 si champ d'activité MS et si niveau de confidentialité  du contact différent de 'très restreint' et si uniteSensible = non sinon, pour les autres champs d'activité, uniquement accès si niveau de confidentialité  du contact= 'public'  \nProfil 4 si niveau de confidentialité  du contact= 'public'  \nProfil 0 si niveau de confidentialité  du contact= 'public' et si uniteSensible = non  "
      }]
    },
    {
      "id" : "HealthcareService.extension:ror-healthcareservice-contact.extension:ror-healthcareservice-contact-telecom",
      "path" : "HealthcareService.extension.extension",
      "sliceName" : "ror-healthcareservice-contact-telecom",
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "contact.telecommunication",
        "comment" : "Profil 1,  \nProfil 2 et Profil 5 si niveaux de confidentialité du contact et du contact.telecommunication différents de 'très restreint' et si uniteSensible = non  \nProfil 3 si champ d'activité MS et si niveaux de confidentialité du contact et du contact.telecommunication différents de 'très restreint' et si uniteSensible = non, sinon, pour les autres champs d'activité, uniquement accès si niveau de confidentialité  du contact= 'public'  \nProfil 4 si niveaux de confidentialité du contact et du contact.telecommunication = 'public'  \nProfil 0 si niveaux de confidentialité du contact et du contact.telecommunication = 'public' et si uniteSensible = non  "
      }]
    },
    {
      "id" : "HealthcareService.extension:ror-meta-creation-date",
      "path" : "HealthcareService.extension",
      "sliceName" : "ror-meta-creation-date",
      "short" : "dateCreation (Metadonnee)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "metadonnee.dateCreation",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.extension:ror-meta-questionnaire-used-as-a-template",
      "path" : "HealthcareService.extension",
      "sliceName" : "ror-meta-questionnaire-used-as-a-template",
      "short" : "modeleSaisie (Metadonnee) : Référence canonique vers le questionnaire utilisé comme modèle de saisie, incluant obligatoirement la version sous la forme url|version. Exemple : https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/ror-questionnaire-2042|1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-questionnaire-used-as-a-template"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "metadonnee.modeleSaisie",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.identifier",
      "path" : "HealthcareService.identifier",
      "short" : "identifiantOffre (OffreOperationnelle) : Identifiant de l'offre, unique et persistant au niveau national",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "identifiantOffre",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.active",
      "path" : "HealthcareService.active",
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "Pas d'équivalent"
      }]
    },
    {
      "id" : "HealthcareService.providedBy",
      "path" : "HealthcareService.providedBy",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-internal-organization",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-core-organization-uf"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "EntiteJuridique"
      },
      {
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "EntiteGeographique"
      },
      {
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "OrganisationInterne"
      }]
    },
    {
      "id" : "HealthcareService.category",
      "path" : "HealthcareService.category",
      "short" : "typeOffre (OffreOperationnelle) : Permet de distinguer les offres et de les classer en fonction de leur nature particulière",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J238-TypeOffre-ROR/FHIR/JDV-J238-TypeOffre-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "typeOffre",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.type",
      "path" : "HealthcareService.type",
      "short" : "champActivite (OffreOperationnelle) : Domaine dans lequel s'inscrit l'offre",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J20-ChampActivite-ROR/FHIR/JDV-J20-ChampActivite-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "champActivite",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.specialty",
      "path" : "HealthcareService.specialty",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.specialty:operationalActivity",
      "path" : "HealthcareService.specialty",
      "sliceName" : "operationalActivity",
      "short" : "activiteOperationnelle (ActiviteOperationnelle) : ensemble cohérent d’actions et de pratiques mises en œuvre pour répondre aux besoins en Santé de la personne",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "ActiviteOperationnelle.activiteOperationnelle",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.specialty:operationalActivityFamily",
      "path" : "HealthcareService.specialty",
      "sliceName" : "operationalActivityFamily",
      "short" : "familleActiviteOperationnelle (ActiviteOperationnelle) : dans le secteur médico-social, la famille d’activité correspond au niveau 4 des prestations de la nomenclature SERAFIN",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J51-FamilleActiviteOperationnelle-ROR/FHIR/JDV-J51-FamilleActiviteOperationnelle-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "ActiviteOperationnelle.familleActiviteOperationnelle",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.location",
      "path" : "HealthcareService.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "LieuRealisationOffre"
      }]
    },
    {
      "id" : "HealthcareService.name",
      "path" : "HealthcareService.name",
      "short" : "nomOffre (OffreOpérationnelle) : Dénomination sous laquelle l'offre est identifiée par le porteur d'offre",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "nomOffre",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.comment",
      "path" : "HealthcareService.comment",
      "short" : "commentaire (Metadonnee) : Commentaire qui peut être associé à chaque objet",
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "metadonnee.commentaire",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.telecom",
      "path" : "HealthcareService.telecom",
      "short" : "boiteLettreMSS (OffreOperationnelle) : Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l’offre opérationnelle",
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "boiteLettreMSS.adresseMSS",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.telecom.extension",
      "path" : "HealthcareService.telecom.extension",
      "min" : 2
    },
    {
      "id" : "HealthcareService.telecom.extension:ror-telecom-communication-channel",
      "path" : "HealthcareService.telecom.extension",
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
      "id" : "HealthcareService.telecom.extension:ror-telecom-usage",
      "path" : "HealthcareService.telecom.extension",
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
      "id" : "HealthcareService.telecom.extension:ror-telecom-confidentiality-level",
      "path" : "HealthcareService.telecom.extension",
      "sliceName" : "ror-telecom-confidentiality-level",
      "short" : "niveauConfidentialite (Telecommunication) : Niveau de restriction de l'accès aux attributs de la classe Télécommunication",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.telecom.value",
      "path" : "HealthcareService.telecom.value",
      "short" : "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.coverageArea",
      "path" : "HealthcareService.coverageArea",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location"]
      }]
    },
    {
      "id" : "HealthcareService.characteristic",
      "path" : "HealthcareService.characteristic",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        },
        {
          "type" : "value",
          "path" : "extension(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type)"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.characteristic.extension:ror-act-type",
      "path" : "HealthcareService.characteristic.extension",
      "sliceName" : "ror-act-type",
      "short" : "Type d'acte",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.characteristic:receptionType",
      "path" : "HealthcareService.characteristic",
      "sliceName" : "receptionType",
      "short" : "temporaliteAccueil (OffreOperationnelle) : Précision sur le mode de prise en charge",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J30-TemporaliteAccueil-ROR/FHIR/JDV-J30-TemporaliteAccueil-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "temporaliteAccueil",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.characteristic:receptionType.extension:ror-act-type",
      "path" : "HealthcareService.characteristic.extension",
      "sliceName" : "ror-act-type",
      "short" : "Type d'acte",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.characteristic:careMode",
      "path" : "HealthcareService.characteristic",
      "sliceName" : "careMode",
      "short" : "modePriseEnCharge (OffreOperationnelle) : Caractérise l'hébergement ainsi que le niveau de technicité et d'intensité des soins",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J19-ModePriseEnCharge-ROR/FHIR/JDV-J19-ModePriseEnCharge-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "modePriseEnCharge",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.characteristic:careMode.extension:ror-act-type",
      "path" : "HealthcareService.characteristic.extension",
      "sliceName" : "ror-act-type",
      "short" : "Type d'acte",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.characteristic:receptionModality",
      "path" : "HealthcareService.characteristic",
      "sliceName" : "receptionModality",
      "short" : "modaliteAccueil (OffreOperationnelle) : Permet de préciser le mode de prise en charge géographiquement",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J226-ModaliteAccueil-ROR/FHIR/JDV-J226-ModaliteAccueil-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "modaliteAccueil",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.characteristic:receptionModality.extension:ror-act-type",
      "path" : "HealthcareService.characteristic.extension",
      "sliceName" : "ror-act-type",
      "short" : "Type d'acte",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.characteristic:managementType",
      "path" : "HealthcareService.characteristic",
      "sliceName" : "managementType",
      "short" : "modeGestion (OffreOperationnelle) : Mode d’intervention des aides à domicile en fonction de la nature de la relation contractuelle",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J26-ModeGestion-ROR/FHIR/JDV-J26-ModeGestion-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "modeGestion",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.characteristic:managementType.extension:ror-act-type",
      "path" : "HealthcareService.characteristic.extension",
      "sliceName" : "ror-act-type",
      "short" : "Type d'acte",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.characteristic:specificAct",
      "path" : "HealthcareService.characteristic",
      "sliceName" : "specificAct",
      "short" : "acteSpecifique (OffreOperationnelle) : Action menée par un ou plusieurs acteur(s) de santé dans le cadre d’une activité",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "acteSpecifique",
        "comment" : "Profil 1,  \nProfil 4,  \nProfil 5,  \nProfil 2 (sauf si uniteSensible = Oui),  \nProfil 3 si champ d'activité = MS (sauf si uniteSensible = Oui)  "
      }]
    },
    {
      "id" : "HealthcareService.characteristic:specificAct.extension",
      "path" : "HealthcareService.characteristic.extension",
      "min" : 1
    },
    {
      "id" : "HealthcareService.characteristic:specificAct.extension:ror-act-type",
      "path" : "HealthcareService.characteristic.extension",
      "sliceName" : "ror-act-type",
      "short" : "Type d'acte",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.characteristic:specificAct.extension:ror-act-type.value[x]",
      "path" : "HealthcareService.characteristic.extension.value[x]",
      "patternCode" : "specificAct"
    },
    {
      "id" : "HealthcareService.characteristic:outsideOfficeAct",
      "path" : "HealthcareService.characteristic",
      "sliceName" : "outsideOfficeAct",
      "short" : "acteRealiseHorsCabinet (OffreOperationnelle) : Permet de décrire l’offre de santé des médecins libéraux réalisée en dehors du cabinet, au sein d’un établissement",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "acteRealiseHorsCabinet",
        "comment" : "Similaire aux accès de acteSpecifique"
      }]
    },
    {
      "id" : "HealthcareService.characteristic:outsideOfficeAct.extension",
      "path" : "HealthcareService.characteristic.extension",
      "min" : 1
    },
    {
      "id" : "HealthcareService.characteristic:outsideOfficeAct.extension:ror-act-type",
      "path" : "HealthcareService.characteristic.extension",
      "sliceName" : "ror-act-type",
      "short" : "Type d'acte",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.characteristic:outsideOfficeAct.extension:ror-act-type.value[x]",
      "path" : "HealthcareService.characteristic.extension.value[x]",
      "patternCode" : "outsideOfficeAct"
    },
    {
      "id" : "HealthcareService.characteristic:takingCareSpeciality",
      "path" : "HealthcareService.characteristic",
      "sliceName" : "takingCareSpeciality",
      "short" : "specialisationPriseEnCharge (OffreOperationnelle) : Regroupement de troubles, de pathologies ou de déficiences qui nécessitent la mobilisation d'expertises, de compétences et/ou d'équipements spécifiques",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J35-SpecialisationDePriseEnCharge-ROR/FHIR/JDV-J35-SpecialisationDePriseEnCharge-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "specialisationPriseEnCharge",
        "comment" : "Similaire aux accès de acteSpecifique"
      }]
    },
    {
      "id" : "HealthcareService.characteristic:takingCareSpeciality.extension:ror-act-type",
      "path" : "HealthcareService.characteristic.extension",
      "sliceName" : "ror-act-type",
      "short" : "Type d'acte",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.characteristic:annualOpening",
      "path" : "HealthcareService.characteristic",
      "sliceName" : "annualOpening",
      "short" : "ouvertureAnnuelle (OffreOperationnelle) : Nombre de jours maximum dans l’année au cours desquels la prestation peut être proposée par l'établissement",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J28-OuvertureAnnuelle-ROR/FHIR/JDV-J28-OuvertureAnnuelle-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "ouvertureAnnuelle",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.characteristic:annualOpening.extension:ror-act-type",
      "path" : "HealthcareService.characteristic.extension",
      "sliceName" : "ror-act-type",
      "short" : "Type d'acte",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.characteristic:ressourceProfession",
      "path" : "HealthcareService.characteristic",
      "sliceName" : "ressourceProfession",
      "short" : "professionRessource (OffreOperationnelle) : Traduit la mobilisation de métiers qui constituent un facteur différenciant dans la réalisation de la prestation",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J186-ProfessionRessource-ROR/FHIR/JDV-J186-ProfessionRessource-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "professionRessource",
        "comment" : "Similaire aux accès de acteSpecifique"
      }]
    },
    {
      "id" : "HealthcareService.characteristic:ressourceProfession.extension:ror-act-type",
      "path" : "HealthcareService.characteristic.extension",
      "sliceName" : "ror-act-type",
      "short" : "Type d'acte",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.characteristic:specificCompetence",
      "path" : "HealthcareService.characteristic",
      "sliceName" : "specificCompetence",
      "short" : "competenceSpecifique (OffreOperationnelle) : Capacité ou connaissance reconnue qui permet ou facilite l’accueil d’une personne",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J33-CompetenceSpecifique-ROR/FHIR/JDV-J33-CompetenceSpecifique-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "competenceSpecifique",
        "comment" : "Similaire aux accès de acteSpecifique"
      }]
    },
    {
      "id" : "HealthcareService.characteristic:specificCompetence.extension:ror-act-type",
      "path" : "HealthcareService.characteristic.extension",
      "sliceName" : "ror-act-type",
      "short" : "Type d'acte",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.characteristic:expertiseLevel",
      "path" : "HealthcareService.characteristic",
      "sliceName" : "expertiseLevel",
      "short" : "niveauExpertise (OffreOperationnelle) : Niveau de ressources humaines et matérielles engagées dans la réalisation de l'offre",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J227-NiveauExpertise-ROR/FHIR/JDV-J227-NiveauExpertise-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "niveauExpertise",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.characteristic:expertiseLevel.extension:ror-act-type",
      "path" : "HealthcareService.characteristic.extension",
      "sliceName" : "ror-act-type",
      "short" : "Type d'acte",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.characteristic:temporalityStopService",
      "path" : "HealthcareService.characteristic",
      "sliceName" : "temporalityStopService",
      "short" : "typeFermeture (OffreOperationnelle) : Temporalité d'arrêt de réalisation de la prestation",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J185-TypeFermeture-ROR/FHIR/JDV-J185-TypeFermeture-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "typeFermeture",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.characteristic:temporalityStopService.extension:ror-act-type",
      "path" : "HealthcareService.characteristic.extension",
      "sliceName" : "ror-act-type",
      "short" : "Type d'acte",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.availableTime",
      "path" : "HealthcareService.availableTime",
      "short" : "horaire (OffreOperationnelle) : heureDebut + heureFin",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "horaire",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.availableTime.extension",
      "path" : "HealthcareService.availableTime.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "HealthcareService.availableTime.extension:ror-available-time-type-of-time",
      "path" : "HealthcareService.availableTime.extension",
      "sliceName" : "ror-available-time-type-of-time",
      "short" : "typePlageHoraire (Horaire) : apporte un contexte à la plage horaire définie par la suite",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.availableTime.extension:ror-available-time-effective-opening-closing-date",
      "path" : "HealthcareService.availableTime.extension",
      "sliceName" : "ror-available-time-effective-opening-closing-date",
      "short" : "debutDateEffective + finDateEffective (Horaire)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.availableTime.extension:ror-available-time-number-days-of-week",
      "path" : "HealthcareService.availableTime.extension",
      "sliceName" : "ror-available-time-number-days-of-week",
      "short" : "jourSemaine (Horaire) : Numéro du jour dans la semaine - Remarque : L'utilisation de cette extension est privilégiée à celle de l'élément natif daysOfWeek.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.availableTime.daysOfWeek",
      "path" : "HealthcareService.availableTime.daysOfWeek",
      "short" : "Remarque : L'utilisation de l'extension ror-available-time-number-days-of-week est privilégiée.",
      "max" : "1"
    },
    {
      "id" : "HealthcareService.availableTime.availableStartTime",
      "path" : "HealthcareService.availableTime.availableStartTime",
      "short" : "heureDebut (Horaire) : Heure de début de la plage horaire",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "heureDebut",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.availableTime.availableEndTime",
      "path" : "HealthcareService.availableTime.availableEndTime",
      "short" : "heureFin (Horaire) : Heure de fin de la plage horaire",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "heureFin",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.notAvailable",
      "path" : "HealthcareService.notAvailable",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "id"
        }],
        "rules" : "open"
      },
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.notAvailable:closingReopeningDate",
      "path" : "HealthcareService.notAvailable",
      "sliceName" : "closingReopeningDate",
      "short" : "Période de fermeture (during.start) et de réouverture prévisionnelle (during.end).",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.notAvailable:closingReopeningDate.id",
      "path" : "HealthcareService.notAvailable.id",
      "min" : 1,
      "patternString" : "closingReopeningDate"
    },
    {
      "id" : "HealthcareService.notAvailable:closingReopeningDate.description",
      "path" : "HealthcareService.notAvailable.description",
      "patternString" : "Période de fermeture et de réouverture prévisionnelle"
    },
    {
      "id" : "HealthcareService.notAvailable:closingReopeningDate.during.start",
      "path" : "HealthcareService.notAvailable.during.start",
      "short" : "dateFermeture (OffreOperationnelle) : Date effective à partir de laquelle la prestation n'est plus assurée",
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "dateFermeture",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "HealthcareService.notAvailable:closingReopeningDate.during.end",
      "path" : "HealthcareService.notAvailable.during.end",
      "short" : "DatePrevisionnelleReouverture (OffreOperationnelle) : date prévisionnelle à partir de laquelle la prestation sera de nouveau assurée",
      "mapping" : [{
        "identity" : "specmetier-to-RORHealthcareService",
        "map" : "datePrevisionnelleReouverture",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    }]
  }
}

```
