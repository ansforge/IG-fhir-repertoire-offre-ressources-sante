Instance: ror-sp-healthcareservice-age-range-low
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceAgeRangeLow"
* description = "Paramètre de recherche décrivant l'age minimum de la patientèle"
* code = #age-range-low
* base = #HealthcareService
* type = #quantity
* expression = "HealthcareService.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type').extension.where(url = 'ageRange').value.as(Range).low"
* comparator[0] = #eq
* comparator[+] = #ne
* comparator[+] = #gt
* comparator[+] = #lt
* comparator[+] = #ge
* comparator[+] = #le
* comparator[+] = #sa
* comparator[+] = #eb
* comparator[+] = #ap