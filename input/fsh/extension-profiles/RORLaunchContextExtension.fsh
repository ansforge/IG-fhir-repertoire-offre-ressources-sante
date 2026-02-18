Profile: RORLaunchContextExtension
Parent: LaunchContextExtension
Id: ror-launchcontext
Title: "Profil de LaunchContextExtension créée dans le cadre du ROR afin d'ajouter le name 'ror-structure' acceptant les ressources FHIR 'Organization', 'HealthcareService' et 'Location'"
Description: "Profil de l'extension http://hl7.org/fhir/uv/sdc/StructureDefinition-sdc-questionnaire-launchContext.html créé dans le cadre du ROR afin d'ajouter le name 'structure' acceptant les ressources FHIR 'Organization', 'HealthcareService' et 'Location'"

//https://github.com/HL7/sdc/blob/master/input/fsh/extensions/LaunchContextExtension.fsh
* obeys ror-inv-1
* extension[name] only Extension
  * value[x] from RORLaunchContextVS (extensible)

Invariant: ror-inv-1
Description: "Types must be from the specified value set of resource types based on name ror-structure: Location, HealthcareServive, Organization"
Severity: #error
Expression: "(extension('name').value.where(code='ror-structure' and system='http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext').exists() implies extension('type').all(value='Location' or value='HealthcareService' or value='Organization'))"
XPath: "(not(f:extension[@url='name' and f:valueCoding[f:code/@value='ror-structure' and f:system/@value='http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext']]) or not(f:extension[@url='type' and f:valueCode/@value!=('Location','HealthcareService','Organization')]))"