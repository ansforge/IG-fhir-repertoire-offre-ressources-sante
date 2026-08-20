Extension: RORHealthcareServicePatientType
Id: ror-healthcareservice-patient-type
Description: "Extension créée dans le cadre du ROR pour décrire un ensemble de personnes qui répondent à des critères leur permettant de  bénéficier de la prestation décrite"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    supportedPatientInfo 0..* and
    ageRange 1..1
* extension[supportedPatientInfo].value[x] only CodeableConcept
* extension[supportedPatientInfo].valueCodeableConcept from $JDV-J29-PublicPrisEnCharge-ROR (required)
* extension[ageRange].value[x] only Range
* extension[ageRange].value[x].low 1..1
* extension[ageRange].value[x].low.system 1..1
* extension[ageRange].value[x].low.system = "http://unitsofmeasure.org" (exactly)
* extension[ageRange].value[x].low.code 1..1
* extension[ageRange].value[x].low.code from $JDV-J37-UcumUniteTemps (required)

* extension[ageRange].value[x].high 1..1
* extension[ageRange].value[x].high.system 1..1
* extension[ageRange].value[x].high.system = "http://unitsofmeasure.org" (exactly)
* extension[ageRange].value[x].high.code 1..1
* extension[ageRange].value[x].high.code from $JDV-J37-UcumUniteTemps (required)


Mapping:  ConceptMetier_RORHealthcareServicePatientType
Source:   RORHealthcareServicePatientType
Id:       specmetier-to-RORHealthcareServicePatientType
Title:    "Spécification métier vers l'extension ROR HealthcareServicePatientType"
* -> "Patientele"
