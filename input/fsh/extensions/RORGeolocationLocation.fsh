Extension: RORGeolocationLocation
Id: ror-location-geolocation
Title: "Geolocation"
Description: "The absolute geographic location of the Location, expressed using the WGS84 datum (This    is the same co-ordinate system used in KML)."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^version = "3.0"
* ^date = "2013-12-05"
* ^publisher = "ANS"
* ^context[0].type = #element
* ^context[=].expression = "Address"
* ^context[+].type = #element
* ^context[=].expression = "Location.position"
* . ..1
* . ^short = "The absolute geographic location"
* . ^definition = "The absolute geographic location of the Location, expressed using the WGS84 datum (This        is the same co-ordinate system used in KML)."
* . ^comment = "The extension can be further extended to include unique geolocation identifiers, confidence,        altitude, etc."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    geodicSystem 1..1 and
    reliablePosition 0..*
* extension[geodicSystem].value[x] only string
* extension[reliablePosition] ^min = 0
* extension[reliablePosition].value[x] only boolean