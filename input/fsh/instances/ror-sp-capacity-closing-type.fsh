Instance: ror-sp-capacity-closing-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active 
* date = "2023-01-12T14:27:51+01:00"
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-capacity-closing-type"
* name = "RORSPCapacityClosingType"
* description = "Paramètre de recherche pour récupérer le type de la fermeture de la capacité"
* code = #capacity-closing-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-supported-capacity').extension(url='capacityClosingType').valueCode"