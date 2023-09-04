Instance: ror-sp-organization-price-residential-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPOrganizationPriceResidentialType"
* description = "Paramètre de recherche sur les caractéristiques de l'hébergement"
* code = #price-residential-type
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price').extension.where(url='residentialType').valueCodeableConcept"
