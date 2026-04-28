Alias: $TRE-R30-RegionOM = https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM
Alias: $TRE-R244-CategorieOrganisation = https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation
Alias: $TRE-R247-UcumUniteMesure = https://mos.esante.gouv.fr/NOS/TRE_R247-UcumUniteMesure/FHIR/TRE-R247-UcumUniteMesure
Alias: $TRE-R238-OuvertureAnnuelle = https://mos.esante.gouv.fr/NOS/TRE_R238-OuvertureAnnuelle/FHIR/TRE-R238-OuvertureAnnuelle
Alias: $TRE-R252-TypeHoraire = https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire
Alias: $TRE-R253-TypeMaternite = https://mos.esante.gouv.fr/NOS/TRE_R253-TypeMaternite/FHIR/TRE-R253-TypeMaternite
Alias: $TRE-R355-TypeIdentifiantOffre = https://mos.esante.gouv.fr/NOS/TRE_R355-TypeIdentifiantOffre/FHIR/TRE-R355-TypeIdentifiantOffre

Instance: ror-healthcareservice-exemple
InstanceOf: RORHealthcareService
Usage: #example
Description: "Exemple de HealthcareService ROR - Unité hospitalière de gynécologie (Chirurgie gynécologique - HC)"

* id = "1234564"
* meta.lastUpdated = "2025-04-08T13:05:27.000+00:00"
* meta.tag[codeRegion] = $TRE-R30-RegionOM#06
* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice"

* extension[ror-meta-creation-date].valueDateTime = "2017-11-27T17:12:28+00:00"
* extension[ror-healthcareservice-sensitive-unit].valueBoolean = false
* extension[ror-meta-questionnaire-used-as-a-template].valueCanonical = "https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/MS-141|1"

* extension[ror-healthcareservice-patient-type].extension[ageRange].valueRange.low.value = 15
* extension[ror-healthcareservice-patient-type].extension[ageRange].valueRange.low.system = $TRE-R247-UcumUniteMesure
* extension[ror-healthcareservice-patient-type].extension[ageRange].valueRange.low.code = #a
* extension[ror-healthcareservice-patient-type].extension[ageRange].valueRange.high.value = 150
* extension[ror-healthcareservice-patient-type].extension[ageRange].valueRange.high.system = $TRE-R247-UcumUniteMesure
* extension[ror-healthcareservice-patient-type].extension[ageRange].valueRange.high.code = #a

* extension[ror-healthcareservice-contact].extension[purposeContact].valueCodeableConcept = $TRE-R287-NatureContact#06 "Standard"
* extension[ror-healthcareservice-contact].extension[ror-confidentiality-level].valueCodeableConcept = $TRE-R283-NiveauConfidentialite#1 "Accès libre"
* extension[ror-healthcareservice-contact].extension[ror-healthcareservice-contact-telecom].extension[ror-telecom-communication-channel].valueCodeableConcept = $TRE-R200-CanalCommunication#2 "Téléphone fixe"
* extension[ror-healthcareservice-contact].extension[ror-healthcareservice-contact-telecom].extension[ror-telecom-confidentiality-level].valueCodeableConcept = $TRE-R283-NiveauConfidentialite#1 "Accès libre"
* extension[ror-healthcareservice-contact].extension[ror-healthcareservice-contact-telecom].extension[telecomAddress].valueString = "0123456789"

* identifier.type = $TRE-R355-TypeIdentifiantOffre#35 "Identifiant fonctionnel de l'offre connu par l'instance ROR"
* identifier.value = "06/0099999"

* providedBy = Reference(Organization/999999)
* category = $TRE-R244-CategorieOrganisation#157 "Unité hospitalière de gynécologie"
* type = $TRE_R227-ChampActivite#01 "Médecine, Chirurgie, Obstétrique (MCO)"
* specialty[operationalActivity] = $TRE-R211-ActiviteOperationnelle#022 "Chirurgie gynécologique"
* location = Reference(Location/888888)
* name = "5812  Chirurgie gynécologique - HOSPITALISATION COMPLETE"

