Instance: ror-sp-additional-bed-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPAdditionalBedType"
* description = "Paramètre de recherche pour récupérer les types des lits disponnibles"
* code = #additional-bed-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension(url='additionalBedType').valueCode"