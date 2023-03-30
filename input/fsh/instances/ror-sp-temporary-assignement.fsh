Instance: ror-sp-temporary-assignement
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPTemporaryAssignement"
* description = "Paramètre de recherche pour récupérer les affectations temporaires"
* code = #temporary-assignement
* base = #Location
* type = #token
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity').extension(url='temporaryAssignement').valueCodeableConcept"