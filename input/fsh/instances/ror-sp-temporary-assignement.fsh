Instance: ror-sp-temporary-assignement
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPTemporaryAssignement"

* date = "2023-01-12T14:27:51+01:00"

* description = "Paramètre de recherche pour récupérer les affectations temporaires"
* code = #temporary-assignement
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-supported-capacity').extension(url='temporaryAssignement').valueCodeableConcept"