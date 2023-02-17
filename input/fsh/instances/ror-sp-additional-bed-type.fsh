Instance: ror-sp-additional-bed-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPAdditionalBedType"
* description = "Paramètre de recherche pour récupérer les types des lits disponnibles"
* code = #additional-bed-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-supported-capacity').extension(url='additionalBedType').valueCode"