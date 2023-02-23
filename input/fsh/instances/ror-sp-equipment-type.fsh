Instance: ror-sp-equipment-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPEquipmentType"
* description = "Paramètre de recherche pour récupérer le type d'un equipement."
* code = #equipment-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-location-equipment').extension(url='equipmentType').valueCodeableConcept"