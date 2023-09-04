Instance: ror-sp-organization-price-amount-value
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPOrganizationPriceAmountValue"
* description = "Paramètre de recherche sur la valeur du tarif des prestations et services"
* code = #amount-value
* base = #Organization
* type = #number
* expression = "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price').extension.where(url='amount').value.as(Money).value"
