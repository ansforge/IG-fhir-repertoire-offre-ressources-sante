Instance: ror-sp-organization-period-end
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "ROROrganizationPeriodEnd"
* description = "Paramètre de recherche décrivant la date de fermeture de l'entité géographique"
* code = #period-end
* base = #Organization
* type = #date
* expression = "Organization.extension.where(url='http://hl7.org/fhir/StructureDefinition/organization-period').valuePeriod.end"