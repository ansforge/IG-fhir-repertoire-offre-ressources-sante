Instance: ror-sp-capacity-closing-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active 
* name = "RORSPCapacityClosingType"

* date = "2023-01-12T14:27:51+01:00"

* description = "Paramètre de recherche pour récupérer le type de la fermeture de la capacité"
* code = #capacity-closing-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-supported-capacity').extension(url='capacityClosingType').valueCode"