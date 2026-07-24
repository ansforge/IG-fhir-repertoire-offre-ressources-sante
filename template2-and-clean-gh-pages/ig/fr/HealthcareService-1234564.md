# ror-healthcareservice-exemple - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Exemple HealthcareService: ror-healthcareservice-exemple

-------

**French**

-------

Dernière mise à jour : 2025-04-08 13:05:27+0000

Profil: [RORHealthcareService](StructureDefinition-ror-healthcareservice.md)

Balise: [Mayotte (Détails : code TRE_R30_RegionOM 06 = 'Mayotte')](https://smt.esante.gouv.fr/fhir/ValueSet/TRE-R30-RegionOM)

**RORHealthcareServiceSensitiveUnit**: false

> **RORHealthcareServicePatientType**
* ageRange: 15-150

**RORMetaCreationDate**: 2017-11-27 17:12:28+0000

**RORMetaQuestionnaireUsedAsATemplate**: [https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/MS-141|1](https://simplifier.net/resolve?scope=ANS.annuaire.fhir.r4@0.2.0&canonical=https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/MS-141|1)

> **RORHealthcareServiceContact**
> **url**[purposeContact](https://simplifier.net/resolve?scope=ANS.annuaire.fhir.r4@0.2.0&canonical=http://fhir.org/packages/ans.annuaire.fhir.r4/purposeContact)
**value**: Standard
> **url**[RORConfidentialityLevel](StructureDefinition-ror-confidentiality-level.md)
**value**: Accès libre**RORTelecomCommunicationChannel**: Téléphone fixe**RORTelecomConfidentialityLevel**: Accès libre**telecomAddress**: 0199999999
> **url**[RORHealthcareServiceContactTelecom](StructureDefinition-ror-healthcareservice-contact-telecom.md)

**identifier**: Identifiant fonctionnel de l'offre connu par l'instance ROR/06/0099999

**providedBy**: [Organization/999999](https://simplifier.net/resolve?scope=ANS.annuaire.fhir.r4@0.2.0&canonical=http://fhir.org/packages/ans.annuaire.fhir.r4/Organization/999999)

**category**: Unité hospitalière de gynécologie

**type**: Médecine, Chirurgie, Obstétrique (MCO)

**specialty**: Chirurgie gynécologique

**location**: [Location/888888](https://simplifier.net/resolve?scope=ANS.annuaire.fhir.r4@0.2.0&canonical=http://fhir.org/packages/ans.annuaire.fhir.r4/Location/888888)

**name**: 5812 Chirurgie gynécologique - HOSPITALISATION COMPLETE

**characteristic**: Maternité de type 3, Semaine et week-end (de 211 à 364 jours par an)

> **availableTime****RORAvailableTimeNumberDaysofWeek**: 1**RORAvailableTimeEffectiveOpeningClosingDate**: 2025-04-08 --> (en cours)**RORAvailableTimeTypeOfTime**: Horaire d'ouverture**daysOfWeek**: Monday**availableStartTime**: 00:00:00**availableEndTime**: 23:59:00

> **availableTime****RORAvailableTimeNumberDaysofWeek**: 2**RORAvailableTimeEffectiveOpeningClosingDate**: 2025-04-08 --> (en cours)**RORAvailableTimeTypeOfTime**: Horaire d'ouverture**daysOfWeek**: Tuesday**availableStartTime**: 00:00:00**availableEndTime**: 23:59:00

> **availableTime****RORAvailableTimeNumberDaysofWeek**: 3**RORAvailableTimeEffectiveOpeningClosingDate**: 2025-04-08 --> (en cours)**RORAvailableTimeTypeOfTime**: Horaire d'ouverture**daysOfWeek**: Wednesday**availableStartTime**: 00:00:00**availableEndTime**: 23:59:00

> **availableTime****RORAvailableTimeNumberDaysofWeek**: 4**RORAvailableTimeEffectiveOpeningClosingDate**: 2025-04-08 --> (en cours)**RORAvailableTimeTypeOfTime**: Horaire d'ouverture**daysOfWeek**: Thursday**availableStartTime**: 00:00:00**availableEndTime**: 23:59:00

> **availableTime****RORAvailableTimeNumberDaysofWeek**: 5**RORAvailableTimeEffectiveOpeningClosingDate**: 2025-04-08 --> (en cours)**RORAvailableTimeTypeOfTime**: Horaire d'ouverture**daysOfWeek**: Friday**availableStartTime**: 00:00:00**availableEndTime**: 23:59:00

> **availableTime****RORAvailableTimeNumberDaysofWeek**: 6**RORAvailableTimeEffectiveOpeningClosingDate**: 2025-04-08 --> (en cours)**RORAvailableTimeTypeOfTime**: Horaire d'ouverture**daysOfWeek**: Saturday**availableStartTime**: 00:00:00**availableEndTime**: 23:59:00

> **availableTime****RORAvailableTimeNumberDaysofWeek**: 7**RORAvailableTimeEffectiveOpeningClosingDate**: 2025-04-08 --> (en cours)**RORAvailableTimeTypeOfTime**: Horaire d'ouverture**daysOfWeek**: Sunday**availableStartTime**: 00:00:00**availableEndTime**: 23:59:00



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "1234564",
  "meta" : {
    "lastUpdated" : "2025-04-08T13:05:27.000+00:00",
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice"],
    "tag" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM",
      "code" : "06"
    }]
  },
  "extension" : [{
    "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit",
    "valueBoolean" : false
  },
  {
    "extension" : [{
      "url" : "ageRange",
      "valueRange" : {
        "low" : {
          "value" : 15,
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R247-UcumUniteMesure/FHIR/TRE-R247-UcumUniteMesure",
          "code" : "a"
        },
        "high" : {
          "value" : 150,
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R247-UcumUniteMesure/FHIR/TRE-R247-UcumUniteMesure",
          "code" : "a"
        }
      }
    }],
    "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type"
  },
  {
    "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
    "valueDateTime" : "2017-11-27T17:12:28+00:00"
  },
  {
    "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-questionnaire-used-as-a-template",
    "valueCanonical" : "https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/MS-141|1"
  },
  {
    "extension" : [{
      "url" : "purposeContact",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R287-NatureContact/FHIR/TRE-R287-NatureContact",
          "code" : "06",
          "display" : "Standard"
        }]
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite",
          "code" : "1",
          "display" : "Accès libre"
        }]
      }
    },
    {
      "extension" : [{
        "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication",
            "code" : "2",
            "display" : "Téléphone fixe"
          }]
        }
      },
      {
        "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite",
            "code" : "1",
            "display" : "Accès libre"
          }]
        }
      },
      {
        "url" : "telecomAddress",
        "valueString" : "0199999999"
      }],
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom"
    }],
    "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R355-TypeIdentifiantOffre/FHIR/TRE-R355-TypeIdentifiantOffre",
        "code" : "35",
        "display" : "Identifiant fonctionnel de l'offre connu par l'instance ROR"
      }]
    },
    "value" : "06/0099999"
  }],
  "providedBy" : {
    "reference" : "Organization/999999"
  },
  "category" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation",
      "code" : "157",
      "display" : "Unité hospitalière de gynécologie"
    }]
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite",
      "code" : "01",
      "display" : "Médecine, Chirurgie, Obstétrique (MCO)"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle",
      "code" : "022",
      "display" : "Chirurgie gynécologique"
    }]
  }],
  "location" : [{
    "reference" : "Location/888888"
  }],
  "name" : "5812  Chirurgie gynécologique - HOSPITALISATION COMPLETE",
  "characteristic" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R253-TypeMaternite/FHIR/TRE-R253-TypeMaternite",
      "code" : "04",
      "display" : "Maternité de type 3"
    }]
  },
  {
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R238-OuvertureAnnuelle/FHIR/TRE-R238-OuvertureAnnuelle",
      "code" : "02",
      "display" : "Semaine et week-end (de 211 à 364 jours par an)"
    }]
  }],
  "availableTime" : [{
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
      "valueInteger" : 1
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date",
      "valuePeriod" : {
        "start" : "2025-04-08"
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire",
          "code" : "01",
          "display" : "Horaire d'ouverture"
        }]
      }
    }],
    "daysOfWeek" : ["mon"],
    "availableStartTime" : "00:00:00",
    "availableEndTime" : "23:59:00"
  },
  {
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
      "valueInteger" : 2
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date",
      "valuePeriod" : {
        "start" : "2025-04-08"
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire",
          "code" : "01",
          "display" : "Horaire d'ouverture"
        }]
      }
    }],
    "daysOfWeek" : ["tue"],
    "availableStartTime" : "00:00:00",
    "availableEndTime" : "23:59:00"
  },
  {
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
      "valueInteger" : 3
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date",
      "valuePeriod" : {
        "start" : "2025-04-08"
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire",
          "code" : "01",
          "display" : "Horaire d'ouverture"
        }]
      }
    }],
    "daysOfWeek" : ["wed"],
    "availableStartTime" : "00:00:00",
    "availableEndTime" : "23:59:00"
  },
  {
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
      "valueInteger" : 4
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date",
      "valuePeriod" : {
        "start" : "2025-04-08"
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire",
          "code" : "01",
          "display" : "Horaire d'ouverture"
        }]
      }
    }],
    "daysOfWeek" : ["thu"],
    "availableStartTime" : "00:00:00",
    "availableEndTime" : "23:59:00"
  },
  {
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
      "valueInteger" : 5
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date",
      "valuePeriod" : {
        "start" : "2025-04-08"
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire",
          "code" : "01",
          "display" : "Horaire d'ouverture"
        }]
      }
    }],
    "daysOfWeek" : ["fri"],
    "availableStartTime" : "00:00:00",
    "availableEndTime" : "23:59:00"
  },
  {
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
      "valueInteger" : 6
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date",
      "valuePeriod" : {
        "start" : "2025-04-08"
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire",
          "code" : "01",
          "display" : "Horaire d'ouverture"
        }]
      }
    }],
    "daysOfWeek" : ["sat"],
    "availableStartTime" : "00:00:00",
    "availableEndTime" : "23:59:00"
  },
  {
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
      "valueInteger" : 7
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date",
      "valuePeriod" : {
        "start" : "2025-04-08"
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire",
          "code" : "01",
          "display" : "Horaire d'ouverture"
        }]
      }
    }],
    "daysOfWeek" : ["sun"],
    "availableStartTime" : "00:00:00",
    "availableEndTime" : "23:59:00"
  }]
}

```
