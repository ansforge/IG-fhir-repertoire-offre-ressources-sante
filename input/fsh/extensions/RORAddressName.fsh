Extension: RORAddressName
Id: ror-address-name
Description: "Extension créée dans le cadre du ROR pour décrire le nom du lieu sous la forme de texte"
* ^context.type = #element
* ^context.expression = "Organization.address"
* value[x] only string