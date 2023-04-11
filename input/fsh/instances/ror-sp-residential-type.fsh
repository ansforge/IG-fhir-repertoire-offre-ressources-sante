Instance: ror-sp-residential-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPResidentialType"
* description = "Paramètre de recherche pour récupérer le type d'habitation"
* code = #residential-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-residential-capacity').extension(url='residentialType').valueCodeableConcept"
