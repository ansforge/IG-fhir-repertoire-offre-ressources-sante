Extension: RORTelecomUsage
Id: ror-telecom-usage
Description: "Extension créée dans le cadre du ROR qui précise l'utilisation du canal de communication "
* ^context.type = #element
* ^context.expression = "ContactPoint"
* ^context.type = #extension
* ^context.expression = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact"
* value[x] only string