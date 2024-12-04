Alias: $TRE-R227-ChampActivite = https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite
Alias: $TRE-R211-ActiviteOperationnelle = https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle
Alias: $TRE-R213-ModePriseEnCharge = https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge
Alias: $TRE-R252-TypeHoraire = https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire
Alias: $TRE-R287-NatureContact = https://mos.esante.gouv.fr/NOS/TRE_R287-NatureContact/FHIR/TRE-R287-NatureContact
Alias: $TRE-R283-NiveauConfidentialite = https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite
Alias: $ror-telecom-communication-channel = https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel

Instance: ror-healthcareservice-exemple-ville
InstanceOf: RORHealthcareService
Usage: #example
Description: "Exemple basique pour RORHealthcareService décrivant une offre de ville, mais n'ayant pas forcément de cohérence fonctionnelle"

* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice"
* meta.lastUpdated = "2023-12-20T10:00:00+01:00"
* name = "Cabinet du Dr Julie JOURDIN"
* providedBy = Reference(Organization/4947)
* location = Reference(Location/1215)
* identifier.value = "ZZZ"
* type = $TRE-R227-ChampActivite#05 "Ville"
* specialty[operationalActivity] = $TRE-R211-ActiviteOperationnelle#437 "Médecine générale"
* characteristic[careMode] = $TRE-R213-ModePriseEnCharge#32 "Consultation (CS)"
* availableTime[0].availableStartTime = "09:00:00"
* availableTime[=].availableEndTime = "19:00:00"
* availableTime[=].extension[0].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"
* availableTime[=].extension[=].valueCodeableConcept = $TRE-R252-TypeHoraire#07 "Horaire de consultation sur RDV"
* availableTime[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
* availableTime[=].extension[=].valueInteger = 1
* availableTime[+].availableStartTime = "09:00:00"
* availableTime[=].availableEndTime = "19:00:00"
* availableTime[=].extension[0].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"
* availableTime[=].extension[=].valueCodeableConcept = $TRE-R252-TypeHoraire#07 "Horaire de consultation sur RDV"
* availableTime[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
* availableTime[=].extension[=].valueInteger = 2
* availableTime[+].availableStartTime = "09:00:00"
* availableTime[=].availableEndTime = "19:00:00"
* availableTime[=].extension[0].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"
* availableTime[=].extension[=].valueCodeableConcept = $TRE-R252-TypeHoraire#07 "Horaire de consultation sur RDV"
* availableTime[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
* availableTime[=].extension[=].valueInteger = 3
* availableTime[+].availableStartTime = "09:00:00"
* availableTime[=].availableEndTime = "19:00:00"
* availableTime[=].extension[0].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"
* availableTime[=].extension[=].valueCodeableConcept = $TRE-R252-TypeHoraire#07 "Horaire de consultation sur RDV"
* availableTime[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
* availableTime[=].extension[=].valueInteger = 4
* availableTime[+].availableStartTime = "14:00:00"
* availableTime[=].availableEndTime = "19:00:00"
* availableTime[=].extension[0].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"
* availableTime[=].extension[=].valueCodeableConcept = $TRE-R252-TypeHoraire#07 "Horaire de consultation sur RDV"
* availableTime[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
* availableTime[=].extension[=].valueInteger = 5
* availableTime[+].availableStartTime = "09:00:00"
* availableTime[=].availableEndTime = "12:00:00"
* availableTime[=].extension[0].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"
* availableTime[=].extension[=].valueCodeableConcept = $TRE-R252-TypeHoraire#06 "Horaire de consultation sans RDV"
* availableTime[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
* availableTime[=].extension[=].valueInteger = 5
* extension[0].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date"
* extension[=].valueDateTime = "2023-12-09T14:30:00+01:00"
* extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit"
* extension[=].valueBoolean = false
* extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type"
* extension[=].extension.url = "ageRange"
* extension[=].extension.valueRange.low.value = 0
* extension[=].extension.valueRange.high.value = 120
* extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact"
* extension[=].extension[0].url = "purposeContact"
* extension[=].extension[=].valueCodeableConcept = $TRE-R287-NatureContact#02 "Prise de rendez-vous"
* extension[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level"
* extension[=].extension[=].valueCodeableConcept = $TRE-R283-NiveauConfidentialite#1 "Accès libre"
* extension[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom"
* extension[=].extension[=].extension[0].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel"
* extension[=].extension[=].extension[=].valueCodeableConcept = $ror-telecom-communication-channel#2 "Téléphone fixe"
* extension[=].extension[=].extension[+].url = "telecomAddress"
* extension[=].extension[=].extension[=].valueString = "01.01.01.01.01"
* extension[=].extension[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level"
* extension[=].extension[=].extension[=].valueCodeableConcept = $TRE-R283-NiveauConfidentialite#1 "Accès libre"