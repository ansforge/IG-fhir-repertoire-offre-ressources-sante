Extension: RORGeolocationLocation
Id: ror-location-geolocation
Title: "Geolocation"
Description: "The absolute geographic location of the Location, expressed using the WGS84 datum (This is the same co-ordinate system used in KML)."
* ^context[0].type = #element
* ^context[=].expression = "Address"
* ^context[+].type = #element
* ^context[=].expression = "Location.position"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    geodicSystem 1..1 and
    reliablePosition 0..*
* extension[geodicSystem].value[x] only string
* extension[reliablePosition].value[x] only boolean