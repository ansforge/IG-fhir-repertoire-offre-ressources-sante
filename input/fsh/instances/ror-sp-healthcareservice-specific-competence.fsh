Instance: ror-sp-healthcareservice-specific-competence
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceSpecificCompetence"

* date = "2022-08-04T00:00:00+02:00"

* description = "Paramètre de recherche permettant de pointer sur la compétence spécifique"
* code = #specific-competence
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-healthcareservice-competence-ressource').extension(url='specificCompetence').valueCode"