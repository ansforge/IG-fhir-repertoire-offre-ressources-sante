Alias: $TRE-R287-NatureContact = https://mos.esante.gouv.fr/NOS/TRE_R287-NatureContact/FHIR/TRE-R287-NatureContact
Alias: $TRE-R283-NiveauConfidentialite = https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite
Alias: $TRE-R227-ChampActivite = https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite
Alias: $TRE-R211-ActiviteOperationnelle = https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle
Alias: $TRE-R213-ModePriseEnCharge = https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge
Alias: $TRE-R210-ActeSpecifique = https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique

Instance: ror-healthcareservice-exemple
InstanceOf: RORHealthcareService
Usage: #example
* meta
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
  * system = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/identifier"
  * value = "ZZZ"
* providedBy = Reference(Organization/5958)
* type = $TRE-R227-ChampActivite#01 "Médecine, Chirurgie, Obstétrique (MCO)"
* specialty = $TRE-R211-ActiviteOperationnelle#183 "Traitement neurochirurgical de la douleur"
* location = Reference(Location/5253)
* name = "Hospitalisation complète de Neurochirurgie"
* characteristic[0].extension
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"
  * valueCodeableConcept = $TRE-R213-ModePriseEnCharge#28 "Hospitalisation complète (HC)"
* characteristic[+].extension
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"
  * valueCodeableConcept = $TRE-R210-ActeSpecifique#0320 "Neuromodulation sacrée"
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
* characteristic[0].coding.system = $TRE-R213-ModePriseEnCharge
* characteristic[=].
* characteristic[=].coding.code = #28
* characteristic[=].coding.display = "Hospitalisation complète (HC)"
* characteristic[=].extension.url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"
* characteristic[+].coding.system = $TRE-R210-ActeSpecifique
* characteristic[specificAct].coding.code = #0320
* characteristic[specificAct].coding.display = "Neuromodulation sacrée"
* characteristic[specificAct].extension[ror-act-type].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type"
* characteristic[specificAct].extension[ror-act-type].valueCode = #specificAct
*/