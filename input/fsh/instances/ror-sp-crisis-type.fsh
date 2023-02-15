Instance: ror-sp-crisis-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPCrisisType"

* date = "2023-01-12T14:27:51+01:00"

* description = "Paramètre de recherche pour récupérer le type de la crise"
* code = #crisis-type
* base = #Location
* type = #token
* expression = "Location.extensionwhere(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-supported-capacity').extension(url='crisisType').valueCode"