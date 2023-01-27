Extension: RORResidentialCapacity
Id: ror-residential-capacity
Description: "Extension créée dans le cadre du ROR"
* ^version = "3.0"
* ^date = "2022-07-08"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    residentialType 1..1 and
    residentialNumber 0..1
* extension[residentialType].value[x] only CodeableConcept
* extension[residentialType].value[x] from $JDV-J32-TypeHabitation-ROR (required)
* extension[residentialNumber].value[x] only integer
//* value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage