Alias: $JDV-J31-AideFinanciere-ROR = https://mos.esante.gouv.fr/NOS/JDV_J31-AideFinanciere-ROR/FHIR/JDV-J31-AideFinanciere-ROR
Alias: $TRE-G07-TypeIdentifiantStructure = https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure
Alias: $TRE-R66-CategorieEtablissement = https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement
Alias: $TRE-R283-NiveauConfidentialite = https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite
Alias: $TRE-R287-NatureContact = https://mos.esante.gouv.fr/NOS/TRE_R287-NatureContact/FHIR/TRE-R287-NatureContact
Alias: $TRE-R200-CanalCommunication = https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication

Instance: ror-organisation-exemple-eg
InstanceOf: ROROrganization
Usage: #example
* meta.lastUpdated = "2023-12-20T10:00:00+01:00"
* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization"
* extension[0].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date"
* extension[=].valueDateTime = "2023-12-09T14:30:00+01:00"
* extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-financial-help-type"
* extension[=].valueCodeableConcept = $JDV-J31-AideFinanciere-ROR#02 "Habilité Aide Sociale"
* extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-accomodation-family"
* extension[=].valueBoolean = false

* identifier[idNatSt].use = #official
* identifier[idNatSt].type = $TRE-G07-TypeIdentifiantStructure#40 "Identifiant national de structure"
* identifier[idNatSt].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[idNatSt].value = "392131725800020"

* identifier[finess].type = $TRE-G07-TypeIdentifiantStructure#1 "FINESS"
* identifier[finess].system = "https://finess.esante.gouv.fr"
* identifier[finess].value = "458174839"

* identifier[numSIRET].type = $TRE-G07-TypeIdentifiantStructure#3 "SIRET"
* identifier[numSIRET].system = "https://sirene.fr"
* identifier[numSIRET].value = "92131725800020"

* type[categorieEtablissement] = $TRE-R66-CategorieEtablissement#460 "Service autonomie aide (SAA)"
* name = "Quiétude BOIS COLOMBES"
* address.line = "45 rue du général Leclerc"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "45"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
* address.line.extension[=].valueString = "RUE"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase"
* address.line.extension[=].valueString = "du général Leclerc"
* address.city = "BOIS-COLOMBES"
* address.postalCode = "92270"
* partOf = Reference(Organization/1111)
* contact.extension.url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-confidentiality-level"
* contact.extension.valueCodeableConcept = $TRE-R283-NiveauConfidentialite#1 "Accès libre"
* contact.purpose = $TRE-R287-NatureContact#06 "standard"
* contact.telecom.extension[0].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel"
* contact.telecom.extension[=].valueCodeableConcept = $TRE-R200-CanalCommunication#2 "Téléphone fixe"
* contact.telecom.extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level"
* contact.telecom.extension[=].valueCodeableConcept = $TRE-R283-NiveauConfidentialite#1 "Accès libre"
* contact.telecom.system = #phone
* contact.telecom.value = "01.01.01.01.01"