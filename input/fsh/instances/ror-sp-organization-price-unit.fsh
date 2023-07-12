Instance: ror-sp-organization-price-unit
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPOrganizationPriceUnit"
* description = "Paramètre de recherche sur l'unité de référence pour évaluer le prix des prestations et services"
* code = #price-unit
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price').extension(url='priceUnit').valueCodeableConcept"
