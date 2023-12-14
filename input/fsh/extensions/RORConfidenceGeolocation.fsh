Extension: RORConfidenceGeolocation
Parent: $geolocation
Id: ror-confidence-geolocation
Description: "Extension créée dans le cadre du ROR. Il s'agit d'une information supplémentaire pour signaler si la longitude et la latitude sont fiables."
* ^context.type = #element
* ^context.expression = "Organization.address.extension"
* value[x] only boolean