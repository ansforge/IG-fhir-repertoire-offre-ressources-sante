# Value Set afin d'étendre le Value Set pour query parameter includeAssociatedData - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## ValueSet: Value Set afin d'étendre le Value Set pour query parameter includeAssociatedData (Experimental) 

 
Value Set pour étendre http://hl7.org/fhir/uv/bulkdata/ValueSet/include-associated-data et utiliser _[custom value] pour utiliser le query parameter includeAssociatedData 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ror-include-associated-data-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/ror-include-associated-data-vs",
  "version" : "0.7.0",
  "name" : "RorIncludeAssociatedDataVS",
  "title" : "Value Set afin d'étendre le Value Set pour query parameter includeAssociatedData",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-24T08:16:41+00:00",
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
      "system" : "http://hl7.org/fhir/uv/bulkdata/CodeSystem/include-associated-data",
      "version" : "2.0.0"
    },
    {
      "system" : "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/ror-include-associated-data-code-system",
      "version" : "0.7.0"
    }]
  }
}

```
