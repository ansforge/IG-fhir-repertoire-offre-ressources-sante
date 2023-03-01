Instance: ror-sp-equipment-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPEquipmentType"
* description = "Paramètre de recherche pour récupérer le type d'un équipement."
* code = #equipment-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror30/StructureDefinition/ror-location-equipment').extension(url='equipmentType').valueCodeableConcept"