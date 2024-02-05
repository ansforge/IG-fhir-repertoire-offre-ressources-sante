Instance: ror-sp-equipment-feature
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPEquipmentFeature"
* description = "Paramètre de recherche pour récupérer le type de caractéristique d'un equipement."
* code = #equipment-feature
* base = #Location
* type = #token
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit').extension.where(url='equipmentFeature').value.as(CodeableConcept)"
