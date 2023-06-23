Instance: ror-sp-organization-price-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPOrganizationPriceType"
* description = "Paramètre de recherche sur le type de tarif"
* code = #price-type
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price').extension(url='priceType').valueCodeableConcept"
