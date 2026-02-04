CodeSystem: RORLaunchContextCodeSystem
Id: ror-launch-context-codesystem
Title: "Code System définissant le contexte standard du lancement d'un questionnaire dans le cadre du ROR"
Description: "Code System pour étendre http://hl7.org/fhir/uv/sdc/CodeSystem-launchContext.html afin de l'adapter au contexte de lancement des questionnaires dans le cadre du ROR"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^experimental = true
* ^caseSensitive = true 
* ^compositional = false
* ^content = #complete
* #ror-structure "ROR Structure" "Structure in context at launch time (FHIR Location, HealthcareService, Organization) "
