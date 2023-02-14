Instance: ror-sp-temporality-capacity
InstanceOf: SearchParameter
Usage: #definition
* status = #active 
* date = "2023-01-12T14:27:51+01:00"
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-temporality-capacity"
* name = "RORSPTemporalityCapacity"
* description = "Paramètre de recherche pour récupérer les affectations temporaires"
* code = #temporality-capacity
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-supported-capacity').extension(url='temporalityCapacity').valueCode"