Instance: ror-sp-nb-capacity
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPNbCapacity"
* description = "Paramètre de recherche pour récupérer le nombre de la capacité."
* code = #nb-capacity
* base = #Location
* type = #number
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension.where(url='nbCapacity').valueInteger"
