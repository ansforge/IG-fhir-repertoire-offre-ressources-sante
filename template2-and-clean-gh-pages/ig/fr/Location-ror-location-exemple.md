# ror-location-exemple - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Exemple Location: ror-location-exemple

-------

**French**

-------

Dernière mise à jour : 2023-12-20 10:00:00+0100

Profil: [RORLocation](StructureDefinition-ror-location.md)

**RORCommuneCog**: Versailles

**RORMetaCreationDate**: 2022-01-01 00:00:00+0000

**type**: Hébergement

**address**: 7 rue porte de Buc Versailles 78000 



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "ror-location-exemple",
  "meta" : {
    "lastUpdated" : "2023-12-20T10:00:00+01:00",
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location"]
  },
  "extension" : [{
    "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM",
        "code" : "78646",
        "display" : "Versailles"
      }]
    }
  },
  {
    "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
    "valueDateTime" : "2022-01-01T00:00:00Z"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R343-FonctionLieu/FHIR/TRE-R343-FonctionLieu",
      "code" : "001",
      "display" : "Hébergement"
    }]
  }],
  "address" : {
    "line" : ["7 rue porte de Buc"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "7"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType",
        "valueString" : "RUE"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
        "valueString" : "porte de Buc"
      }]
    }],
    "city" : "Versailles",
    "postalCode" : "78000"
  }
}

```
