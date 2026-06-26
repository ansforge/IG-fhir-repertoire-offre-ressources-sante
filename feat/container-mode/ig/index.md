# Accueil - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* **Accueil**

## Accueil

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/ImplementationGuide/ans.fhir.fr.ror | *Version*:0.7.0 |
| Draft as of 2026-06-26 | *Computable Name*:ROR |

 **Brief description of this Implementation Guide**
 The French directory of healthcare and medico-social support services and resources ([ROR](https://esante.gouv.fr/produits-services/repertoire-ror)) is the repository (in the sense of a repository of data) for describing the healthcare services offered by Health facility, medico-social establishments and services, and local structures in France. The aim of this implementation guide is to define the specifications of the ROR FHIR API, enabling any authorized application to search for a healthcare offer and its capabilities (availability, equipment, etc.). 

### Informations sur ce guide d’implémentation

**Ce Guide d’Implémentation FHIR du ROR se référence au modèle d`exposition 3.0.1 du ROR. 
 Cette version du guide d’implementation cible l’implémentation de l’API FHIR dans la solution du ROR National version 5.1.**

Dans ce guide vous pourrez retrouver des indicateurs afin d’identifier la maturité de certains éléments ou certaines sections de la manière suivante :

* `deprecated` => correspond à ce qui ne sera bientôt plus disponible dans la solution ROR National
* `draft` => correspond à ce qui est en cours d’implémentation dans la solution ROR National et donc pas encore validé et disponible. L’objectif de cet indicateur est de donner de la visibilité sur ce qui est en cours d’implémentation dans la solution ROR National.
* `under consideration` => correspond à ce qui est en cours de réflexion dans la solution ROR National. L’objectif de cet indicateur est de donner de la visibilité sur ce qui est à l’étude pour les prochaines versions du ROR National.

Les autres éléments ou section qui n’ont pas ces mentions doivent être implémentés et disponibles dans la version courante de la solution du ROR National.

Pour plus d’information sur les versions de l’Implementation Guide n’hésitez pas à consulter [l’Historique](https://interop.esante.gouv.fr/ig/fhir/ror/history.html) Si vous avez des questions ou des suggestions concernant ce guide vous pouvez nous les adresser [ici](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/new/choose).

### Description fonctionnelle de l’API

#### Le ROR, référentiel de données de description de l’offre de santé

##### Le référentiel ROR

Le Répertoire de l’Offre et des Ressources en santé et accompagnement médico-social ([ROR](https://esante.gouv.fr/produits-services/repertoire-ror)) est le référentiel (au sens gisement de données) de description de l’offre de santé des établissements sanitaires, des établissements et services du médico-social et des structures de ville.

Les acteurs de santé ont convergé sur une vision commune de l’offre de santé. L’offre de santé est définie par une ou plusieurs activités opérationnelles, réalisée(s) dans le cadre d’un mode de prise en charge et pour une patientèle, et par les ressources qui permettent la réalisation de ces activités opérationnelles sur un lieu donné. Ces ressources concernent principalement les équipements spécifiques, les capacités d’accueil et les compétences que l’on souhaite identifier pour cette offre.

* **Référentiel ROR**: ![](image5.png)

Le ROR, en tant que référentiel de description de l’offre de santé (au sens gisement de données), a une couverture nationale. Il doit permettre à toute application autorisée de rechercher une offre de santé.

##### Instances des ROR régionaux

Dans les faits, chaque région met en œuvre, alimente et exploite une partie du référentiel limité à une couverture régionale, sans intersection de périmètre entre les régions. Chaque région est maîtresse de la solution technique qu’elle met en œuvre.

Les solutions techniques sont qualifiées de « solution ROR ». Deux solutions ROR sont déployées sur le territoire : ROR IR et ROR IeSS.

L’instance régionale de la solution ROR mise en œuvre dans une région, et alimentée de la description de l’offre de santé de la région est appelée « ROR régional ».

Chaque ROR régional propose à ses utilisateurs un écran de recherche de l’offre régionale, et permet une recherche d’offre dans les autres régions. Historiquement, cette recherche d’une offre au-delà de la région s’appuie sur des services proposés par chaque ROR régional, et nécessite que chaque instance régionale soit interconnectée avec les instances des 17 autres régions.

##### Instance du ROR national

Dans un contexte de sollicitation croissante des ROR régionaux, la nécessité d’améliorer la qualité du service rendu aux utilisateurs et le vieillissement technologique des solutions logicielles ROR rendent indispensable une évolution des logiciels et de leur architecture. Pour répondre à ce besoin, il a été décidé collectivement en 2020 de construire une solution logicielle ROR unique, avec un stockage centralisé des données (base de données unique) qui remplacera à terme les solutions ROR régionales.

La construction du ROR nationale est réalisée par étape. Lors des deux premières étapes, le ROR national est alimenté par les ROR régionaux.

La mise en œuvre du ROR national et de son webservice de recherche permet de centraliser la recherche auprès du ROR national en remplacement des différentes instances régionales.

Ce service peut ainsi permettre à une instance régionale de s’appuyer sur le ROR national pour réaliser l’équivalent d’une « recherche interROR », et permet également aux autres systèmes consommateurs des données du ROR de disposer d’un service pour lancer une recherche et obtenir en résultat la description des offres de santé recherchées.

Ce webservice, basée sur le modèle d’exposition V3 au format FHIR, permet aux systèmes consommateurs de réaliser une recherche sur les informations capacitaires en lits/places, sous réserve de disposer des droits d’accès adaptés.

#### Modélisation

##### Données utilisées pour la modélisation UML

Les attributs de description de l’offre, fournis en résultat d’une recherche, sont décrits dans le document ROR-modèle d’exposition. Ces attributs sont décrits en utilisant la norme UML et en cohérence avec le Modèle des Objets de Santé (MOS) et les nomenclatures associées (NOS) gérés par l’ANS.

Ces attributs sont associés à des règles de gestion communes qui sont également présentées dans le document ROR-modèle d’exposition [[Ref_01]](https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf).

##### Nomenclatures

La capacité à échanger de l’information entre les ROR et les systèmes consommateurs repose sur l’interopérabilité sémantique et syntaxique des deux systèmes. On entend par « sémantique » à la fois la signification des mots et le rapport entre le sens des mots (homonymie, synonymie, etc.). Assurer l’interopérabilité des échanges nécessite donc que chacun de ces systèmes puisse interpréter la signification de l’information reçue et utiliser cette information en correspondance sémantique avec ses données locales.

Cet objectif conduit à mettre en œuvre des nomenclatures (terminologies de référence et jeux de valeurs) qui permettent de renseigner les concepts du modèle d’exposition et qui font le lien avec les concepts des modèles des ROR régionaux. Ces nomenclatures d’échange sont précisées dans le document de référence ROR-modèle d’exposition [[Ref_01]](https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf).

Chaque nomenclature des outils interopérables doit trouver son équivalence dans la nomenclature du concept associé dans le modèle d’exposition.

Les systèmes consommateurs du web service du ROR national doivent pouvoir intégrer les évolutions régulières des nomenclatures (ajout de code, modification de libellé, mise en obsolescence d’un code, réactivation de code).

##### Ressources profilées

La liste ci-dessous expose la liste des profils génériques profilés.

| | |
| :--- | :--- |
| Titre du profil | Description |
| [RORHealthcareService](StructureDefinition-ror-healthcareservice.md) | Profil créé dans le cadre du ROR pour décrire les prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne |
| [RORLaunchContextExtension](StructureDefinition-ror-launchcontext.md) | Profil de l'extension http://hl7.org/fhir/uv/sdc/StructureDefinition-sdc-questionnaire-launchContext.html créé dans le cadre du ROR afin d'ajouter le name 'structure' acceptant les ressources FHIR 'Organization', 'HealthcareService' et 'Location' |
| [RORLocation](StructureDefinition-ror-location.md) | Profil créé dans le cadre du ROR pour décrire l'espace disposant d'un ensemble de ressources pour réaliser une offre. |
| [ROROrganization](StructureDefinition-ror-organization.md) | Profil créé dans le cadre du ROR pour décrire les organismes du domaine sanitaire, médico-social et social immatriculés dans le FINESS et les organisations internes |
| [RORPractitioner](StructureDefinition-ror-practitioner.md) | Profil créée dans le cadre du ROR pour décrire les données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel |
| [RORPractitionerRole](StructureDefinition-ror-practitionerrole.md) | Profil créé dans le cadre du ROR pour décrire les modalités d'exercice opérationnelles du profesionnel dans la réalisation de l'offre |


#### Dépendances







#### Propriété intellectuelle

Certaines ressources sémantiques de ce guide sont protégées par des droits de propriété intellectuelle couverte par les déclarations ci-dessous. L’utilisation de ces ressources est soumise à l’acceptation et au respect des conditions précisées dans la licence d’utilisation de chacune d’entre elle.

* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [UsageContextType](http://terminology.hl7.org/7.2.0/CodeSystem-usage-context-type.html): [RORQuestionnaire](StructureDefinition-ror-questionnaire-healthcareservice.md) and [RORUsageContextTypeVS](ValueSet-ror-usage-context-type-vs.md)


#### Documents de référence

* [Ref_01] ROR – Modèle d’exposition****: [Ref_02] ROR -Mapping FHIR et modèle d'exposition 3.0
  * 3.0.1: 1.0
  * [Description des données communes aux échanges entre les ROR et les SI externes.](https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf): Description du mapping des concepts du modèle d’exposition ROR au format FHIR.[Mapping FHIR du modèle de données du ROR](mapping.md#mapping-fhir-du-mod%C3%A8le-de-donn%C3%A9es-du-ror)
* [Ref_01] ROR – Modèle d’exposition****: [Ref_03] Swagger du WS de recherche FHIR du ROR
  * 3.0.1: 2.0
  * [Description des données communes aux échanges entre les ROR et les SI externes.](https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf): Description d’interface de l’API de recherche (en cours de construction)  
* [Ref_01] ROR – Modèle d’exposition****: [Ref_04] Politique d’accès
  * 3.0.1: 3.0
  * [Description des données communes aux échanges entre les ROR et les SI externes.](https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf): [Annexe "Politique d'accès" de la doctrine d'urbanisation](https://industriels.esante.gouv.fr/sites/default/files/media/document/ROR%20Politique%20d%27acc%C3%A8s%20aux%20donn%C3%A9es_ME3.0_VFD.pdf)
* [Ref_01] ROR – Modèle d’exposition****: [Ref_05] Annexe sources de données personnes et structures
  * 3.0.1: 1.5
  * [Description des données communes aux échanges entre les ROR et les SI externes.](https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf): [https://esante.gouv.fr/annexe-sources-des-donnees-personnes-et-structures](https://esante.gouv.fr/annexe-sources-des-donnees-personnes-et-structures) 



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ans.fhir.fr.ror",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/ImplementationGuide/ans.fhir.fr.ror",
  "version" : "0.7.0",
  "name" : "ROR",
  "title" : "Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social",
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
  "description" : "Ressources de conformité basées sur le modèle d'exposition 3.0.1 du ROR",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "packageId" : "ans.fhir.fr.ror",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.2.0"
  },
  {
    "id" : "ans_annuaire_fhir_r4",
    "uri" : "http://fhir.org/packages/ans.annuaire.fhir.r4/ImplementationGuide/ans.annuaire.fhir.r4",
    "packageId" : "ans.annuaire.fhir.r4",
    "version" : "0.2.0"
  },
  {
    "id" : "hl7_fhir_fr_core",
    "uri" : "http://fhir.org/packages/hl7.fhir.fr.core/ImplementationGuide/hl7.fhir.fr.core",
    "packageId" : "hl7.fhir.fr.core",
    "version" : "1.1.0"
  },
  {
    "id" : "hl7_fhir_uv_bulkdata",
    "uri" : "http://hl7.org/fhir/uv/bulkdata/ImplementationGuide/hl7.fhir.uv.bulkdata",
    "packageId" : "hl7.fhir.uv.bulkdata",
    "version" : "2.0.0"
  },
  {
    "id" : "hl7_fhir_uv_extensions_r4",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.2.0"
  },
  {
    "id" : "hl7_fhir_uv_sdc",
    "uri" : "http://hl7.org/fhir/uv/sdc/ImplementationGuide/hl7.fhir.uv.sdc",
    "packageId" : "hl7.fhir.uv.sdc",
    "version" : "3.0.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2020+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "trial-implementation"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://interop.esante.gouv.fr/ig/fhir/ror/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2020+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "trial-implementation"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://interop.esante.gouv.fr/ig/fhir/ror/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/act-type-ror-codesystem"
      },
      "name" : "ActTypeRORCodeSystem",
      "description" : "CodeSystem pour le type d'acte pour les slices de characteristic concernant les actes dans la ressource ROR HealthcareService",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/as-ext-lieu-dit"
      },
      "name" : "AsLieuDit",
      "description" : "Extension créée dans le cadre du ROR pour indiquer le lieu dit",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/ror-include-associated-data-code-system"
      },
      "name" : "Code System (CS) utilisé pour étendre le CS original avec le query parameter includeAssociatedData",
      "description" : "Code system pour étendre https://hl7.org/fhir/uv/bulkdata/CodeSystem-include-associated-data.html pour ajouter l'opération export pour le ROR",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/ror-launch-context-codesystem"
      },
      "name" : "Code System définissant le contexte standard du lancement d'un questionnaire dans le cadre du ROR",
      "description" : "Code System pour étendre http://hl7.org/fhir/uv/sdc/CodeSystem-launchContext.html afin de l'adapter au contexte de lancement des questionnaires dans le cadre du ROR",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/code-region-territorial-division-ror-valueset"
      },
      "name" : "Fusion des valuesets pour le code de la division territoriale",
      "description" : "ValueSet regroupant des valuesets du NOS pour le code de la division territoriale",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/input-task-ror-codesystem"
      },
      "name" : "InputTaskRORCodeSystem",
      "description" : "Code System pour la définition des éléments spécifiques de input dans ressource RORTask",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/output-task-ror-codesystem"
      },
      "name" : "OutputTaskRORCodeSystem",
      "description" : "Code System pour la définition des éléments spécifiques de output dans ressource RORTask",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-launchcontext"
      },
      "name" : "Profil de LaunchContextExtension créé dans le cadre du ROR afin d'ajouter le name 'ror-structure' acceptant les ressources FHIR 'Organization', 'HealthcareService' et 'Location'",
      "description" : "Profil de l'extension http://hl7.org/fhir/uv/sdc/StructureDefinition-sdc-questionnaire-launchContext.html créé dans le cadre du ROR afin d'ajouter le name 'structure' acceptant les ressources FHIR 'Organization', 'HealthcareService' et 'Location'",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/ror-consommateur"
      },
      "name" : "ROR-Consommateur",
      "description" : "Capability Statement pour les systèmes qui sont autorisés à consommer les données du ROR. Le Répertoire Opérationnel des Ressources (ROR) est le gisement de données qui décrit les offres de santé au niveau national.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/1234564"
      },
      "name" : "ror-healthcareservice-exemple",
      "description" : "Exemple de HealthcareService ROR - Unité hospitalière de gynécologie (Chirurgie gynécologique - HC)",
      "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/ror-location-exemple"
      },
      "name" : "ror-location-exemple",
      "description" : "Exemple 'fake' pour RORLocation n'ayant pas forcément de cohérence fonctionnelle.",
      "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/ror-serveur"
      },
      "name" : "ROR-Serveur",
      "description" : "Capability Statement pour le Système ROR National. Le Répertoire Opérationnel des Ressources (ROR) est le gisement de données qui décrit les offres de santé au niveau national.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-additional-bed-type"
      },
      "name" : "ror-sp-additional-bed-type",
      "description" : "Paramètre de recherche pour récupérer les types des lits disponnibles",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-capacity-closing-type"
      },
      "name" : "ror-sp-capacity-closing-type",
      "description" : "Paramètre de recherche pour récupérer le type de la fermeture de la capacité",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-capacity-status"
      },
      "name" : "ror-sp-capacity-status",
      "description" : "Paramètre de recherche pour récupérer le statut de la capacité.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-capacity-type"
      },
      "name" : "ror-sp-capacity-type",
      "description" : "Paramètre de recherche pour récupérer la nature de la capacité.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-capacity-update-date"
      },
      "name" : "ror-sp-capacity-update-date",
      "description" : "Paramètre de recherche pour récupérer la date à jour de la capacité",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-crisis-type"
      },
      "name" : "ror-sp-crisis-type",
      "description" : "Paramètre de recherche pour récupérer le type de la crise",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-equipment-feature"
      },
      "name" : "ror-sp-equipment-feature",
      "description" : "Paramètre de recherche pour récupérer le type de caractéristique d'un equipement.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-equipment-type"
      },
      "name" : "ror-sp-equipment-type",
      "description" : "Paramètre de recherche pour récupérer le type d'un équipement.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-gender-capacity-available"
      },
      "name" : "ror-sp-gender-capacity-available",
      "description" : "Paramètre de recherche pour récupérer le genre disponible de la capacité.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-healthcareservice-age-range-high"
      },
      "name" : "ror-sp-healthcareservice-age-range-high",
      "description" : "Paramètre de recherche décrivant l'age maximum de la patientèle",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-healthcareservice-age-range-low"
      },
      "name" : "ror-sp-healthcareservice-age-range-low",
      "description" : "Paramètre de recherche décrivant l'age minimum de la patientèle",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-healthcareservice-equipment-type"
      },
      "name" : "ror-sp-healthcareservice-equipment-type",
      "description" : "Paramètre de recherche décrivant le type d'équipement de l'offre opérationnelle",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-healthcareservice-intervention-zone"
      },
      "name" : "ror-sp-healthcareservice-intervention-zone",
      "description" : "Paramètre de recherche décrivant la zone d'intervention",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-healthcareservice-notavailable-closing-reopeningdate"
      },
      "name" : "ror-sp-healthcareservice-notavailable-closing-reopeningdate",
      "description" : "Paramètre de recherche pour rechercher la date dans la période de fermeture (during.start) et de réouverture prévisionnelle (during.end).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-healthcareservice-patient-type"
      },
      "name" : "ror-sp-healthcareservice-patient-type",
      "description" : "Paramètre de recherche décrivant le public pris en charge",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-healthcareservice-psychiatric-sector"
      },
      "name" : "ror-sp-healthcareservice-psychiatric-sector",
      "description" : "Paramètre de recherche décrivrant le secteur psychiatrique de l'offre opérationnelle",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-limit-value"
      },
      "name" : "ror-sp-limit-value",
      "description" : "Paramètre de recherche pour récupérer la valeur limite (poids, taille, etc..) de l'équipement",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-location-commune-cog"
      },
      "name" : "ror-sp-location-commune-cog",
      "description" : "Paramètre de recherche sur le code officiel géographique (cog) de la commune dans laquelle le lieu est situé",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-location-near-insee-code"
      },
      "name" : "ror-sp-location-near-insee-code",
      "description" : "Paramètre de recherche similaire au paramètre spécial \"near\", à l'exception que celui-ci pointe sur l'adresse et non pas la position géographique",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-nb-capacity"
      },
      "name" : "ror-sp-nb-capacity",
      "description" : "Paramètre de recherche pour récupérer le nombre de la capacité.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-organization-closing-type"
      },
      "name" : "ror-sp-organization-closing-type",
      "description" : "Paramètre de recherche décrivant le type de fermeture de l'entité géographique, au sens des règles de gestion du SI FINESS",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-organization-drop-zone"
      },
      "name" : "ror-sp-organization-drop-zone",
      "description" : "Paramètre de recherche permettant d'indiquer s'il y a une zone poser sur le site concerné",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-organization-oi-name"
      },
      "name" : "ror-sp-organization-oi-name",
      "description" : "Paramètre de recherche sur le nom de l'organisation interne",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-organization-period-end"
      },
      "name" : "ror-sp-organization-period-end",
      "description" : "Paramètre de recherche décrivant la date de fermeture de l'entité géographique",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-organization-price-amount-value"
      },
      "name" : "ror-sp-organization-price-amount-value",
      "description" : "Paramètre de recherche sur la valeur du tarif des prestations et services",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-organization-price-dependency-level"
      },
      "name" : "ror-sp-organization-price-dependency-level",
      "description" : "Paramètre de recherche sur le niveau de dépendance de la personne âgée accueillie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-organization-price-residential-type"
      },
      "name" : "ror-sp-organization-price-residential-type",
      "description" : "Paramètre de recherche sur les caractéristiques de l'hébergement",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-organization-price-type"
      },
      "name" : "ror-sp-organization-price-type",
      "description" : "Paramètre de recherche sur le type de tarif",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-organization-price-unit"
      },
      "name" : "ror-sp-organization-price-unit",
      "description" : "Paramètre de recherche sur l'unité de référence pour évaluer le prix des prestations et services",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-organization-price-validity-start-date"
      },
      "name" : "ror-sp-organization-price-validity-start-date",
      "description" : "Paramètre de recherche sur la dernière date de début de validité du tarif indiqué",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-organization-price-welcome-type"
      },
      "name" : "ror-sp-organization-price-welcome-type",
      "description" : "Paramètre de recherche décrivant si le tarif s'applique à un hébergement permanent ou à un hébergement temporaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-organization-special-price"
      },
      "name" : "ror-sp-organization-special-price",
      "description" : "Paramètre de recherche sur la condition tarifaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-residential-number"
      },
      "name" : "ror-sp-residential-number",
      "description" : "Paramètre de recherche pour récupérer le nombre d'habitation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-residential-type"
      },
      "name" : "ror-sp-residential-type",
      "description" : "Paramètre de recherche pour récupérer le type d'habitation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-temporality-capacity"
      },
      "name" : "ror-sp-temporality-capacity",
      "description" : "Paramètre de recherche pour récupérer le moment où la capacité sera effective",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ror-sp-temporary-assignement"
      },
      "name" : "ror-sp-temporary-assignement",
      "description" : "Paramètre de recherche pour récupérer les affectations temporaires",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/ror-task-exemple"
      },
      "name" : "ror-task-exemple",
      "description" : "Exemple 'fake' pour RORTask n'ayant pas forcément de cohérence fonctionnelle",
      "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-task"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-act-type"
      },
      "name" : "RORActType",
      "description" : "Extension créée dans le cadre du ROR pour discriminer le type d'acte (spécifique ou hors cabinet)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-available-time-effective-opening-closing-date"
      },
      "name" : "RORAvailableTimeEffectiveOpeningClosingDate",
      "description" : "Extension créée dans le cadre du ROR pour décrire le planning d'activité d'un professionnel ou d'une offre.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-available-time-number-days-of-week"
      },
      "name" : "RORAvailableTimeNumberDaysofWeek",
      "description" : "Extension créée dans le cadre du ROR pour indiquer le numéro du jour dans la semaine.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-available-time-type-of-time"
      },
      "name" : "RORAvailableTimeTypeOfTime",
      "description" : "Extension créée dans le cadre du ROR pour apporter un contexte à la plage horaire définie par la suite. Un planning peut être constitué de plusieurs plages horaires du même type ou de type différent.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-comment"
      },
      "name" : "RORComment",
      "description" : "Extension créée dans le cadre du ROR pour décrire le commentaire qui permet à la structure de donner des informations complémentaires",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-commune-cog"
      },
      "name" : "RORCommuneCog",
      "description" : "Extension créée dans le cadre du ROR pour représenter le code officiel géographique (COG) de la commune dans laquelle le lieu est situé.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-confidence-geolocation"
      },
      "name" : "RORConfidenceGeolocation",
      "description" : "Extension créée dans le cadre du ROR. Il s'agit d'une information supplémentaire pour signaler si la longitude et la latitude sont fiables.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-confidentiality-level"
      },
      "name" : "RORConfidentialityLevel",
      "description" : "Extension créée dans le cadre du ROR pour définir le niveau de restriction de l'accès aux attributs de la classe Contact.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-contact-confidentiality-level"
      },
      "name" : "RORContactConfidentialityLevel",
      "description" : "Extension créée dans le cadre du ROR qui permet de définir le niveau de restriction de l'accès aux attributs de la classe Contact",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-contact-description"
      },
      "name" : "RORContactDescription",
      "description" : "Extension créée dans le cadre du ROR qui indique la description du Contact.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-contact-function-contact"
      },
      "name" : "RORContactFunctionContact",
      "description" : "Extension créée dans le cadre du ROR qui indique un titre, une position ou une fonction de la personne assurant le contact au sein de l'organisation (directeur, secrétaire, etc.).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-contact-telecom-confidentiality-level"
      },
      "name" : "RORContactTelecomConfidentialityLevel",
      "description" : "Extension créée dans le cadre du ROR",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-contact-telecom-usage"
      },
      "name" : "RORContactTelecomUsage",
      "description" : "Extension créée dans le cadre du ROR",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-coordinate-reliability"
      },
      "name" : "RORCoordinateReliability",
      "description" : "Extension créée dans le cadre du ROR pour signaler si les informations des coordonnées géographiques sont issues d'un mode de production qui assure un certain niveau de fiabilité",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-healthcareservice"
      },
      "name" : "RORHealthcareService",
      "description" : "Profil créé dans le cadre du ROR pour décrire les prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-healthcareservice-contact"
      },
      "name" : "RORHealthcareServiceContact",
      "description" : "Extension créée dans le cadre du ROR pour décrire la personne ou le service qui agit comme point de contact de l'offre.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-healthcareservice-contact-telecom"
      },
      "name" : "RORHealthcareServiceContactTelecom",
      "description" : "Extension créée dans le cadre du ROR pour les télécommunications du contact.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-healthcareservice-no-consent-habilitation"
      },
      "name" : "RORHealthcareServiceNoConsentHabilitation",
      "description" : "Extension créée dans le cadre du ROR qui permet d'identifier les offres pour lesquelles un établissement est autorisé par le directeur général de l’ARS après avis du préfet, à prendre en charge des patients sans leur consentement.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-healthcareservice-patient-type"
      },
      "name" : "RORHealthcareServicePatientType",
      "description" : "Extension créée dans le cadre du ROR pour décrire un ensemble de personnes qui répondent à des critères leur permettant de  bénéficier de la prestation décrite",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-healthcareservice-psychiatric-sector"
      },
      "name" : "RORHealthcareServicePsychiatricSector",
      "description" : "Extension créée dans le cadre du ROR qui correspond à une aire géographique à laquelle sont rattachées des structures de relais et de soins qui prennent en charge des patients résidants sur ce secteur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-healthcareservice-sensitive-unit"
      },
      "name" : "RORHealthcareServiceSensitiveUnit",
      "description" : "Extension créée dans le cadre du ROR pour signaler que toutes les informations de description d'une offre sont confidentielles car elles présentent un risque d'utilisation à des fins malveillantes, ou que le porteur d'offre ne souhaite pas diffuser.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-location"
      },
      "name" : "RORLocation",
      "description" : "Profil créé dans le cadre du ROR pour décrire l'espace disposant d'un ensemble de ressources pour réaliser une offre.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-location-equipment"
      },
      "name" : "RORLocationEquipment",
      "description" : "Extension créée dans le cadre du ROR pour décrire une ressource matérielle discriminante pour la réalisation d'une prestation. Cette extension a été créée, car Device ne correspondait pas à la définition de l'équipement pour le ROR.\n Device représente une instance d'un équipement alors l'équipement pour le ROR correspond juste au nombre d'équipement de même type.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-location-equipment-limit"
      },
      "name" : "RORLocationEquipmentLimit",
      "description" : "Extension créée dans le cadre du ROR qui précise les limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-location-residential-capacity"
      },
      "name" : "RORLocationResidentialCapacity",
      "description" : "Extension créée dans le cadre du ROR qui décrit un type d'habitation adapté à la réalisation d'une offre.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-location-supported-capacity"
      },
      "name" : "RORLocationSupportedCapacity",
      "description" : "Extension créée dans le cadre du ROR qui indique une série d’enregistrements indiquant la quantité de lit (ou de place) de l'entité pour un statut et une temporalité donnés.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-measure"
      },
      "name" : "RORMeasure",
      "description" : "Définition de l'indicateur de pilotage du ROR National",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-measurereport"
      },
      "name" : "RORMeasureReport",
      "description" : "Valeur pour un indicateur de pilotage du ROR National",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-meta-comment"
      },
      "name" : "RORMetaComment",
      "description" : "Extension créée dans le cadre du ROR qui correspond au commentaire présent dans les métadonnées.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-meta-creation-date"
      },
      "name" : "RORMetaCreationDate",
      "description" : "Extension créée dans le cadre du ROR qui correspond à la date de création (dans le ROR régional) présente dans les métadonnées.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-meta-questionnaire-used-as-a-template"
      },
      "name" : "RORMetaQuestionnaireUsedAsATemplate",
      "description" : "Extension créée dans le cadre du ROR qui correspond au questionnaire de saisie utilisé comme modèle associé à la ressource.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organization"
      },
      "name" : "ROROrganization",
      "description" : "Profil créé dans le cadre du ROR pour décrire les organismes du domaine sanitaire, médico-social et social immatriculés dans le FINESS et les organisations internes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organization-accessibility-location"
      },
      "name" : "ROROrganizationAccessibilityLocation",
      "description" : "Extension créée dans le cadre du ROR qui précise dans quelle mesure les locaux sont conformes aux dispositions règlementaires relatives à l’accessibilité des établissements recevant du public.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organization-accomodation-family"
      },
      "name" : "ROROrganizationAccomodationFamily",
      "description" : "Extension créée dans le cadre du ROR pour préciser si l'établissement peut héberger les familles des personnes prises en charge.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organization-additional-name"
      },
      "name" : "ROROrganizationAdditionalName",
      "description" : "Extension créée dans le cadre du ROR pour nom complémentaire de l'EJ (complementRaisonSociale)  ou nom complémentaire de l'EG (DenominationEG)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organization-closing-type"
      },
      "name" : "ROROrganizationClosingType",
      "description" : "Extension créée dans le cadre du ROR pour définir le type de fermeture de l'organisation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organization-comment"
      },
      "name" : "ROROrganizationComment",
      "description" : "Extension créée dans le cadre du ROR pour décrire le commentaire qui permet à la structure de donner des informations complémentaires",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organization-creation-date"
      },
      "name" : "ROROrganizationCreationDate",
      "description" : "Extension créée dans le cadre du ROR pour définir la date de création de l'entité juridique.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organization-drop-zone"
      },
      "name" : "ROROrganizationDropZone",
      "description" : "Extension créée dans le cadre du ROR pour préciser l’existence d’une zone de poser pour hélicoptère sur le site concerné.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organization-financial-help-type"
      },
      "name" : "ROROrganizationFinancialHelpType",
      "description" : "Extension créée dans le cadre du ROR pour préciser l'aide financière pour laquelle l'EG dispose d'une habilitation ou conventionnement qui permet aux personnes accueillies d'en bénéficier si elles remplissent les conditions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organization-level-recours-orsan"
      },
      "name" : "ROROrganizationLevelRecourseORSAN",
      "description" : "Extension créée dans le cadre du ROR pour décrire une hiérarchisation fonctionnelle de la mobilisation des établissements pour accueillir les patients après régulation par le SAMU.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organization-nb-permanent-social-help-place"
      },
      "name" : "ROROrganizationNbPermanentSocialHelpPlace",
      "description" : "Extension créée dans le cadre du ROR pour indiquer le nombre de places permanentes dédiées à l'aide sociale dans l'établissement",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organization-nb-temporary-social-help-place"
      },
      "name" : "ROROrganizationNbTemporarySocialHelpPlace",
      "description" : "Extension créée dans le cadre du ROR pour indiquer le nombre de places temporaires dédiées à l'aide sociale dans l'établissement",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organization-price"
      },
      "name" : "ROROrganizationPrice",
      "description" : "Extension créée dans le cadre du ROR pour permettre de définir les tarifs des prestations et services d'une entité géographique.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organization-reopening-date"
      },
      "name" : "ROROrganizationReopeningDate",
      "description" : "Extension créée dans le cadre du ROR pour définir la date prévisionnelle de réouverture de l'organisation interne.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-practitioner"
      },
      "name" : "RORPractitioner",
      "description" : "Profil créée dans le cadre du ROR pour décrire les données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-practitionerrole"
      },
      "name" : "RORPractitionerRole",
      "description" : "Profil créé dans le cadre du ROR pour décrire les modalités d'exercice opérationnelles du profesionnel dans la réalisation de l'offre",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-practitionerrole-name"
      },
      "name" : "RORPractitionerRoleName",
      "description" : "Extension créée dans le cadre du ROR pour définir l'identité d’exercice d’un professionnel",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-practitionerrole-unit-exercise-mode"
      },
      "name" : "RORPractitionerRoleUnitExerciseMode",
      "description" : "Extension créée dans le cadre du ROR qui correspond au statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-questionnaire-healthcareservice"
      },
      "name" : "RORQuestionnaire",
      "description" : "Modèle de saisie des Offres Opérationnelles.  \nLes questionnaires créés à partir de cette ressource sont utilisés par les établissements pour saisir leurs offres opérationnelles.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-task"
      },
      "name" : "RORTask",
      "description" : "Anomalie concerant une donnée dans une ressource du ROR",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-telecom-communication-channel"
      },
      "name" : "RORTelecomCommunicationChannel",
      "description" : "Extension créée dans le cadre du ROR spécifiant le canal ou la manière dont s'établit la communication",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-telecom-confidentiality-level"
      },
      "name" : "RORTelecomConfidentialityLevel",
      "description" : "Extension créée dans le cadre du ROR qui permet de définir le niveau de restriction de l'accès aux attributs de la classe Télécommunication.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-telecom-usage"
      },
      "name" : "RORTelecomUsage",
      "description" : "Extension créée dans le cadre du ROR qui précise l'utilisation du canal de communication",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-territorial-division"
      },
      "name" : "RORTerritorialDivision",
      "description" : "Extension créée dans le cadre du ROR qui correspond au périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite. \nCela inclut notamment les divisions territoriales dans lesquelles les professionnels se déplacent.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/ror-questionnaire-status-vs"
      },
      "name" : "Statuts autorisés pour les Questionnaires ROR",
      "description" : "Restriction des statuts de publication FHIR aux valeurs applicables aux modèles de saisie ROR. La valeur 'unknown' est exclue.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/ror-questionnaire-offre-mco"
      },
      "name" : "Unité hospitalière de gynécologie",
      "description" : "Extrait du questionnaire (modèle de saisie) permettant de renseigner l'Offre Opérationnelle d'une unité hospitalière de gynécologie",
      "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-questionnaire-healthcareservice"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/usage-context-ror-codesystem"
      },
      "name" : "UsageContextRORCodeSystem",
      "description" : "CodeSystem pour définir le type de catégorie du contexte d'usage des instances de questionnaire dans le cadre du ROR",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/ror-include-associated-data-vs"
      },
      "name" : "Value Set afin d'étendre le Value Set pour query parameter includeAssociatedData",
      "description" : "Value Set pour étendre http://hl7.org/fhir/uv/bulkdata/ValueSet/include-associated-data et utiliser _[custom value] pour utiliser le query parameter includeAssociatedData",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/ror-launch-context-vs"
      },
      "name" : "Value Set pour le contexte standard du lancement d'un questionnaire dans le cadre du ROR",
      "description" : "Extension du Value Set https://hl7.org/fhir/uv/sdc/ValueSet-launchContext.html afin de l'adapter au contexte de lancement des questionnaires dans le cadre du ROR",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/ror-usage-context-type-vs"
      },
      "name" : "Value Set type pour le contexte d'usage du modèle de saisie",
      "description" : "Extension du Value Set http://hl7.org/fhir/ValueSet/usage-context-type pour fixer le type de contexte d'usage du modèle de saisie avec le code EG ou le S pour Spécialité ordinale ou P01 pour le type de profession",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/act-type-ror-valueset"
      },
      "name" : "Valueset type d'acte",
      "description" : "Valueset type d'acte",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Accueil",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "specifications_fonctionnelles.html"
        }],
        "nameUrl" : "specifications_fonctionnelles.html",
        "title" : "Specifications Fonctionnelles",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "specifications_techniques_1.html"
        }],
        "nameUrl" : "specifications_techniques_1.html",
        "title" : "Consultation des données capacitaires",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "specifications_techniques_2.html"
        }],
        "nameUrl" : "specifications_techniques_2.html",
        "title" : "Consultation de l'offre (extraction)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "specifications_techniques_3.html"
        }],
        "nameUrl" : "specifications_techniques_3.html",
        "title" : "Recherche d'offre sur critères principaux",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "specifications_techniques_4.html"
        }],
        "nameUrl" : "specifications_techniques_4.html",
        "title" : "Recherche d'offre avec données capacitaires",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "specifications_techniques_8.html"
        }],
        "nameUrl" : "specifications_techniques_8.html",
        "title" : "Recherche d'offre sur la base d'informations tarifaires",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "specifications_techniques_9.html"
        }],
        "nameUrl" : "specifications_techniques_9.html",
        "title" : "Recherche d'offre via une technique « Full text »",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "specifications_techniques_10.html"
        }],
        "nameUrl" : "specifications_techniques_10.html",
        "title" : "Création et Mise à jour du lieu de réalisation de l'offre",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "modeles_de_saisie_offre.html"
        }],
        "nameUrl" : "modeles_de_saisie_offre.html",
        "title" : "Modèles de saisie de l'offre",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "saisie_offre.html"
        }],
        "nameUrl" : "saisie_offre.html",
        "title" : "Saisie de l'offre",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "miseAjour_offre.html"
        }],
        "nameUrl" : "miseAjour_offre.html",
        "title" : "Mise à jour de l'offre",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "specifications_techniques_5.html"
        }],
        "nameUrl" : "specifications_techniques_5.html",
        "title" : "Signalement d'anomalie",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "specifications_techniques_6.html"
        }],
        "nameUrl" : "specifications_techniques_6.html",
        "title" : "Mise à jour d'anomalie",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "specifications_techniques_7.html"
        }],
        "nameUrl" : "specifications_techniques_7.html",
        "title" : "Consultation d'anomalie",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "specifications_techniques_11.html"
        }],
        "nameUrl" : "specifications_techniques_11.html",
        "title" : "Consultation d'indicateurs de pilotage",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "search_param.html"
        }],
        "nameUrl" : "search_param.html",
        "title" : "Critères de recherche",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "modifiers.html"
        }],
        "nameUrl" : "modifiers.html",
        "title" : "Paramètres et modificateurs de requêtes FHIR",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "mapping.html"
        }],
        "nameUrl" : "mapping.html",
        "title" : "Mapping FHIR du modèle de données du ROR",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "change-log.html"
        }],
        "nameUrl" : "change-log.html",
        "title" : "Historique des versions",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "autres_ressources.html"
        }],
        "nameUrl" : "autres_ressources.html",
        "title" : "Autres Ressources",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "securite.html"
          }],
          "nameUrl" : "securite.html",
          "title" : "Sécurité",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "downloads.html"
          }],
          "nameUrl" : "downloads.html",
          "title" : "Téléchargements et usages",
          "generation" : "markdown"
        }]
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
