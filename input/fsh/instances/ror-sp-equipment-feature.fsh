Instance: ror-sp-equipment-feature
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPEquipmentFeature"
* description = "Paramètre de recherche pour récupérer le type de caractéristique d'un equipement."
* code = #equipment-feature
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-equipement-limit').extension(url='equipementFeature').valueCodeableConcept"