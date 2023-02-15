Instance: ror-sp-limit-value
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPLimitValue"

* date = "2023-01-12T14:27:51+01:00"

* description = "Paramètre de recherche pour récupérer la valeur limite"
* code = #limit-value
* base = #Location
* type = #quantity
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-equipement-limit').extension(url='limitValue').valueQuantity"