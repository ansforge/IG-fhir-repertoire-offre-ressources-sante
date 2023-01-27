Instance: ror-sp-equipment-feature
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-equipment-feature"
* version = "3.0"
* name = "RORSPEquipmentFeature"
* status = #active
* date = "2022-10-06"
* publisher = "ANS"
* description = "Paramètre de recherche pour récupérer le type de caractéristique d'un equipement."
* code = #equipment-feature
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-equipement-limit').extension(url='equipementFeature').valueCodeableConcept"