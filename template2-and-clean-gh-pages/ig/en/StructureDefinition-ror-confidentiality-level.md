# RORConfidentialityLevel - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Extension: 

Extension créée dans le cadre du ROR pour définir le niveau de restriction de l'accès aux attributs de la classe Contact.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [RORHealthcareServiceContact](StructureDefinition-ror-healthcareservice-contact.md)
* Examples for this Extension: [5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE](HealthcareService-1234564.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.ror|current/StructureDefinition/StructureDefinition-ror-confidentiality-level.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ror-confidentiality-level.csv), [Excel](../StructureDefinition-ror-confidentiality-level.xlsx), [Schematron](../StructureDefinition-ror-confidentiality-level.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-confidentiality-level",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level",
  "version" : "0.7.0",
  "name" : "RORConfidentialityLevel",
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
  "description" : "Extension créée dans le cadre du ROR pour définir le niveau de restriction de l'accès aux attributs de la classe Contact.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORConfidentialityLevel",
    "name" : "Spécification métier vers l'extension ROR ConfidentialityLevel"
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
    "expression" : "ContactPoint"
  },
  {
    "type" : "element",
    "expression" : "BackboneElement"
  },
  {
    "type" : "element",
    "expression" : "Location.telecom"
  },
  {
    "type" : "element",
    "expression" : "HealthcareService.extension"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extension créée dans le cadre du ROR pour définir le niveau de restriction de l'accès aux attributs de la classe Contact."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J222-NiveauConfidentialite-ROR/FHIR/JDV-J222-NiveauConfidentialite-ROR"
      },
      "mapping" : [{
        "identity" : "specmetier-to-RORConfidentialityLevel",
        "map" : "niveauConfidentialite"
      }]
    }]
  }
}

```
