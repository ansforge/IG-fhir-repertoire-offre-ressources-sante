Instance: ror-sp-capacity-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPCapacityType"
* description = "Paramètre de recherche pour récupérer la nature de la capacité."
* code = #capacity-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension(url='capacityType').valueCode"