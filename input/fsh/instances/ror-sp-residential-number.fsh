Instance: ror-sp-residential-number
InstanceOf: SearchParameter
Usage: #definition
* status = #active 
* date = "2023-01-12T14:27:51+01:00"
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-residential-number"
* name = "RORSPResidentialNumber"
* description = "Paramètre de recherche pour récupérer le nombre d'habitation"
* code = #residential-number
* base = #Location
* type = #number
* expression = "Location.extension.where(url='http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ROR_ResidentialCapacity').extension(url='residentialNumber').valueInteger"