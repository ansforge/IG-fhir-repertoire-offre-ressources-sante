Instance: ror-sp-gender-capacity-available
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-gender-capacity-available"
* name = "RORSPGenderCapacityAvailable"
* status = #active
* description = "Paramètre de recherche pour récupérer le genre disponnible de la capacité."
* code = #gender-capacity
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-supported-capacity').extension(url='genderCapacityAvailable').valueCode"