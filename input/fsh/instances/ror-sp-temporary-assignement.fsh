Instance: ror-sp-temporary-assignement
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-temporary-assignement"
* name = "RORSPTemporaryAssignement"
* status = #active
* description = "Paramètre de recherche pour récupérer les affectations temporaires"
* code = #temporary-assignement
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-supported-capacity').extension(url='temporaryAssignement').valueCodeableConcept"