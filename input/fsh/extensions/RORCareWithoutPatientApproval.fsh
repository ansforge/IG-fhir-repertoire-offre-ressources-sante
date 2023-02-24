Extension: RORCareWithoutPatientApproval
Id: ror-care-without-patient-approval
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^date = "2022-07-04"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* . ..1
* value[x] only boolean