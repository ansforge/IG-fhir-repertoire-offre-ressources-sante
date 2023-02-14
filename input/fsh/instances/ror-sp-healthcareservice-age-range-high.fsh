Instance: ror-sp-healthcareservice-age-range-high
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceAgeRangeHigh"
* date = "2022-06-09T00:00:00+02:00"
* description = "Paramètre de recherche décrivant l'age maximum de la patientèle"
* code = #age-range-high
* base = #HealthcareService
* type = #quantity
* expression = "HealthcareService.extension.where(url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-healthcareservice-patient-type').extension(url = 'ageRange').valueRange.high"
* comparator[0] = #eq
* comparator[+] = #ne
* comparator[+] = #gt
* comparator[+] = #lt
* comparator[+] = #ge
* comparator[+] = #le
* comparator[+] = #sa
* comparator[+] = #eb
* comparator[+] = #ap