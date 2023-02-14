Instance: ror-sp-equipment-feature
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-equipment-feature"
* name = "RORSPEquipmentFeature"
* status = #active
* description = "Paramètre de recherche pour récupérer le type de caractéristique d'un equipement."
* code = #equipment-feature
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-equipement-limit').extension(url='equipementFeature').valueCodeableConcept"