Instance: ror-sp-healthcareservice-intervention-zone
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceInterventionZone"
* description = "Paramètre de recherche décrivant la zone d'intervention"
* code = #intervention-zone
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-healthcareservice-intervention-zone').extension(url='interventionZone').valueCodeableConcept"