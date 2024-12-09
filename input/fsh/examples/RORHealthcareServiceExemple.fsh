Alias: $TRE-R227-ChampActivite = https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite
Alias: $TRE-R211-ActiviteOperationnelle = https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle
Alias: $TRE-R213-ModePriseEnCharge = https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge
Alias: $TRE-R210-ActeSpecifique = https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique
Alias: $TRE-R252-TypeHoraire = https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire
Alias: $TRE-R287-NatureContact = https://mos.esante.gouv.fr/NOS/TRE_R287-NatureContact/FHIR/TRE-R287-NatureContact
Alias: $TRE-R283-NiveauConfidentialite = https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite
Alias: $ror-telecom-communication-channel = https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel

Instance: ror-healthcareservice-exemple
InstanceOf: RORHealthcareService
Usage: #example
Description: "Exemple basique pour RORHealthcareService décrivant une offre de ville, mais n'ayant pas forcément de cohérence fonctionnelle"

* meta
  * profile = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice"
  * lastUpdated = "2023-12-20T10:00:00+01:00"
* name = "Hospitalisation complète de Neurochirurgie"
* providedBy = Reference(Organization/5958)
* location = Reference(Location/5253)
* identifier
  * use = #official
  * system = "urn:ietf:rfc:3986"
  * value = "ZZZ"
* type = $TRE-R227-ChampActivite#01 "Médecine, Chirurgie, Obstétrique (MCO)"
* specialty[0] = $TRE-R211-ActiviteOperationnelle#183 "Traitement neurochirurgical de la douleur"
* specialty[+] = $TRE-R211-ActiviteOperationnelle#440 "Chirurgie intracrânienne"
* characteristic[0] = $TRE-R213-ModePriseEnCharge#28 "Hospitalisation complète (HC)"
* characteristic[+] = $TRE-R210-ActeSpecifique#0320 "Neuromodulation sacrée"
* availableTime[0]
  * allDay = true
  * extension[0]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"
    * valueCodeableConcept = $TRE-R252-TypeHoraire#02 "Horaire de fonctionnement"
  * extension[+]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
    * valueInteger = 1
* availableTime[+]
  * allDay = true
  * extension[0]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"
    * valueCodeableConcept = $TRE-R252-TypeHoraire#02 "Horaire de fonctionnement"
  * extension[+]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
    * valueInteger = 2
* availableTime[+]
  * allDay = true
  * extension[0]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"
    * valueCodeableConcept = $TRE-R252-TypeHoraire#02 "Horaire de fonctionnement"
  * extension[+]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
    * valueInteger = 3
* availableTime[+]
  * allDay = true
  * extension[0]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"
    * valueCodeableConcept = $TRE-R252-TypeHoraire#02 "Horaire de fonctionnement"
  * extension[+]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
    * valueInteger = 4
* availableTime[+]
  * allDay = true
  * extension[0]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"
    * valueCodeableConcept = $TRE-R252-TypeHoraire#02 "Horaire de fonctionnement"
  * extension[+]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
    * valueInteger = 5
* availableTime[+]
  * allDay = true
  * extension[0]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"
    * valueCodeableConcept = $TRE-R252-TypeHoraire#02 "Horaire de fonctionnement"
  * extension[+]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
    * valueInteger = 6
* availableTime[+]
  * allDay = true
  * extension[0]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time"
    * valueCodeableConcept = $TRE-R252-TypeHoraire#02 "Horaire de fonctionnement"
  * extension[+]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
    * valueInteger = 7
* extension[0]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date"
  * valueDateTime = "2023-12-09T14:30:00+01:00"
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit"
  * valueBoolean = false
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type"
  * extension
    * url = "ageRange"
    * valueRange
      * low.value = 18
      * high.value = 90
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact"
  * extension[0]
    * url = "purposeContact"
    * valueCodeableConcept = $TRE-R287-NatureContact#06 "Standard"
  * extension[+]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level"
    * valueCodeableConcept = $TRE-R283-NiveauConfidentialite#1 "Accès libre"
  * extension[+]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom"
    * extension[0]
      * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel"
      * valueCodeableConcept = $ror-telecom-communication-channel#2 "Téléphone fixe"
    * extension[+]
      * url = "telecomAddress"
      * valueString = "01.01.01.01.02"
    * extension[+]
      * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality level"
      * valueCodeableConcept = $TRE-R283-NiveauConfidentialite#1 "Accès libre"
/** meta
  * lastUpdated = "2023-12-20T10:00:00+01:00"
  * profile = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice"
* extension[0]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date"
  * valueDateTime = "2023-12-09T14:30:00+01:00"
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit"
  * valueBoolean = false
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type"
  * extension
    * url = "ageRange"
    * valueRange
      * low.value = 18
      * high.value = 90
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact"
  * extension[0]
    * url = "purposeContact"
    * valueCodeableConcept = $TRE-R287-NatureContact#06 "Standard"
  * extension[+]
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level"
    * valueCodeableConcept = $TRE-R283-NiveauConfidentialite#1 "Accès libre"
* identifier
  * system = "https://example.org/identifier-system"
  * value = "ZZZ"
* providedBy = Reference(Organization/5958)
* type = $TRE-R227-ChampActivite#01 "Médecine, Chirurgie, Obstétrique (MCO)"
* specialty[operationalActivity].coding.system = $TRE-R211-ActiviteOperationnelle
* specialty[operationalActivity].coding.code = #183
* specialty[operationalActivity].coding.display = "Traitement neurochirurgical de la douleur"
* location = Reference(Location/5253)
* name = "Hospitalisation complète de Neurochirurgie"
* characteristic[careMode].coding.system = $TRE-R213-ModePriseEnCharge
* characteristic[careMode].coding.code = #28
* characteristic[careMode].coding.display = "Hospitalisation complète (HC)"
* characteristic[specificAct].coding.system = $TRE-R210-ActeSpecifique
* characteristic[specificAct].coding.code = #0320
* characteristic[specificAct].coding.display = "Neuromodulation sacrée"
* characteristic[specificAct].extension[ror-act-type].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"
* characteristic[specificAct].extension[ror-act-type].valueCode = #specificAct */