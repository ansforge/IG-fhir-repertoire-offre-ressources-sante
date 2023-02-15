Instance: ror-sp-healthcareservice-intervention-zone
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceInterventionZone"

* date = "2023-02-15T11:00:00+01:00"

* description = "Paramètre de recherche décrivant la zone d'intervention"
* code = #intervention-zone
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-healthcareservice-intervention-zone').extension(url='interventionZone').valueCodeableConcept"