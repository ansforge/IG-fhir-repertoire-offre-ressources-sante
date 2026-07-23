# RORMetaCreationDate - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RORMetaCreationDate**

## Extension: RORMetaCreationDate 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date | *Version*:0.7.0 |
| Draft as of 2026-07-23 | *Computable Name*:RORMetaCreationDate |

Extension créée dans le cadre du ROR qui correspond à la date de création (dans le ROR régional) présente dans les métadonnées.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Location
* Element ID Organization
* Element ID Practitioner
* Element ID PractitionerRole
* Element ID HealthcareService

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [RORHealthcareService](StructureDefinition-ror-healthcareservice.md), [RORLocation](StructureDefinition-ror-location.md), [ROROrganization](StructureDefinition-ror-organization.md), [RORPractitioner](StructureDefinition-ror-practitioner.md) and [RORPractitionerRole](StructureDefinition-ror-practitionerrole.md)
* Exemples pour ce/t/te Extension: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md) and [Location/ror-location-exemple](Location-ror-location-exemple.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.ror|current/StructureDefinition/ror-meta-creation-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ror-meta-creation-date.csv), [Excel](StructureDefinition-ror-meta-creation-date.xlsx), [Schematron](StructureDefinition-ror-meta-creation-date.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-meta-creation-date",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
  "version" : "0.7.0",
  "name" : "RORMetaCreationDate",
  "status" : "draft",
  "date" : "2026-07-23T07:54:45+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée dans le cadre du ROR qui correspond à la date de création (dans le ROR régional) présente dans les métadonnées.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORMetaCreationDate",
    "name" : "Spécification métier vers l'extension ROR MetaCreationDate"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Location"
  },
  {
    "type" : "element",
    "expression" : "Organization"
  },
  {
    "type" : "element",
    "expression" : "Practitioner"
  },
  {
    "type" : "element",
    "expression" : "PractitionerRole"
  },
  {
    "type" : "element",
    "expression" : "HealthcareService"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR qui correspond à la date de création (dans le ROR régional) présente dans les métadonnées."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-RORMetaCreationDate",
        "map" : "metadonnee.dateCreation"
      }]
    }]
  }
}

```
