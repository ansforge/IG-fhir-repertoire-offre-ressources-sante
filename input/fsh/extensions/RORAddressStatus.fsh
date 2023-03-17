Extension: RORAddressStatus
Id: ror-address-status
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "Organization.address"
* value[x] only CodeableConcept
* value[x] from $JDV-J224-StatutLieu-ROR (required)