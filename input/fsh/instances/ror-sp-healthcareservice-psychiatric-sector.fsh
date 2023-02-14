Instance: ror-sp-healthcareservice-psychiatric-sector
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServicePsychiatricSector"

* date = "2022-06-09T00:00:00+02:00"

* description = "Paramètre de recherche décrivrant le secteur psychiatrique de l'unité élémentaire"
* code = #psychiatric-sector
* base = #HealthcareService
* type = #string
* expression = "HealthcareService.extension.where(url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-healthcareservice-psychiatric-sector').valueString"