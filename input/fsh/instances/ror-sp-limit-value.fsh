Instance: ror-sp-limit-value
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPLimitValue"
* description = "Paramètre de recherche pour récupérer la valeur limite"
* code = #limit-value
* base = #Location
* type = #quantity
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror30StructureDefinition/ror-equipment-limit').extension(url='limitValue').valueQuantity"