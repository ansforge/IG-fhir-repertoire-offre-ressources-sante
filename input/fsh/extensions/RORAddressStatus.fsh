Extension: RORAddressStatus
Id: ror-address-status
Description: "Extension créée dans le cadre du ROR pour indiquer si le lieu est opérationnel, fermé temporairement ou fermé définitivement."
* ^context.type = #element
* ^context.expression = "Organization.address"
* valueCodeableConcept from $JDV-J224-StatutLieu-ROR (required)