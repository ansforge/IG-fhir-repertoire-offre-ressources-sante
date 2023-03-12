Instance: ror-sp-capacity-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPCapacityType"
* description = "Paramètre de recherche pour récupérer la nature de la capacité."
* code = #capacity-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-supported-capacity').extension(url='capacityType').valueCode"