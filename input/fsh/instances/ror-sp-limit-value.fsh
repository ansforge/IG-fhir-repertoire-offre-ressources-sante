Instance: ror-sp-limit-value
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPLimitValue"
* description = "Paramètre de recherche pour récupérer la valeur limite (poids, taille, etc..) de l'équipement"
* code = #limit-value
* base = #Location
* type = #quantity
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit').extension(url='limitValue').valueQuantity"