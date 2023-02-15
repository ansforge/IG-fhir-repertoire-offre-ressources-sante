Instance: ror-sp-healthcareservice-equipment-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceEquipmentType"

* date = "2022-06-09T00:00:00+02:00"

* description = "Paramètre de recherche décrivant le type d'équipement de l'offre opérationnelle"
* code = #equipment-type
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url = 'http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-healthcareservice-equipement').extension(url = 'equipmentType').valueCodeableConcept"