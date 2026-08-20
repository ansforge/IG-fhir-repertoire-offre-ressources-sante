# RORCoreOrganizationUF - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORCoreOrganizationUF**

## Resource Profile: RORCoreOrganizationUF 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-core-organization-uf | *Version*:0.7.0 |
| Draft as of 2026-08-20 | *Computable Name*:RORCoreOrganizationUF |

 
Profil créé dans le cadre du ROR pour décrire les unités fonctionnelles (UF) médicales, rattachées à un pôle/service ou à une entité géographique (EG) 

**Utilisations:**

* Référence ce Profil: [RORCoreOrganizationUF](StructureDefinition-ror-core-organization-uf.md), [RORHealthcareService](StructureDefinition-ror-healthcareservice.md), [RORMeasureReport](StructureDefinition-ror-measurereport.md) and [RORTask](StructureDefinition-ror-task.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-core-organization-uf)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-core-organization-uf.csv), [Excel](StructureDefinition-ror-core-organization-uf.xlsx), [Schematron](StructureDefinition-ror-core-organization-uf.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-core-organization-uf",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-core-organization-uf",
  "version" : "0.7.0",
  "name" : "RORCoreOrganizationUF",
  "status" : "draft",
  "date" : "2026-08-20T16:34:37+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil créé dans le cadre du ROR pour décrire les unités fonctionnelles (UF) médicales, rattachées à un pôle/service ou à une entité géographique (EG)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
    "uri" : "https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf",
    "name" : "OrganisationInterne (UF) du Modèle exposition ROR V3"
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
  "type" : "Organization",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization",
      "mapping" : [{
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "OrganisationInterne",
        "comment" : "Profils ayant Accès"
      }]
    },
    {
      "id" : "Organization.id",
      "path" : "Organization.id",
      "mapping" : [{
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "metadonnee.identifiant",
        "comment" : "Tous les profils"
      }]
    },
    {
      "id" : "Organization.meta",
      "path" : "Organization.meta",
      "mapping" : [{
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "metadonnee",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.meta.lastUpdated",
      "path" : "Organization.meta.lastUpdated",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "dateMiseJour",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.meta.tag",
      "path" : "Organization.meta.tag",
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
      "id" : "Organization.meta.tag:codeRegion",
      "path" : "Organization.meta.tag",
      "sliceName" : "codeRegion",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "regionSource",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension",
      "path" : "Organization.extension",
      "min" : 1
    },
    {
      "id" : "Organization.extension:ror-organization-reopening-date",
      "path" : "Organization.extension",
      "sliceName" : "ror-organization-reopening-date",
      "short" : "datePrevisionnelleReouverture (OI) : Date prévisionnelle à partir de laquelle la prestation sera de nouveau assurée",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-reopening-date"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "datePrevisionnelleReouverture",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension:ror-organization-closing-type",
      "path" : "Organization.extension",
      "sliceName" : "ror-organization-closing-type",
      "short" : "typeFermeture (OI) : Le type de fermeture d'un niveau organisationnel indique la temporalité de la fermeture.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-closing-type"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "typeFermeture",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension:organization-period",
      "path" : "Organization.extension",
      "sliceName" : "organization-period",
      "short" : "dateOuverture (OI) + dateFermeture (OI)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/organization-period"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:organization-period.value[x].end",
      "path" : "Organization.extension.value[x].end",
      "mapping" : [{
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "dateOuverture",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension:ror-meta-comment",
      "path" : "Organization.extension",
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
      "id" : "Organization.extension:ror-meta-creation-date",
      "path" : "Organization.extension",
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
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "metadonnee.dateCreation",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension:ror-meta-questionnaire-used-as-a-template",
      "path" : "Organization.extension",
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
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "metadonnee.modeleSaisie",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:identifierOI",
      "path" : "Organization.identifier",
      "sliceName" : "identifierOI",
      "short" : "identifiantOI (OI) : Identifiant de l'organisation interne, unique et persistant au niveau national",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "identifiantOI",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.identifier:identifierOI.type",
      "path" : "Organization.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R345-TypeIdentifiantAutre/FHIR/TRE_R345-TypeIdentifiantAutre",
          "code" : "42"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:identifierOI.system",
      "path" : "Organization.identifier.system",
      "patternUri" : "https://oi.esante.gouv.fr"
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        }],
        "description" : "Slicing pour distinguer les différents types de code portés par Organization.type",
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Organization.type:OIType",
      "path" : "Organization.type",
      "sliceName" : "OIType",
      "short" : "typeOI (OI) : Type d'organisation interne",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J203-TypeOrganisationInterne-ROR/FHIR/JDV-J203-TypeOrganisationInterne-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "typeOI",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "nomOI (OI) : Nom de l'unité fonctionnelle",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "nomOI",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "short" : "boiteLettreMSS (OrganisationInterne) : Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l’organisation interne",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "boiteLettreMSS",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.telecom.extension",
      "path" : "Organization.telecom.extension",
      "min" : 2
    },
    {
      "id" : "Organization.telecom.extension:ror-telecom-communication-channel",
      "path" : "Organization.telecom.extension",
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
      "id" : "Organization.telecom.extension:ror-telecom-usage",
      "path" : "Organization.telecom.extension",
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
      "id" : "Organization.telecom.extension:ror-telecom-confidentiality-level",
      "path" : "Organization.telecom.extension",
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
      "id" : "Organization.telecom.value",
      "path" : "Organization.telecom.value",
      "short" : "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORCoreOrganizationUF-oi",
        "map" : "adresseTelecom",
        "comment" : "cf boiteLettreMSS"
      }]
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "short" : "Rattachement à l'entité géographique (EG), au pôle/service ou à l'UF parente",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-internal-organization",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-core-organization-uf"]
      }],
      "mustSupport" : true
    }]
  }
}

```
