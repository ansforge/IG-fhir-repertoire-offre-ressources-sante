Instance: ror-sp-location-near-insee-code
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "LocationNearINSEECode"
* description = "Paramètre de recherche similaire au paramètre spécial \"near\", à l'exception que celui-ci pointe sur l'adresse et non pas la position géographique"
* code = #near-insee-code
* base = #Location
* type = #special
* expression = "Location.address.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/structuredefinition/datatype/fr-address-insee-code').valueCode"
