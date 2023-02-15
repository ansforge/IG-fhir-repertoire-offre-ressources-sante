Instance: ror-sp-nb-capacity
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPNbCapacity"

* date = "2023-01-12T14:27:51+01:00"

* description = "Paramètre de recherche pour récupérer le nombre de la capacité."
* code = #nb-capacity
* base = #Location
* type = #number
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-supported-capacity').extension(url='NbCapacity').valueInteger"