Extension: RORAddressDescription
Id: ror-address-description
Description: "Extension créée dans le cadre du ROR pour transmettre une description textuelle du lieu, indiquant comment l'atteindre."
* ^context.type = #element
* ^context.expression = "Organization.address"
* value[x] only string