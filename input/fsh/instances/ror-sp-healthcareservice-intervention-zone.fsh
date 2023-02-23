Instance: ror-sp-healthcareservice-intervention-zone
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceInterventionZone"
* description = "Paramètre de recherche décrivant la zone d'intervention"
* code = #intervention-zone
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror30StructureDefinition/ror-healthcareservice-intervention-zone').extension(url='interventionZone').valueCodeableConcept"