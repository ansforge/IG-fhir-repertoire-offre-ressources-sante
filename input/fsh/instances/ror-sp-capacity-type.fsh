Instance: ror-sp-capacity-type
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-capacity-type"
* name = "RORSPCapacityType"
* status = #active
* description = "Paramètre de recherche pour récupérer la nature de la capacité."
* code = #capacity-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-supported-capacity').extension(url='capacityType').valueCode"