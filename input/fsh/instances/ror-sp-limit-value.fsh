Instance: ror-sp-limit-value
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-limit-value"
* name = "RORSPLimitValue"
* status = #active
* description = "Paramètre de recherche pour récupérer la valeur limite"
* code = #limit-value
* base = #Location
* type = #quantity
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-equipement-limit').extension(url='limitValue').valueQuantity"