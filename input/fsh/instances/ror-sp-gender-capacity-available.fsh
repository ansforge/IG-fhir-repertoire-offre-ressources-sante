Instance: ror-sp-gender-capacity-available
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPGenderCapacityAvailable"
* description = "Paramètre de recherche pour récupérer le genre disponible de la capacité."
* code = #gender-capacity
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-supported-capacity').extension(url='genderCapacityAvailable').valueCode"