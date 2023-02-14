Instance: ror-sp-location-near-insee-code
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "LocationNearINSEECode"

* date = "2022-08-04T00:00:00+02:00"

* description = "Paramètre de recherche similaire au paramètre spécial \"near\", à l'exception que celui-ci pointe sur l'adresse et non pas la position géographique"
* code = #near-insee-code
* base = #HealthcareService
* type = #special
* expression = "Location.address.extension.where(url='http://www.interopsante.org/fhir/structuredefinition/datatype/fr-address-insee-code').valueCode"