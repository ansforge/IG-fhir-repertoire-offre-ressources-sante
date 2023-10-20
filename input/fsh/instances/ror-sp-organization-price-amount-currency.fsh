Instance: ror-sp-organization-price-amount-currency
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPOrganizationPriceAmountCurrency"
* description = "Paramètre de recherche sur la devise du tarif des prestations et services"
* code = #price-amount-currency
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price').extension.where(url='amount').value.as(Money).currency"
