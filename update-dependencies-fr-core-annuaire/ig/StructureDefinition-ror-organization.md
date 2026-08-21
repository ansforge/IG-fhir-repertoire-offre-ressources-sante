# ROROrganization - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ROROrganization**

## Resource Profile: ROROrganization 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:ROROrganization |

 
Profil créé dans le cadre du ROR pour décrire les entités juridiques (EJ) et entités géographiques (EG) du domaine sanitaire, médico-social et social immatriculées dans le FINESS 

**Utilisations:**

* Référence ce Profil: [RORCoreOrganizationUF](StructureDefinition-ror-core-organization-uf.md), [RORHealthcareService](StructureDefinition-ror-healthcareservice.md), [RORInternalOrganization](StructureDefinition-ror-internal-organization.md), [RORLocation](StructureDefinition-ror-location.md)... Show 4 more, [RORMeasureReport](StructureDefinition-ror-measurereport.md), [ROROrganization](StructureDefinition-ror-organization.md), [RORPractitionerRoleProfile](StructureDefinition-ror-practitionerrole.md) and [RORTask](StructureDefinition-ror-task.md)
* CapabilityStatements utilisant ce Profil: [ROR-Consommateur](CapabilityStatement-ror-consommateur.md) and [ROR-Serveur](CapabilityStatement-ror-serveur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-organization.csv), [Excel](StructureDefinition-ror-organization.xlsx), [Schematron](StructureDefinition-ror-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-organization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization",
  "version" : "0.7.0",
  "name" : "ROROrganization",
  "status" : "draft",
  "date" : "2026-08-21T09:28:33+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil créé dans le cadre du ROR pour décrire les entités juridiques (EJ) et entités géographiques (EG) du domaine sanitaire, médico-social et social immatriculées dans le FINESS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-ROROrganization-ej",
    "uri" : "https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf",
    "name" : "EntiteJuridique du Modèle exposition ROR V3"
  },
  {
    "identity" : "specmetier-to-ROROrganization-eg",
    "uri" : "https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf",
    "name" : "EntiteGeographique du Modèle exposition ROR V3"
  },
  {
    "identity" : "as-organization-to-mos-ej",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsOrganization to MOS - EJ"
  },
  {
    "identity" : "as-organization-to-mos-eg",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsOrganization to MOS - EG"
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
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization",
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "EntiteJuridique",
        "comment" : "Profils ayant Accès"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "EntiteGeographique",
        "comment" : "Profils ayant Accès"
      }]
    },
    {
      "id" : "Organization.id",
      "path" : "Organization.id",
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "metadonnee.identifiant",
        "comment" : "Tous les profils"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "metadonnee.identifiant",
        "comment" : "Tous les profils"
      }]
    },
    {
      "id" : "Organization.meta",
      "path" : "Organization.meta",
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "metadonnee",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
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
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "dateMiseJour",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
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
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "regionSource",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
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
      "id" : "Organization.extension:ror-organization-price",
      "path" : "Organization.extension",
      "sliceName" : "ror-organization-price",
      "short" : "Tarif",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "tarif",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension:ror-territorial-division",
      "path" : "Organization.extension",
      "sliceName" : "ror-territorial-division",
      "short" : "territoireSante (EG) : Territoire(s) de santé où est située l'entité géographique.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "territoireSante",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension:ror-territorial-division.extension:typeTerritorialDivision",
      "path" : "Organization.extension.extension",
      "sliceName" : "typeTerritorialDivision"
    },
    {
      "id" : "Organization.extension:ror-territorial-division.extension:typeTerritorialDivision.value[x]",
      "path" : "Organization.extension.extension.value[x]",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R201-TypeDivisionTerritoriale/FHIR/TRE-R201-TypeDivisionTerritoriale",
          "code" : "4"
        }]
      }
    },
    {
      "id" : "Organization.extension:ror-organization-financial-help-type",
      "path" : "Organization.extension",
      "sliceName" : "ror-organization-financial-help-type",
      "short" : "aideFinanciere (EG) : Aide financière pour laquelle l'EG dispose d'une habilitation ou conventionnement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-financial-help-type"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "aideFinanciere",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension:ror-organization-accomodation-family",
      "path" : "Organization.extension",
      "sliceName" : "ror-organization-accomodation-family",
      "short" : "hebergementFamille (EG) : Indique si l'établissement peut héberger les familles des personnes prises en charge",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-accomodation-family"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "hebergementFamille",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension:ror-organization-nb-permanent-social-help-place",
      "path" : "Organization.extension",
      "sliceName" : "ror-organization-nb-permanent-social-help-place",
      "short" : "nbPlaceAideSocialTemporaire (EG) : nombre de places temporaires dédiées à l'aide sociale dans l'établissement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-nb-permanent-social-help-place"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "nbPlaceAideSocialPermanent",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension:ror-organization-nb-temporary-social-help-place",
      "path" : "Organization.extension",
      "sliceName" : "ror-organization-nb-temporary-social-help-place",
      "short" : "nbPlaceAideSocialPermanent (EG) : nombre de places permanentes dédiées à l'aide sociale dans l'établissement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-nb-temporary-social-help-place"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "nbPlaceAideSocialTemporaire",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension:ror-organization-accessibility-location",
      "path" : "Organization.extension",
      "sliceName" : "ror-organization-accessibility-location",
      "short" : "accessibiliteLieu (EG) : Précise dans quelle mesure les locaux sont conformes aux dispositions règlementaires relatives à l’accessibilité des établissements recevant du public",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-accessibility-location"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "accessibiliteLieu",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension:ror-organization-level-recourse-orsan",
      "path" : "Organization.extension",
      "sliceName" : "ror-organization-level-recourse-orsan",
      "short" : "niveauRecoursORSAN (EG) : Hiérarchisation fonctionnelle de la mobilisation des établissements pour accueillir les patients après régulation par le SAMU",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-level-recours-orsan"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "niveauRecoursORSAN",
        "comment" : "Profil 1, Profil 4"
      }]
    },
    {
      "id" : "Organization.extension:ror-organization-drop-zone",
      "path" : "Organization.extension",
      "sliceName" : "ror-organization-drop-zone",
      "short" : "zonePoser (EG) : Précise l’existence d’une zone de poser pour hélicoptère sur le site concerné",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-drop-zone"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "zonePoser",
        "comment" : "Profil 1, Profil 4"
      }]
    },
    {
      "id" : "Organization.extension:ror-organization-creation-date",
      "path" : "Organization.extension",
      "sliceName" : "ror-organization-creation-date",
      "short" : "dateCreation (EJ) : Date de création de l'entité juridique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-creation-date"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "dateCreation",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension:ror-organization-closing-type",
      "path" : "Organization.extension",
      "sliceName" : "ror-organization-closing-type",
      "short" : "typeFermeture (EJ + EG) : Le type de fermeture d'un niveau organisationnel indique la temporalité de la fermeture.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-closing-type"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "typeFermeture",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "typeFermeture",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension:organization-period",
      "path" : "Organization.extension",
      "sliceName" : "organization-period",
      "short" : "dateOuverture (EG) + dateFermeture (EJ + EG)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/organization-period"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "dateFermeture (uniquement)",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "dateOuverture et dateFermeture",
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
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "metadonnee.dateCreation",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
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
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "metadonnee.modeleSaisie",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "metadonnee.modeleSaisie",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.extension:ror-organization-comment",
      "path" : "Organization.extension",
      "sliceName" : "ror-organization-comment",
      "short" : "commentaire (EG) : Commentaire qui permet à la structure de donner des informations complémentaires",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-comment"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "commentaire",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:idNatSt",
      "path" : "Organization.identifier",
      "sliceName" : "idNatSt",
      "short" : "idNatstruct (EJ + EG) : Identification nationale définie dans le CI-SIS",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "idNatstruct",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "idNatstruct",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.identifier:siren",
      "path" : "Organization.identifier",
      "sliceName" : "siren",
      "short" : "numSIREN (EJ) : numéro unique d'identification attribué à chaque entreprise par l'INSEE",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "numSIREN",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "numSIREN",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.identifier:siret",
      "path" : "Organization.identifier",
      "sliceName" : "siret",
      "short" : "numSIRET (EG) : numéro unique d'identification, attribué par l'INSEE, à chaque entité géographique",
      "comment" : "https://mos.esante.gouv.fr/6.html#_4d544200-4d26-4cc5-8294-c862458f60d8",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "numSIRET",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.identifier:finess",
      "path" : "Organization.identifier",
      "sliceName" : "finess",
      "short" : "numFINESS (EJ + EG) : Numéro FINESS",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "numFINESS",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "numFINESS",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.identifier:rppsRang",
      "path" : "Organization.identifier",
      "sliceName" : "rppsRang",
      "short" : "numEJ_RPPS_ADELI_Rang ou numEG_RPPS_ADELI_Rang",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "numEJ_RPPS_ADELI_Rang",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "numEG_RPPS_ADELI_Rang",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.identifier:adeliRang",
      "path" : "Organization.identifier",
      "sliceName" : "adeliRang",
      "short" : "numEJ_RPPS_ADELI_Rang ou numEG_RPPS_ADELI_Rang",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "numEJ_RPPS_ADELI_Rang",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "numEG_RPPS_ADELI_Rang",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.identifier:adeliRang.type",
      "path" : "Organization.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure",
          "code" : "0"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:adeliRang.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "patternUri" : "https://adelirang.esante.gouv.fr"
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type:statutJuridiqueINSEE",
      "path" : "Organization.type",
      "sliceName" : "statutJuridiqueINSEE",
      "short" : "statutJuridique (EJ) : Situation juridique de l’établissement",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J199-StatutJuridique-ROR/FHIR/JDV-J199-StatutJuridique-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "statutJuridique",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.type:sphParticipation",
      "path" : "Organization.type",
      "sliceName" : "sphParticipation",
      "short" : "modaliteParticipationSPH (EG) : Modalités de participation au service public hospitalier",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J202-ESPIC-ROR/FHIR/JDV-J202-ESPIC-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "modaliteParticipationSPH",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.type:categorieEtablissement",
      "path" : "Organization.type",
      "sliceName" : "categorieEtablissement",
      "short" : "categorieEG (EG) : Cadre réglementaire dans lequel s'exerce l'activité de l'entité géographique",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J55-CategorieEG-ROR/FHIR/JDV-J55-CategorieEG-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "categorieEG",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "raisonSociale (EJ) ou denominationEG (EG) - Remarque : Décalage provisoire de la cardinalité par rapport au modèle d'exposition (1..1)",
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "raisonSociale",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "denominationEG",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.name.extension:ror-organization-additional-name",
      "path" : "Organization.name.extension",
      "sliceName" : "ror-organization-additional-name",
      "short" : "complementRaisonSociale (EJ) ou complementDenominationEG (EG)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-additional-name"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "complementRaisonSociale",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "complementDenominationEG",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.alias",
      "path" : "Organization.alias",
      "short" : "nomOperationnel (EG) : l’appellation communément utilisée par les acteurs de santé pour désigner l'entité géographique",
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "nomOpérationnel",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "adresseEJ",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.address.extension:inseeCode",
      "path" : "Organization.address.extension",
      "sliceName" : "inseeCode"
    },
    {
      "id" : "Organization.address.extension:inseeCode.value[x]",
      "path" : "Organization.address.extension.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J124-Commune/FHIR/JDV-J124-Commune"
      }
    },
    {
      "id" : "Organization.address.extension:ror-organization-geolocation",
      "path" : "Organization.address.extension",
      "sliceName" : "ror-organization-geolocation",
      "short" : "extension pour définir les données de géolocalisation de l'EG",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/geolocation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.address.extension:ror-organization-geolocation.extension:ror-confidence-geolocation",
      "path" : "Organization.address.extension.extension",
      "sliceName" : "ror-confidence-geolocation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidence-geolocation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.address.line.extension:careOf",
      "path" : "Organization.address.line.extension",
      "sliceName" : "careOf",
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "pointRemise",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.address.line.extension:additionalLocator",
      "path" : "Organization.address.line.extension",
      "sliceName" : "additionalLocator",
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "complementPointGeographique",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.address.line.extension:houseNumber",
      "path" : "Organization.address.line.extension",
      "sliceName" : "houseNumber",
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "numeroVoie",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.address.line.extension:buildingNumberSuffix",
      "path" : "Organization.address.line.extension",
      "sliceName" : "buildingNumberSuffix"
    },
    {
      "id" : "Organization.address.line.extension:buildingNumberSuffix.value[x]",
      "path" : "Organization.address.line.extension.value[x]",
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "extension",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.address.line.extension:streetNameType",
      "path" : "Organization.address.line.extension",
      "sliceName" : "streetNameType"
    },
    {
      "id" : "Organization.address.line.extension:streetNameType.value[x]",
      "path" : "Organization.address.line.extension.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J219-TypeVoie-ROR/FHIR/JDV-J219-TypeVoie-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "typeVoie",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.address.line.extension:streetNameBase",
      "path" : "Organization.address.line.extension",
      "sliceName" : "streetNameBase"
    },
    {
      "id" : "Organization.address.line.extension:streetNameBase.value[x]",
      "path" : "Organization.address.line.extension.value[x]",
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "libelleVoie",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.address.line.extension:lieuDit",
      "path" : "Organization.address.line.extension",
      "sliceName" : "lieuDit",
      "short" : "lieuDit (Adresse)"
    },
    {
      "id" : "Organization.address.line.extension:lieuDit.value[x]",
      "path" : "Organization.address.line.extension.value[x]",
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "lieuDit",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.address.line.extension:postalBox",
      "path" : "Organization.address.line.extension",
      "sliceName" : "postalBox",
      "short" : "mentionDistribution (Adresse)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.address.line.extension:postalBox.value[x]",
      "path" : "Organization.address.line.extension.value[x]",
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "mentionDistribution",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.address.city",
      "path" : "Organization.address.city",
      "short" : "localité (Adresse) : Localité ou Libellé du bureau distributeur CEDEX",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "localite",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.address.postalCode",
      "path" : "Organization.address.postalCode",
      "short" : "codePostal (Adresse) : Code Postal ou code postal spécifique CEDEX",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "codePostal",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
        "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact",
      "path" : "Organization.contact",
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "contact",
        "comment" : "Profil 1,\nProfil 2 et Profil 5 si niveau de confidentialité du contact différent de 'très restreint'\nProfil 3 si champ d'activité MS et si niveau de confidentialité  du contact différent de 'très restreint', pour les autres champs d'activité, uniquement accès si niveau de confidentialité  du contact= 'public'\nProfil 4 si niveau de confidentialité  du contact= 'public'\nProfil 0 si niveau de confidentialité  du contact= 'public'  "
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "contact",
        "comment" : "Profil 1,\nProfil 2 et Profil 5 si niveau de confidentialité du contact différent de 'très restreint'\nProfil 3 si champ d'activité MS et si niveau de confidentialité  du contact différent de 'très restreint', pour les autres champs d'activité,  uniquement accès si niveau de confidentialité  du contact= 'public'\nProfil 4 si niveau de confidentialité  du contact= 'public'\nProfil 0 si niveau de confidentialité  du contact= 'public'  "
      }]
    },
    {
      "id" : "Organization.contact.extension",
      "path" : "Organization.contact.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Organization.contact.extension:ror-contact-function-contact",
      "path" : "Organization.contact.extension",
      "sliceName" : "ror-contact-function-contact",
      "short" : "fonctionContact (Contact) : Un titre, une position ou une fonction de la personne assurant le contact au sein de l'organisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-function-contact"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.extension:ror-contact-description",
      "path" : "Organization.contact.extension",
      "sliceName" : "ror-contact-description",
      "short" : "description (Contact) : Une description du contact",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-description"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.extension:ror-contact-confidentiality-level",
      "path" : "Organization.contact.extension",
      "sliceName" : "ror-contact-confidentiality-level",
      "short" : "niveauConfidentialite (Contact) : Niveau de restriction de l'accès aux attributs de la classe Contact",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-confidentiality-level"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.purpose",
      "path" : "Organization.contact.purpose",
      "short" : "natureContact (Contact) : Un service ou un guichet assurant le contact au sein de l'organisation",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J221-NatureContact-ROR/FHIR/JDV-J221-NatureContact-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "natureContact",
        "comment" : "cf contact"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "natureContact",
        "comment" : "cf contact"
      }]
    },
    {
      "id" : "Organization.contact.name",
      "path" : "Organization.contact.name",
      "short" : "Nom (Contact) : Un nom de la personne ou du service à contacter",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "nom",
        "comment" : "cf contact"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "nom",
        "comment" : "cf contact"
      }]
    },
    {
      "id" : "Organization.contact.telecom",
      "path" : "Organization.contact.telecom",
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "telecommunication",
        "comment" : "Profil 1,\nProfil 2 et Profil 5 si niveaux de confidentialité du contact et du contact.telecommunication différents de 'très restreint'\nProfil 3 si champ d'activité MS et  si niveaux de confidentialité du contact et du contact.telecommunication différents de 'très restreint', sinon, pour les autres champs d'activité, uniquement accès si niveau de confidentialité  du contact= 'public'\nProfil 4 si niveaux de confidentialité du contact et du contact.telecommunication = 'public'\nProfil 0 si niveaux de confidentialité du contact et du contact.telecommunication = 'public'  "
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "telecommunication",
        "comment" : "Profil 1,\nProfil 2 et Profil 5 si niveaux de confidentialité du contact et du contact.telecommunication différents de 'très restreint'\nProfil 3 si champ d'activité MS et  si niveaux de confidentialité du contact et du contact.telecommunication différents de 'très restreint',  sinon, pour les autres champs d'activité, uniquement accès si niveau de confidentialité  du contact= 'public'\nProfil 4 si niveaux de confidentialité du contact et du contact.telecommunication = 'public'\nProfil 0 si niveaux de confidentialité du contact et du contact.telecommunication = 'public'  "
      }]
    },
    {
      "id" : "Organization.contact.telecom.extension",
      "path" : "Organization.contact.telecom.extension",
      "min" : 2
    },
    {
      "id" : "Organization.contact.telecom.extension:ror-telecom-confidentiality-level",
      "path" : "Organization.contact.telecom.extension",
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
      "id" : "Organization.contact.telecom.extension:ror-telecom-usage",
      "path" : "Organization.contact.telecom.extension",
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
      "id" : "Organization.contact.telecom.extension:ror-telecom-communication-channel",
      "path" : "Organization.contact.telecom.extension",
      "sliceName" : "ror-telecom-communication-channel",
      "short" : "Canal (Telecommunication) : Code spécifiant le canal ou la manière dont s'établit la communication",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.telecom.value",
      "path" : "Organization.contact.telecom.value",
      "short" : "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-ROROrganization-ej",
        "map" : "adresseTelecom",
        "comment" : "cf contact.telecom"
      },
      {
        "identity" : "specmetier-to-ROROrganization-eg",
        "map" : "adresseTelecom",
        "comment" : "cd contact.telecomunication"
      }]
    }]
  }
}

```
