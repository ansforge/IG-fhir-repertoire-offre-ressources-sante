Extension: RORCoordinateReliability
Id: ror-coordinate-reliability
Description: "Extension créée dans le cadre du ROR pour signaler si les informations des coordonnées géographiques sont issues d'un mode de production qui assure un certain niveau de fiabilité"
* ^context[0].type = #element
* ^context[=].expression = "Address"
* ^context[+].type = #element
* ^context[=].expression = "Location.position"
* ^context[+].type = #extension
* ^context[=].expression = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-eg-location"
* value[x] only boolean

