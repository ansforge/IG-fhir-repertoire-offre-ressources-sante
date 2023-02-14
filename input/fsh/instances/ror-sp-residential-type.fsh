Instance: ror-sp-residential-type
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-residential-type"
* name = "RORSPResidentialType"
* status = #active
* description = "Paramètre de recherche pour récupérer le type d'habitation"
* code = #residential-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-residential-capacity').extension(url='residentialType').valueCodeableConcept"