# Value Set afin d'étendre le Value Set pour query parameter includeAssociatedData - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Value Set afin d'étendre le Value Set pour query parameter includeAssociatedData**

## ValueSet: Value Set afin d'étendre le Value Set pour query parameter includeAssociatedData (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-include-associated-data-vs | *Version*:0.7.0 |
| Draft as of 2026-08-20 | *Computable Name*:RorIncludeAssociatedDataVS |

 
Value Set pour étendre http://hl7.org/fhir/uv/bulkdata/ValueSet/include-associated-data et utiliser _[custom value] pour utiliser le query parameter includeAssociatedData 

 **References** 

Ce jeu de valeurs n'est pas utilisé ici ; il peut être utilisé autre part (par exemple dans les spécifications et / ou implémentations qui utilisent ce contenu)

### Définition logique (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ror-include-associated-data-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-include-associated-data-vs",
  "version" : "0.7.0",
  "name" : "RorIncludeAssociatedDataVS",
  "title" : "Value Set afin d'étendre le Value Set pour query parameter includeAssociatedData",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-20T16:34:37+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Value Set pour étendre http://hl7.org/fhir/uv/bulkdata/ValueSet/include-associated-data et utiliser _[custom value] pour utiliser le query parameter includeAssociatedData",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/uv/bulkdata/CodeSystem/include-associated-data"
    },
    {
      "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/ror-include-associated-data-code-system"
    }]
  }
}

```
