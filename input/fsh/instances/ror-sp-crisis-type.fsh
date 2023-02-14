Instance: ror-sp-crisis-type
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-crisis-type"
* name = "RORSPCrisisType"
* status = #active
* description = "Paramètre de recherche pour récupérer le type de la crise"
* code = #crisis-type
* base = #Location
* type = #token
* expression = "Location.extensionwhere(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-supported-capacity').extension(url='crisisType').valueCode"