Instance: ror-sp-gender-capacity-available
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-gender-capacity-available"
* version = "3.0"
* name = "RORSPGenderCapacityAvailable"
* status = #active
* date = "2022-10-06T00:00:00+02:00"
* publisher = "ANS"
* description = "Paramètre de recherche pour récupérer le genre disponnible de la capacité."
* code = #gender-capacity
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-supported-capacity').extension(url='genderCapacityAvailable').valueCode"