Instance: ror-sp-organization-oi-name
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPOrganizationOIName"
* description = "Paramètre de recherche sur le nom de l'organisation interne"
* code = #oi-name
* base = #Organization
* type = #string
* expression = "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror30/StructureDefinition/ror-organization-oi-name').valueString"