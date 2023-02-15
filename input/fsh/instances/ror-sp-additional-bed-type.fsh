Instance: ror-sp-additional-bed-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPAdditionalBedType"

* date = "2023-01-12T14:27:51+01:00"

* description = "Paramètre de recherche pour récupérer les types des lits disponnibles"
* code = #additional-bed-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-supported-capacity').extension(url='additionalBedType').valueCode"