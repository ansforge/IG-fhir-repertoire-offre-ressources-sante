Extension: ROROrganizationEGName
Id: ror-organization-eg-name
Description: "Extension créée dans le cadre du ROR pour désigner l'entité géographique (EG)."
* ^context.type = #element
* ^context.expression = "Organization"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    denomination 1..1 and
    additionalDenomination 0..1 and
    operationalName 0..1
* extension[denomination].value[x] only string
* extension[additionalDenomination].value[x] only string
* extension[operationalName].value[x] only string


