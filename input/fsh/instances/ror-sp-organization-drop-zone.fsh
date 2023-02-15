Instance: ror-sp-organization-drop-zone
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPOrganizationDropZone"

* date = "2022-08-04T00:00:00+02:00"

* description = "Paramètre de recherche permettant d'indiquer s'il y a une zone poser sur le site concerné"
* code = #drop-zone
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-drop-zone').valueBoolean"