Instance: ror-sp-capacity-status
InstanceOf: SearchParameter
Usage: #definition
* status = #active 
* date = "2023-01-12T14:27:51+01:00"
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-capacity-status"
* name = "RORSPCapacityStatus"
* description = "Paramètre de recherche pour récupérer le statut de la capacité."
* code = #capacity-status
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-supported-capacity').extension(url='CapacityStatus').valueCode"