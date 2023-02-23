Instance: ror-sp-location-commune-cog //TODO à revoir selon communecog
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPLocationCommuneCOG"
* description = "Paramètre de recherche sur le code officiel géographique (cog) de la commune dans laquelle le lieu est situé"
* code = #commune-cog
* base = #Location
* type = #token
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror30/StructureDefinition/ror-commune-cog').valueCodeableConcept"