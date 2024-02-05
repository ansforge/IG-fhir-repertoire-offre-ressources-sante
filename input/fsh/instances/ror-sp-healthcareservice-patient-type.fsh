Instance: ror-sp-healthcareservice-patient-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceSupportedPatientType"
* description = "Paramètre de recherche décrivant le public pris en charge"
* code = #patient-type
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type').extension.where(url='supportedPatientInfo').value.as(CodeableConcept)"
