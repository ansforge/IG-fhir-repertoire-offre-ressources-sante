Instance: ror-sp-location-commune-cog
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPLocationCommuneCOG"

* date = "2022-08-04T00:00:00+02:00"

* description = "Paramètre de recherche permettant d'indiquer s'il y a une zone poser sur le site concerné"
* code = #commune-cog
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-commune-cog').valueCodeableConcept"