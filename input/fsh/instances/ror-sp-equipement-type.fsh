Instance: ror-sp-equipement-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPEquipementType"

* date = "2023-01-12T14:27:51+01:00"

* description = "Paramètre de recherche pour récupérer le type d'un equipement."
* code = #equipement-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-location-equipement').extension(url='equipementType').valueCodeableConcept"