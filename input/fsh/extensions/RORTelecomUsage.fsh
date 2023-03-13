Extension: RORTelecomUsage
Id: ror-telecom-usage
Description: "Extension créée dans le cadre du ROR qui précise l'utilisation du canal de communication "
* ^context.type = #element
* ^context.expression = "ContactPoint"
* ^context.type = #extension
* ^context.expression = "https://interop.esante.gouv.fr/ig/fhir/ror30/StructureDefinition/ror-healthcareservice-contact"
* ^context.type = #extension
* ^context.expression = "https://interop.esante.gouv.fr/ig/fhir/ror30/StructureDefinition/ror-organization-eg-location"
* value[x] only string