* characteristic[careMode] = $TRE-R213-ModePriseEnCharge#28 "Hospitalisation complète (HC)"
* characteristic[annualOpening] = $TRE-R238-OuvertureAnnuelle#02 "Semaine et week-end (de 211 à 364 jours par an)"
* characteristic[+] = $TRE-R253-TypeMaternite#04 "Maternité de type 3"

* availableTime[+].extension[ror-available-time-number-days-of-week].valueInteger = 1
* availableTime[=].extension[ror-available-time-effective-opening-closing-date].valuePeriod.start = "2025-04-08"
* availableTime[=].extension[ror-available-time-type-of-time].valueCodeableConcept = $TRE-R252-TypeHoraire#01 "Horaire d'ouverture"
* availableTime[=].daysOfWeek = #mon
* availableTime[=].availableStartTime = "00:00:00"
* availableTime[=].availableEndTime = "23:59:00"

* availableTime[+].extension[ror-available-time-number-days-of-week].valueInteger = 2
* availableTime[=].extension[ror-available-time-effective-opening-closing-date].valuePeriod.start = "2025-04-08"
* availableTime[=].extension[ror-available-time-type-of-time].valueCodeableConcept = $TRE-R252-TypeHoraire#01 "Horaire d'ouverture"
* availableTime[=].daysOfWeek = #tue
* availableTime[=].availableStartTime = "00:00:00"
* availableTime[=].availableEndTime = "23:59:00"

* availableTime[+].extension[ror-available-time-number-days-of-week].valueInteger = 3
* availableTime[=].extension[ror-available-time-effective-opening-closing-date].valuePeriod.start = "2025-04-08"
* availableTime[=].extension[ror-available-time-type-of-time].valueCodeableConcept = $TRE-R252-TypeHoraire#01 "Horaire d'ouverture"
* availableTime[=].daysOfWeek = #wed
* availableTime[=].availableStartTime = "00:00:00"
* availableTime[=].availableEndTime = "23:59:00"

* availableTime[+].extension[ror-available-time-number-days-of-week].valueInteger = 4
* availableTime[=].extension[ror-available-time-effective-opening-closing-date].valuePeriod.start = "2025-04-08"
* availableTime[=].extension[ror-available-time-type-of-time].valueCodeableConcept = $TRE-R252-TypeHoraire#01 "Horaire d'ouverture"
* availableTime[=].daysOfWeek = #thu
* availableTime[=].availableStartTime = "00:00:00"
* availableTime[=].availableEndTime = "23:59:00"

* availableTime[+].extension[ror-available-time-number-days-of-week].valueInteger = 5
* availableTime[=].extension[ror-available-time-effective-opening-closing-date].valuePeriod.start = "2025-04-08"
* availableTime[=].extension[ror-available-time-type-of-time].valueCodeableConcept = $TRE-R252-TypeHoraire#01 "Horaire d'ouverture"
* availableTime[=].daysOfWeek = #fri
* availableTime[=].availableStartTime = "00:00:00"
* availableTime[=].availableEndTime = "23:59:00"

* availableTime[+].extension[ror-available-time-number-days-of-week].valueInteger = 6
* availableTime[=].extension[ror-available-time-effective-opening-closing-date].valuePeriod.start = "2025-04-08"
* availableTime[=].extension[ror-available-time-type-of-time].valueCodeableConcept = $TRE-R252-TypeHoraire#01 "Horaire d'ouverture"
* availableTime[=].daysOfWeek = #sat
* availableTime[=].availableStartTime = "00:00:00"
* availableTime[=].availableEndTime = "23:59:00"

* availableTime[+].extension[ror-available-time-number-days-of-week].valueInteger = 7
* availableTime[=].extension[ror-available-time-effective-opening-closing-date].valuePeriod.start = "2025-04-08"
* availableTime[=].extension[ror-available-time-type-of-time].valueCodeableConcept = $TRE-R252-TypeHoraire#01 "Horaire d'ouverture"
* availableTime[=].daysOfWeek = #sun
* availableTime[=].availableStartTime = "00:00:00"
* availableTime[=].availableEndTime = "23:59:00"
