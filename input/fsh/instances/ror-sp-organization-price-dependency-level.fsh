Instance: ror-sp-organization-price-dependency-level
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPOrganizationPriceDependecyLevel"
* description = "Paramètre de recherche sur le niveau de dépendance de la personne âgée accueillie"
* code = #price-dependency-level
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price').extension(url='dependencyLevel').valueCodeableConcept"
