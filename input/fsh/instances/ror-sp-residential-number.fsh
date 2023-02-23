Instance: ror-sp-residential-number
InstanceOf: SearchParameter
Usage: #definition
* status = #active 
* name = "RORSPResidentialNumber"
* description = "Paramètre de recherche pour récupérer le nombre d'habitation"
* code = #residential-number
* base = #Location
* type = #number
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ROR_ResidentialCapacity').extension(url='residentialNumber').valueInteger"