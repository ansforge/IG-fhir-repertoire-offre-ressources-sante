Instance: ror-sp-equipment-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPEquipmentType"
* description = "Paramètre de recherche pour récupérer le type d'un équipement."
* code = #equipment-type
* base = #Location
* type = #token
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment').extension.where(url='equipmentType').value.as(CodeableConcept)"
