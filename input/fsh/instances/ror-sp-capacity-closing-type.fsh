Instance: ror-sp-capacity-closing-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active 
* name = "RORSPCapacityClosingType"
* description = "Paramètre de recherche pour récupérer le type de la fermeture de la capacité"
* code = #capacity-closing-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror30/StructureDefinition/ror-location-supported-capacity').extension(url='capacityClosingType').valueCode"