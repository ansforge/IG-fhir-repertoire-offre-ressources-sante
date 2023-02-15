Instance: ror-sp-healthcareservice-closing-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "ROROrganizationClosingType"

* date = "2023-02-15T11:00:00+01:00"

* description = "Paramètre de recherche décrivant le type de fermeture de l'entité géographique, au sens des règles de gestion du SI FINESS"
* code = #closing-type
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-period-closing-type').extension(url='closingType').valueCodeableConcept"