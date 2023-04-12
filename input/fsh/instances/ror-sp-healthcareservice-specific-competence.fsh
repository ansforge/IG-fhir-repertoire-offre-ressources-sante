Instance: ror-sp-healthcareservice-specific-competence
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceSpecificCompetence"
* description = "Paramètre de recherche permettant de pointer sur la compétence spécifique"
* code = #specific-competence
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://interop.esante.gouv.fr/ig/fhir/ror30/StructureDefinition/ror-healthcareservice-competence-ressource').extension(url='specificCompetence').valueCode"