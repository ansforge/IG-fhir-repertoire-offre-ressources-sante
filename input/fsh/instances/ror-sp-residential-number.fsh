Instance: ror-sp-residential-number
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-residential-number"
* version = "3.0"
* name = "RORSPResidentialNumber"
* status = #active
* date = "2022-10-06"
* publisher = "ANS"
* description = "Paramètre de recherche pour récupérer le nombre d'habitation"
* code = #residential-number
* base = #Location
* type = #number
* expression = "Location.extension.where(url='http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ROR_ResidentialCapacity').extension(url='residentialNumber').valueInteger"