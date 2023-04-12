Extension: ROROrganizationAccessibilityLocation
Id: ror-organization-accessibility-location
Description: "Extension créée dans le cadre du ROR qui précise dans quelle mesure les locaux sont conformes aux dispositions règlementaires relatives à l’accessibilité des établissements recevant du public. "
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J50-AccessibiliteLieu-ROR (required)