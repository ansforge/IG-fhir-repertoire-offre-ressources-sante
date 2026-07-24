# RORMetaCreationDate - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR qui correspond à la date de création (dans le ROR régional) présente dans les métadonnées.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [RORHealthcareService](StructureDefinition-ror-healthcareservice.md), [RORLocation](StructureDefinition-ror-location.md), [ROROrganization](StructureDefinition-ror-organization.md), [RORPractitioner](StructureDefinition-ror-practitioner.md) and [RORPractitionerRole](StructureDefinition-ror-practitionerrole.md)
* Examples for this Extension: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md) and [Location/ror-location-exemple](Location-ror-location-exemple.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.ror|current/StructureDefinition/StructureDefinition-ror-meta-creation-date.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ror-meta-creation-date.csv), [Excel](../StructureDefinition-ror-meta-creation-date.xlsx), [Schematron](../StructureDefinition-ror-meta-creation-date.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-meta-creation-date",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
  "version" : "0.7.0",
  "name" : "RORMetaCreationDate",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
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
