Extension: RORGeolocationLocation
Parent: geolocation
Id: ror-location-geolocation
* ^context[0].type = #element
* ^context[=].expression = "Address"
* ^context[+].type = #element
* ^context[=].expression = "Location.position"
* ^context.type = #extension
* ^context.expression = "https://interop.esante.gouv.fr/ig/fhir/ror30/StructureDefinition/ror-organization-eg-location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    geodicSystem 1..1 and
    reliablePosition 0..*
* extension[geodicSystem].value[x] only string
* extension[reliablePosition].value[x] only boolean