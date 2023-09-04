Instance: ror-sp-capacity-status
InstanceOf: SearchParameter
Usage: #definition
* status = #active 
* name = "RORSPCapacityStatus"
* description = "Paramètre de recherche pour récupérer le statut de la capacité."
* code = #capacity-status
* base = #Location
* type = #token
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension.where(url='capacityStatus').valueCode"
