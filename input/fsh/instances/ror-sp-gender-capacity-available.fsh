Instance: ror-sp-gender-capacity-available
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPGenderCapacityAvailable"
* description = "Paramètre de recherche pour récupérer le genre disponible de la capacité."
* code = #gender-capacity-available
* base = #Location
* type = #token
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').where.extension(url='genderCapacityAvailable').valueCode"
