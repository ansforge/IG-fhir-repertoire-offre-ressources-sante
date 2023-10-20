Instance: ror-sp-organization-price-welcome-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPOrganization"
* description = "Paramètre de recherche décrivant si le tarif s'applique à un hébergement permanent ou à un hébergement temporaire"
* code = #price-welcome-type
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-price').extension.where(url='welcomeType').value.as(CodeableConcept)"
