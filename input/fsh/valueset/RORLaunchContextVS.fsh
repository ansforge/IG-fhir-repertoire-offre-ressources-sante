ValueSet: RORLaunchContextVS
Id: ror-launch-context-vs
Title: "Value Set pour le contexte standard du lancement d'un questionnaire dans le cadre du ROR"
Description: "Extension du Value Set https://hl7.org/fhir/uv/sdc/ValueSet-launchContext.html afin de l'adapter au contexte de lancement des questionnaires dans le cadre du ROR"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = true
* include codes from system $launch-context
* include codes from system ror-launch-context-codesystem