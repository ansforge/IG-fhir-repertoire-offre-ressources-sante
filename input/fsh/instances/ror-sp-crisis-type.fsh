Instance: ror-sp-crisis-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPCrisisType"
* description = "Paramètre de recherche pour récupérer le type de la crise"
* code = #crisis-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension.where(url='crisisType').value.as(code)"
