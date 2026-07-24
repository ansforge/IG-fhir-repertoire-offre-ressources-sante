# RORLocation - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Profil de ressource: RORLocation 

 
Profil créé dans le cadre du ROR pour décrire l'espace disposant d'un ensemble de ressources pour réaliser une offre. 

**Utilisations:**

* Référence ce Profil: [RORHealthcareService](StructureDefinition-ror-healthcareservice.md), [RORLocation](StructureDefinition-ror-location.md), [RORMeasureReport](StructureDefinition-ror-measurereport.md), [RORPractitionerRole](StructureDefinition-ror-practitionerrole.md) and [RORTask](StructureDefinition-ror-task.md)
* Exemples pour ce/t/te Profil: [Location/ror-location-exemple](Location-ror-location-exemple.md)
* CapabilityStatements utilisant ce Profil: [ROR-Consommateur](CapabilityStatement-ror-consommateur.md) and [ROR-Serveur](CapabilityStatement-ror-serveur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-location)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Location](http://hl7.org/fhir/R4/location.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Location](http://hl7.org/fhir/R4/location.html) 

** Résumé **

Obligatoire : 2 éléments(8 éléments obligatoire(s) imbriqué(s))
 Must-Support : 35 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FrOrganization (http://interopsante.org/fhir/StructureDefinition/FrOrganization|1.0.1)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrOrganization)
* [ROROrganization (https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization|0.7.0)](StructureDefinition-ror-organization.md)
* [Location (http://hl7.org/fhir/StructureDefinition/Location|4.0.1)](http://hl7.org/fhir/R4/location.html)
* [RORLocation (https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location|0.7.0)](StructureDefinition-ror-location.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog|0.7.0](StructureDefinition-ror-commune-cog.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment|0.7.0](StructureDefinition-ror-location-equipment.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-residential-capacity|0.7.0](StructureDefinition-ror-location-residential-capacity.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity|0.7.0](StructureDefinition-ror-location-supported-capacity.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date|0.7.0](StructureDefinition-ror-meta-creation-date.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-questionnaire-used-as-a-template|0.7.0](StructureDefinition-ror-meta-questionnaire-used-as-a-template.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-comment|0.7.0](StructureDefinition-ror-comment.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel|0.7.0](StructureDefinition-ror-telecom-communication-channel.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage|0.7.0](StructureDefinition-ror-telecom-usage.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level|0.7.0](StructureDefinition-ror-telecom-confidentiality-level.md)
* [http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-careOf|5.2.0](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-iso21090-ADXP-careOf.html)
* [http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator|5.2.0](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-iso21090-ADXP-additionalLocator.html)
* [http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber|5.2.0](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-iso21090-ADXP-houseNumber.html)
* [http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-buildingNumberSuffix|5.2.0](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-iso21090-ADXP-buildingNumberSuffix.html)
* [http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType|5.2.0](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-iso21090-ADXP-streetNameType.html)
* [http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase|5.2.0](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-iso21090-ADXP-streetNameBase.html)
* [http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox|5.2.0](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-iso21090-ADXP-postBox.html)
* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-lieu-dit|0.7.0](StructureDefinition-as-ext-lieu-dit.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-coordinate-reliability|0.7.0](StructureDefinition-ror-coordinate-reliability.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Location.meta.tag
* The element 1 is sliced based on the value of Location.identifier
* The element 1 is sliced based on the value of Location.alias

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Location](http://hl7.org/fhir/R4/location.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Location](http://hl7.org/fhir/R4/location.html) 

** Résumé **

Obligatoire : 2 éléments(8 éléments obligatoire(s) imbriqué(s))
 Must-Support : 35 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FrOrganization (http://interopsante.org/fhir/StructureDefinition/FrOrganization|1.0.1)](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrOrganization)
* [ROROrganization (https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization|0.7.0)](StructureDefinition-ror-organization.md)
* [Location (http://hl7.org/fhir/StructureDefinition/Location|4.0.1)](http://hl7.org/fhir/R4/location.html)
* [RORLocation (https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location|0.7.0)](StructureDefinition-ror-location.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog|0.7.0](StructureDefinition-ror-commune-cog.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment|0.7.0](StructureDefinition-ror-location-equipment.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-residential-capacity|0.7.0](StructureDefinition-ror-location-residential-capacity.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity|0.7.0](StructureDefinition-ror-location-supported-capacity.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date|0.7.0](StructureDefinition-ror-meta-creation-date.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-questionnaire-used-as-a-template|0.7.0](StructureDefinition-ror-meta-questionnaire-used-as-a-template.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-comment|0.7.0](StructureDefinition-ror-comment.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel|0.7.0](StructureDefinition-ror-telecom-communication-channel.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage|0.7.0](StructureDefinition-ror-telecom-usage.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level|0.7.0](StructureDefinition-ror-telecom-confidentiality-level.md)
* [http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-careOf|5.2.0](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-iso21090-ADXP-careOf.html)
* [http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator|5.2.0](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-iso21090-ADXP-additionalLocator.html)
* [http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber|5.2.0](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-iso21090-ADXP-houseNumber.html)
* [http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-buildingNumberSuffix|5.2.0](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-iso21090-ADXP-buildingNumberSuffix.html)
* [http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType|5.2.0](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-iso21090-ADXP-streetNameType.html)
* [http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase|5.2.0](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-iso21090-ADXP-streetNameBase.html)
* [http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox|5.2.0](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-iso21090-ADXP-postBox.html)
* [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-lieu-dit|0.7.0](StructureDefinition-as-ext-lieu-dit.md)
* [https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-coordinate-reliability|0.7.0](StructureDefinition-ror-coordinate-reliability.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Location.meta.tag
* The element 1 is sliced based on the value of Location.identifier
* The element 1 is sliced based on the value of Location.alias

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-location.csv), [Excel](../StructureDefinition-ror-location.xlsx), [Schematron](../StructureDefinition-ror-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-location",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location",
  "version" : "0.7.0",
  "name" : "RORLocation",
  "status" : "draft",
  "date" : "2026-07-24T08:25:42+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil créé dans le cadre du ROR pour décrire l'espace disposant d'un ensemble de ressources pour réaliser une offre.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORLocation",
    "uri" : "https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf",
    "name" : "Location du Modèle exposition ROR V3"
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
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location",
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "LieuRealisationOffre",
        "comment" : "Profils ayant Accès"
      }]
    },
    {
      "id" : "Location.id",
      "path" : "Location.id",
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "metadonnee.identifiant",
        "comment" : "Profil 1, Profil4,\nProfil 2 (sauf si uniteSensible = Oui),\nProfil 3 (sauf si uniteSensible = Oui),\nProfil 5 (sauf si uniteSensible = Oui),\nProfil 0 (sauf si uniteSensible = Oui)"
      }]
    },
    {
      "id" : "Location.meta",
      "path" : "Location.meta",
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "metadonnee",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.meta.lastUpdated",
      "path" : "Location.meta.lastUpdated",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "dateMiseJour",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.meta.tag",
      "path" : "Location.meta.tag",
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
      "id" : "Location.meta.tag:codeRegion",
      "path" : "Location.meta.tag",
      "sliceName" : "codeRegion",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "regionSource",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.extension",
      "path" : "Location.extension",
      "min" : 2
    },
    {
      "id" : "Location.extension:ror-commune-cog",
      "path" : "Location.extension",
      "sliceName" : "ror-commune-cog",
      "short" : "communeCog (LieuRealisationOffre) : Code officiel géographique (COG) de la commune dans laquelle le lieu est situé",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog|0.7.0"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "CommuneCog",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.extension:ror-location-equipment",
      "path" : "Location.extension",
      "sliceName" : "ror-location-equipment",
      "short" : "EquipementSpecifique : Ressource matérielle discriminante pour la réalisation d'une prestation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment|0.7.0"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "EquipementSpecifique",
        "comment" : "Profil 1, Profil4,\nProfil 2 (sauf si uniteSensible = Oui),\nProfil 3 si champ activité = MS (sauf si uniteSensible = Oui),\nProfil 5 (sauf si uniteSensible = Oui),"
      }]
    },
    {
      "id" : "Location.extension:ror-location-residential-capacity",
      "path" : "Location.extension",
      "sliceName" : "ror-location-residential-capacity",
      "short" : "CapaciteHabitation : type d'habitation adapté à la réalisation d'une offre",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-residential-capacity|0.7.0"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "CapaciteHabitation",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.extension:ror-location-supported-capacity",
      "path" : "Location.extension",
      "sliceName" : "ror-location-supported-capacity",
      "short" : "CapacitePriseCharge :  + CapaciteAccueilOperationnelle",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity|0.7.0"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "CapacitePriseCharge",
        "comment" : "Profil 1,  \nProfil4,  \nProfil 2 hors capacités supplémentaires (sauf si uniteSensible = Oui),  \nProfil 3 si champ activité = MS, hors capacités supplémentaires (sauf si uniteSensible = Oui),  \nProfil 5  uniquement pour les lits installés (sauf si uniteSensible = Oui)  "
      }]
    },
    {
      "id" : "Location.extension:ror-meta-creation-date",
      "path" : "Location.extension",
      "sliceName" : "ror-meta-creation-date",
      "short" : "dateCreation (Metadonnee)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date|0.7.0"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "metadonnee.dateCreation",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.extension:ror-meta-questionnaire-used-as-a-template",
      "path" : "Location.extension",
      "sliceName" : "ror-meta-questionnaire-used-as-a-template",
      "short" : "modeleSaisie (Metadonnee) : Référence canonique vers le questionnaire utilisé comme modèle de saisie, incluant obligatoirement la version sous la forme url|version. Exemple : https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/ror-questionnaire-2042|1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-questionnaire-used-as-a-template|0.7.0"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "metadonnee.modeleSaisie",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.extension:ror-comment",
      "path" : "Location.extension",
      "sliceName" : "ror-comment",
      "short" : "commentaire (LieuRealisationOffre) : Commentaire qui permet à la structure de donner des informations complémentaires",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-comment|0.7.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.identifier",
      "path" : "Location.identifier",
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
      "id" : "Location.identifier:idExterneSynchro",
      "path" : "Location.identifier",
      "sliceName" : "idExterneSynchro",
      "short" : "idExterneSynchro (LieuRealisationOffre) : Identifiant défini par le porteur d’offre pour la zone d’hébergement des lits",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "idExterneSynchro",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.identifier:idExterneSynchro.type",
      "path" : "Location.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Location.identifier:idExterneSynchro.type.coding.code",
      "path" : "Location.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "26"
    },
    {
      "id" : "Location.identifier:idLocation",
      "path" : "Location.identifier",
      "sliceName" : "idLocation",
      "short" : "identifiant (LieuRealisationOffre) : Identifiant fonctionnel du lieu",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "identifiant",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.identifier:idLocation.type",
      "path" : "Location.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Location.identifier:idLocation.type.coding.code",
      "path" : "Location.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "25"
    },
    {
      "id" : "Location.status",
      "path" : "Location.status",
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "Pas d'équivalent"
      }]
    },
    {
      "id" : "Location.operationalStatus",
      "path" : "Location.operationalStatus",
      "short" : "statut (LieuRealisationOffre) : Indique si le lieu est opérationnel, fermé temporairement ou fermé définitivement",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J224-StatutLieu-ROR/FHIR/JDV-J224-StatutLieu-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "Statut",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.name",
      "path" : "Location.name",
      "short" : "nom (LieuRealisationOffre) : Nom, exprimé sous la forme de texte, du lieu",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "nom",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.alias",
      "path" : "Location.alias",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "description" : "nomExterneSynchro (LieuRealisationOffre) : Nom de la zone d’hébergement des lits",
        "rules" : "open"
      }
    },
    {
      "id" : "Location.alias:nomExterneSynchro",
      "path" : "Location.alias",
      "sliceName" : "nomExterneSynchro",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "nomExterneSynchro",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.description",
      "path" : "Location.description",
      "short" : "description (LieuRealisationOffre) : Description textuelle du lieu, indiquant comment l'atteindre",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "description",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "short" : "fonctionLieu (LieuRealisationOffre) : La fonction correspond à la destination d'usage du lieu",
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J198-FonctionLieu-ROR/FHIR/JDV-J198-FonctionLieu-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "fonctionLieu",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.telecom",
      "path" : "Location.telecom",
      "short" : "telecommunication (LieuRealisationOffre) : Adresse(s) de télécommunication du lieu",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "telecommunication",
        "comment" : "Profil 1,  \nProfil 2 et Profil 5 si niveau de confidentialité de la telecommunication différent de 'très restreint' et uniteSensible = Non  \nProfil 3 si champ d'activité MS et si si niveau de confidentialité de la telecommunication différent de 'très restreint' et uniteSensible = Non  \nProfil 4 si niveau de confidentialité  de la telecommunication = 'public'  \nProfil 0 si niveau de confidentialité  de la telecommunication = 'public' et uniteSensible = Non  "
      }]
    },
    {
      "id" : "Location.telecom.extension",
      "path" : "Location.telecom.extension",
      "min" : 2
    },
    {
      "id" : "Location.telecom.extension:ror-telecom-communication-channel",
      "path" : "Location.telecom.extension",
      "sliceName" : "ror-telecom-communication-channel",
      "short" : "canal (Telecommunication) : Code spécifiant le canal ou la manière dont s'établit la communication",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel|0.7.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.telecom.extension:ror-telecom-usage",
      "path" : "Location.telecom.extension",
      "sliceName" : "ror-telecom-usage",
      "short" : "utilisation (Telecommunication) : Utilisation du canal de communication",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage|0.7.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.telecom.extension:ror-telecom-confidentiality-level",
      "path" : "Location.telecom.extension",
      "sliceName" : "ror-telecom-confidentiality-level",
      "short" : "niveauConfidentialite (Telecommunication) : Niveau de restriction de l'accès aux attributs de la classe Télécommunication",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level|0.7.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.telecom.value",
      "path" : "Location.telecom.value",
      "short" : "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "telecommunication.adresseTelecom",
        "comment" : "cf telecommunication"
      }]
    },
    {
      "id" : "Location.address",
      "path" : "Location.address",
      "short" : "adresse (LieuRealisationOffre) : Adresse géopostale du lieu",
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "adresse",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.address.line.extension:careOf",
      "path" : "Location.address.line.extension",
      "sliceName" : "careOf",
      "short" : "pointRemise (Adresse) : Lieu où le destinataire prend possession de son courrier",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-careOf|5.2.0"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "pointRemise",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.address.line.extension:additionalLocator",
      "path" : "Location.address.line.extension",
      "sliceName" : "additionalLocator",
      "short" : "complementPointGeographique (Adresse) : Un complément de l'adresse au point géographique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator|5.2.0"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "complementPointGeographique",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.address.line.extension:houseNumber",
      "path" : "Location.address.line.extension",
      "sliceName" : "houseNumber",
      "short" : "numeroVoie (Adresse) : Un numéro dans la voie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber|5.2.0"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "numeroVoie",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.address.line.extension:buildingNumberSuffix",
      "path" : "Location.address.line.extension",
      "sliceName" : "buildingNumberSuffix",
      "short" : "extension (Adresse) : Extension ou indice de répétition",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-buildingNumberSuffix|5.2.0"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "extension",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.address.line.extension:streetNameType",
      "path" : "Location.address.line.extension",
      "sliceName" : "streetNameType",
      "short" : "typeVoie (Adresse) : Type de voie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType|5.2.0"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "typeVoie",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.address.line.extension:streetNameType.value[x]",
      "path" : "Location.address.line.extension.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J219-TypeVoie-ROR/FHIR/JDV-J219-TypeVoie-ROR"
      }
    },
    {
      "id" : "Location.address.line.extension:streetNameBase",
      "path" : "Location.address.line.extension",
      "sliceName" : "streetNameBase",
      "short" : "libelleVoie (Adresse) : Appellation qui est donnée à la voie par les municipalités",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase|5.2.0"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "libelleVoie",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.address.line.extension:postalBox",
      "path" : "Location.address.line.extension",
      "sliceName" : "postalBox",
      "short" : "mentionDistribution (Adresse) : Mentions particulières de distribution",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox|5.2.0"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "mentionDistribution",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.address.line.extension:lieuDit",
      "path" : "Location.address.line.extension",
      "sliceName" : "lieuDit",
      "short" : "lieuDit (Adresse) : Lieu qui porte un nom rappelant une particularité topographique ou historique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-lieu-dit|0.7.0"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "lieuDit",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.address.city",
      "path" : "Location.address.city",
      "short" : "localité (Adresse) : Localité ou Libellé du bureau distributeur CEDEX",
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "localite",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.address.postalCode",
      "path" : "Location.address.postalCode",
      "short" : "codePostal (Adresse) : Code Postal ou code postal spécifique CEDEX",
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "codePostal",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.position",
      "path" : "Location.position",
      "short" : "coordonneeGeographique (LieuRealisationOffre) : Coordonnées géographiques du lieu (système géodésique : WGS84)",
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "coordonneeGeographique",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.position.extension:ror-coordinate-reliability",
      "path" : "Location.position.extension",
      "sliceName" : "ror-coordinate-reliability",
      "short" : "coordonneesFiables (CoordonneeGeographique) : Permet de signaler si les informations des coordonnées géographiques sont issues d'un mode de production qui assure un certain niveau de fiabilité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-coordinate-reliability|0.7.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.position.longitude",
      "path" : "Location.position.longitude",
      "short" : "longitude (CoordonneeGeographique) : Une mesure de la distance angulaire est ou ouest depuis le méridien de Greenwich jusqu'au méridien du point spécifique",
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "longitude",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.position.latitude",
      "path" : "Location.position.latitude",
      "short" : "latitude (CoordonneeGeographique) : Une mesure de la distance angulaire nord ou sud depuis l'équateur jusqu'au parallèle du spécifique",
      "mapping" : [{
        "identity" : "specmetier-to-RORLocation",
        "map" : "latitude",
        "comment" : "Similaire aux accès de metadonnee.identifiant"
      }]
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "short" : "Hors périmètre du modèle d'exposition du ROR, ce champ est utilisé dans le cas suivant : le Lieu de Réalisation (Location) n'est rattaché à aucune Offre Opérationnelle (HealthcareService), la Location ne pourra alors être rattachée qu'à un ou des HealthcareServices ayant comme parent cette Organization qui doit obligatoirement être une EG",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://interopsante.org/fhir/StructureDefinition/FrOrganization|1.0.1",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization|0.7.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.partOf",
      "path" : "Location.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Location|4.0.1",
        "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location|0.7.0"]
      }],
      "mustSupport" : true
    }]
  }
}

```
