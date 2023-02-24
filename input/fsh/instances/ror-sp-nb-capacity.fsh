Instance: ror-sp-nb-capacity
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-nb-capacity"
* version = "3.0"
* name = "RORSPNbCapacity"
* status = #active
* date = "2022-10-06T00:00:00+02:00"
* description = "Paramètre de recherche pour récupérer le nombre de la capacité."
* code = #nb-capacity
* base = #Location
* type = #number
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-supported-capacity').extension(url='NbCapacity').valueInteger"