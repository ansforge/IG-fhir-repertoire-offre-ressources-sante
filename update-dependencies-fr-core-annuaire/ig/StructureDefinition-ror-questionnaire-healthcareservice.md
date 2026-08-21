# RORQuestionnaire - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORQuestionnaire**

## Resource Profile: RORQuestionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-questionnaire-healthcareservice | *Version*:0.7.0 |
| Draft as of 2026-08-21 | *Computable Name*:RORQuestionnaire |

 
Modèle de saisie des Offres Opérationnelles.
 Les questionnaires créés à partir de cette ressource sont utilisés par les établissements pour saisir leurs offres opérationnelles. 

**Utilisations:**

* Référence ce Profil: [RORMetaQuestionnaireUsedAsATemplate](StructureDefinition-ror-meta-questionnaire-used-as-a-template.md)
* Exemples pour ce/t/te Profil: [MS-141](Questionnaire-ror-questionnaire-offre-mco.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-questionnaire-healthcareservice)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-questionnaire-healthcareservice.csv), [Excel](StructureDefinition-ror-questionnaire-healthcareservice.xlsx), [Schematron](StructureDefinition-ror-questionnaire-healthcareservice.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-questionnaire-healthcareservice",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
    "valueCanonical" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-defn"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-questionnaire-healthcareservice",
  "version" : "0.7.0",
  "name" : "RORQuestionnaire",
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
  "description" : "Modèle de saisie des Offres Opérationnelles.  \nLes questionnaires créés à partir de cette ressource sont utilisés par les établissements pour saisir leurs offres opérationnelles.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Questionnaire",
  "baseDefinition" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Questionnaire",
      "path" : "Questionnaire"
    },
    {
      "id" : "Questionnaire.extension",
      "path" : "Questionnaire.extension",
      "min" : 1
    },
    {
      "id" : "Questionnaire.extension:launchContext",
      "path" : "Questionnaire.extension",
      "sliceName" : "launchContext",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-launchcontext"]
      }]
    },
    {
      "id" : "Questionnaire.identifier",
      "path" : "Questionnaire.identifier",
      "short" : "Identifiant du modèle de saisie. Exemple MS-141",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.version",
      "path" : "Questionnaire.version",
      "short" : "version du modèle de saisie"
    },
    {
      "id" : "Questionnaire.name",
      "path" : "Questionnaire.name",
      "short" : "Nom utilisé par les systèmes pour référencer le modèle Exemple MS-141",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.title",
      "path" : "Questionnaire.title",
      "short" : "Titre du modèle. Exemple Unité d'accueil de jour, Equipe spécialisée Alzheimer (ESA), Unité d'Hébergement « traditionnelle » , en EHPAD Petite unité de vie (PUV)",
      "min" : 1
    },
    {
      "id" : "Questionnaire.status",
      "path" : "Questionnaire.status",
      "short" : "Statut du modèle (draft | active | retired)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-questionnaire-status-vs"
      }
    },
    {
      "id" : "Questionnaire.subjectType",
      "path" : "Questionnaire.subjectType",
      "short" : "Type de la ressource qui alimente ce modèle : HealthcareService ou Organization ou Location",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Questionnaire.date",
      "path" : "Questionnaire.date",
      "short" : "Date du dernier changement",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.publisher",
      "path" : "Questionnaire.publisher",
      "short" : "Nom de l'éditeur du modèle: Etablissement ou personne",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.description",
      "path" : "Questionnaire.description",
      "short" : "Description du modèle de saisie",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.useContext",
      "path" : "Questionnaire.useContext",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "description" : "Slicing pour définir les différents contextes d'usage du modèle afin de pouvoir catégoriser ces modèles de saisie par : catégorie d'EG (obligatoire), Spécialité ordinale (optionnel), profession (optionnel) et domaine (optionnel)",
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Contexte d'usage du modèle de saisie spécifiant pour quelles catégories d'EG ainsi que potentiellemnt la spécialité ordinale, la profession et ou le domaine de l'offre pour lesquels ce modèle est applicable",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.useContext.code",
      "path" : "Questionnaire.useContext.code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-usage-context-type-vs"
      }
    },
    {
      "id" : "Questionnaire.useContext:catEG",
      "path" : "Questionnaire.useContext",
      "sliceName" : "catEG",
      "short" : "Contexte précisant les catégories d'EG pour lesquelles ce questionnaire est disponible",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Questionnaire.useContext:catEG.code",
      "path" : "Questionnaire.useContext.code",
      "patternCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R67-TypeStructure-EJ-EG/FHIR/TRE-R67-TypeStructure-EJ-EG",
        "code" : "EG"
      }
    },
    {
      "id" : "Questionnaire.useContext:catEG.value[x]",
      "path" : "Questionnaire.useContext.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Questionnaire.useContext:catEG.value[x]:valueCodeableConcept",
      "path" : "Questionnaire.useContext.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Catégories d'EG",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J55-CategorieEG-ROR/FHIR/JDV-J55-CategorieEG-ROR"
      }
    },
    {
      "id" : "Questionnaire.useContext:typePS",
      "path" : "Questionnaire.useContext",
      "sliceName" : "typePS",
      "short" : "Contexte précisant les types de profession de Santé pour lesquels ce questionnaire est disponible",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Questionnaire.useContext:typePS.code",
      "path" : "Questionnaire.useContext.code",
      "patternCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R288-TypeProfession/FHIR/TRE-R288-TypeProfession",
        "code" : "P01"
      }
    },
    {
      "id" : "Questionnaire.useContext:typePS.value[x]",
      "path" : "Questionnaire.useContext.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Questionnaire.useContext:typePS.value[x]:valueCodeableConcept",
      "path" : "Questionnaire.useContext.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Types de profession de santé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J229-ProfessionSante-ROR/FHIR/JDV-J229-ProfessionSante-ROR"
      }
    },
    {
      "id" : "Questionnaire.useContext:speOrdinal",
      "path" : "Questionnaire.useContext",
      "sliceName" : "speOrdinal",
      "short" : "Contexte précisant les spécialités ordinales pour lesquelles ce questionnaire est disponible",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Questionnaire.useContext:speOrdinal.code",
      "path" : "Questionnaire.useContext.code",
      "patternCoding" : {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
        "code" : "S"
      }
    },
    {
      "id" : "Questionnaire.useContext:speOrdinal.value[x]",
      "path" : "Questionnaire.useContext.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Questionnaire.useContext:speOrdinal.value[x]:valueCodeableConcept",
      "path" : "Questionnaire.useContext.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Spécialités ordinales",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J210-SpecialiteOrdinale-ROR/FHIR/JDV-J210-SpecialiteOrdinale-ROR"
      }
    },
    {
      "id" : "Questionnaire.useContext:champAct",
      "path" : "Questionnaire.useContext",
      "sliceName" : "champAct",
      "short" : "Contexte précisant les domaines (champs d'activité) de l' offre (OffreOperationnelle) pour lesquels ce questionnaire est disponible",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Questionnaire.useContext:champAct.code",
      "path" : "Questionnaire.useContext.code",
      "patternCoding" : {
        "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/usage-context-ror-codesystem",
        "code" : "champAct"
      }
    },
    {
      "id" : "Questionnaire.useContext:champAct.value[x]",
      "path" : "Questionnaire.useContext.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Questionnaire.useContext:champAct.value[x]:valueCodeableConcept",
      "path" : "Questionnaire.useContext.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Domaines (champs d'activité) de l' offre (OffreOperationnelle)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J20-ChampActivite-ROR/FHIR/JDV-J20-ChampActivite-ROR"
      }
    },
    {
      "id" : "Questionnaire.useContext:fonctionLieu",
      "path" : "Questionnaire.useContext",
      "sliceName" : "fonctionLieu",
      "short" : "Contexte précisant les fonctions (fonctionLieu) du lieu (LieuRealisationOffre) pour lesquelles ce questionnaire est disponible",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Questionnaire.useContext:fonctionLieu.code",
      "path" : "Questionnaire.useContext.code",
      "patternCoding" : {
        "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/usage-context-ror-codesystem",
        "code" : "fonctionLieu"
      }
    },
    {
      "id" : "Questionnaire.useContext:fonctionLieu.value[x]",
      "path" : "Questionnaire.useContext.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Questionnaire.useContext:fonctionLieu.value[x]:valueCodeableConcept",
      "path" : "Questionnaire.useContext.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Fonctions (fonctionLieu) du lieu (LieuRealisationOffre)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J198-FonctionLieu-ROR/FHIR/JDV-J198-FonctionLieu-ROR"
      }
    },
    {
      "id" : "Questionnaire.purpose",
      "path" : "Questionnaire.purpose",
      "short" : "Pourquoi ce modèle est-il défini",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.approvalDate",
      "path" : "Questionnaire.approvalDate",
      "short" : "Date de validation du modèle de saisie",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.lastReviewDate",
      "path" : "Questionnaire.lastReviewDate",
      "short" : "Date de dernière revue du modèle",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.effectivePeriod",
      "path" : "Questionnaire.effectivePeriod",
      "short" : "Periode de validité du modèle",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.code",
      "path" : "Questionnaire.code",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.item",
      "path" : "Questionnaire.item",
      "short" : "Structure du champs du modèle"
    },
    {
      "id" : "Questionnaire.item.linkId",
      "path" : "Questionnaire.item.linkId",
      "short" : "Unique id pour l'item du modèle"
    },
    {
      "id" : "Questionnaire.item.definition",
      "path" : "Questionnaire.item.definition",
      "short" : "Element concerné par la saisie",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.code",
      "path" : "Questionnaire.item.code",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.item.text",
      "path" : "Questionnaire.item.text",
      "short" : "Texte pour l'item"
    },
    {
      "id" : "Questionnaire.item.type",
      "path" : "Questionnaire.item.type",
      "short" : "Type de l'item group | display | boolean | decimal | integer | date | dateTime ..."
    },
    {
      "id" : "Questionnaire.item.enableWhen",
      "path" : "Questionnaire.item.enableWhen",
      "short" : "Item autorisé / disponible que sous condition",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.enableBehavior",
      "path" : "Questionnaire.item.enableBehavior",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.required",
      "path" : "Questionnaire.item.required",
      "short" : "Champs requis"
    },
    {
      "id" : "Questionnaire.item.repeats",
      "path" : "Questionnaire.item.repeats",
      "short" : "Si l'item peut de répeter"
    },
    {
      "id" : "Questionnaire.item.readOnly",
      "path" : "Questionnaire.item.readOnly",
      "short" : "En lecture seule"
    },
    {
      "id" : "Questionnaire.item.answerValueSet",
      "path" : "Questionnaire.item.answerValueSet",
      "short" : "Ensemble de valeurs autorisées en réponse"
    },
    {
      "id" : "Questionnaire.item.answerOption",
      "path" : "Questionnaire.item.answerOption",
      "short" : "Réponses permises"
    },
    {
      "id" : "Questionnaire.item.answerOption.initialSelected",
      "path" : "Questionnaire.item.answerOption.initialSelected",
      "short" : "Option de réponse sélectionnée par défaut",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.initial",
      "path" : "Questionnaire.item.initial",
      "short" : "Valeur(s) initiale(s)"
    }]
  }
}

```
