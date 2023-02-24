Instance: ror-sp-organization-drop-zone
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPOrganizationDropZone"
* description = "Paramètre de recherche permettant d'indiquer s'il y a une zone poser sur le site concerné"
* code = #drop-zone
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror30/StructureDefinition/ror-organization-drop-zone').valueBoolean"