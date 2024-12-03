Instance: ror-sp-healthcareservice-notavailable-closing-reopeningdate
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPHealthcareServiceNotAvailableClosingReopeningDate"
* description = "Paramètre de recherche pour rechercher la date dans la période de fermeture (during.start) et de réouverture prévisionnelle (during.end)."
* code = #notavailable-closing-reopeningdate
* base = #HealthcareService
* type = #date
* expression = "HealthcareService.notAvailable:closingReopeningDate.during"
* expression = "HealthcareService.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date').extension.where(url='HealthcareService.availableTime').value.as(Period)"
* comparator[0] = #eq
* comparator[+] = #ne
* comparator[+] = #gt
* comparator[+] = #ge
* comparator[+] = #lt
* comparator[+] = #le
* comparator[+] = #sa
* comparator[+] = #eb
* comparator[+] = #ap