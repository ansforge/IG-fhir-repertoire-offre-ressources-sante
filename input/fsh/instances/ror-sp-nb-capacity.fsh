Instance: ror-sp-nb-capacity
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-nb-capacity"
* name = "RORSPNbCapacity"
* status = #active
* description = "Paramètre de recherche pour récupérer le nombre de la capacité."
* code = #nb-capacity
* base = #Location
* type = #number
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-supported-capacity').extension(url='NbCapacity').valueInteger"