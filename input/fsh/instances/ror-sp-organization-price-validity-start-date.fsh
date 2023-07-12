Instance: ror-sp-organization-price-validity-start-date
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPOrganizationPriceValidityStartDate"
* description = "Paramètre de recherche sur la dernière date de début de validité du tarif indiqué"
* code = #price-validity-start-date
* base = #Organization
* type = #date
* expression = "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization').extension(url='startDate').valueDate"
