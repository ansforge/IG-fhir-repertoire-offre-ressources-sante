Instance: ror-sp-healthcareservice-period-end
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "ROROrganizationPeriodEnd"

* date = "2023-02-15T11:00:00+01:00"

* description = "Paramètre de recherche décrivant la date de fermeture de l'entité géographique"
* code = #period-end
* base = #Organization
* type = #date
* expression = "Organization.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-organization-period').extension(url='periodEnd').valueDate"