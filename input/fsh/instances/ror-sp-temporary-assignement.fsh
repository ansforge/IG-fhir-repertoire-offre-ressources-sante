Instance: ror-sp-temporary-assignement
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-temporary-assignement"
* version = "3.0"
* name = "RORSPTemporaryAssignement"
* status = #active
* date = "2022-10-05T00:00:00+02:00"
* publisher = "ANS"
* description = "Paramètre de recherche pour récupérer les affectations temporaires"
* code = #temporary-assignement
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-supported-capacity').extension(url='temporaryAssignement').valueCodeableConcept"