Instance: ror-sp-additional-bed-type
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-additional-bed-type"
* name = "RORSPAdditionalBedType"
* status = #active
* description = "Paramètre de recherche pour récupérer les types des lits disponnibles"
* code = #additional-bed-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-supported-capacity').extension(url='additionalBedType').valueCode"