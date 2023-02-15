Instance: ror-sp-equipment-feature
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPEquipmentFeature"

* date = "2023-01-12T14:27:51+01:00"

* description = "Paramètre de recherche pour récupérer le type de caractéristique d'un equipement."
* code = #equipment-feature
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-equipement-limit').extension(url='equipementFeature').valueCodeableConcept"