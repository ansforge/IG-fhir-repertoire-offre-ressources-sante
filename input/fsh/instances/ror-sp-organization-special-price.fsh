Instance: ror-sp-organization-special-price
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPOrganizationSpecialPrice"
* description = "Paramètre de recherche sur la condition tarifaire"
* code = #special-price
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price').extension.where(url='dependencyLevel').value.as(CodeableConcept)"
