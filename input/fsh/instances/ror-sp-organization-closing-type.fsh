Instance: ror-sp-organization-closing-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "ROROrganizationClosingType"
* description = "Paramètre de recherche décrivant le type de fermeture de l'entité géographique, au sens des règles de gestion du SI FINESS"
* code = #closing-type
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror30/StructureDefinition/ror-period-closing-type').extension(url='closingType').valueCodeableConcept"