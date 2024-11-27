Alias: $TRE-G07-TypeIdentifiantStructure = https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure
Alias: $TRE-R66-CategorieEtablissement = https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement
Alias: $TRE-R287-NatureContact = https://mos.esante.gouv.fr/NOS/TRE_R287-NatureContact/FHIR/TRE-R287-NatureContact
Alias: $TRE-R283-NiveauConfidentialite = https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite
Alias: $TRE-R200-CanalCommunication = https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication
Alias: $TRE-R241-AideFinanciere = https://mos.esante.gouv.fr/NOS/TRE_R241-AideFinanciere/FHIR/TRE-R241-AideFinanciere

Instance: ror-organisation-exemple-eg
InstanceOf: ROROrganization
Usage: #example
Description: "Exemple basique pour RORPOrganization décrivant une Entité Géographique (EG) n'ayant pas forcément de cohérence fonctionnelle"

* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization"
* meta.lastUpdated = "2023-12-20T10:00:00+01:00"
* name = "Quiétude BOIS COLOMBES"
* partOf = Reference(Organization/1111)
* identifier[0].value = "392131725800020"
* identifier[=].type = $TRE-G07-TypeIdentifiantStructure#40 "Identifiant national de structure"
* identifier[=].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[+].value = "92131725800020"
* identifier[=].type = $TRE-G07-TypeIdentifiantStructure#3 "SIRET"
* identifier[=].system = "http://sirene.fr"
* type = $TRE-R66-CategorieEtablissement#460 "Service autonomie aide (SAA)"
* address.city = "BOIS-COLOMBES"
* address.postalCode = "92270"
* address.line = "45 rue du général Leclerc, 92270 BOIS-COLOMBES"
* address.line.extension[0].id = "Location.address.line.extension:houseNumber"
* address.line.extension[=].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "45"
* address.line.extension[+].id = "Location.address.line.extension:streetNameType"
* address.line.extension[=].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
* address.line.extension[=].valueString = "rue"
* address.line.extension[+].id = "Location.address.line.extension:streetNameBase"
* address.line.extension[=].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase"
* address.line.extension[=].valueString = "du général Leclerc"
* contact.purpose = $TRE-R287-NatureContact#06 "standard"
* contact.extension.url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-confidentiality-level"
* contact.extension.valueCodeableConcept = $TRE-R283-NiveauConfidentialite#1 "Accès libre"
* contact.telecom.system = #phone
* contact.telecom.value = "01.01.01.01.01"
* contact.telecom.extension[0].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel"
* contact.telecom.extension[=].valueCodeableConcept = $TRE-R200-CanalCommunication#2 "Téléphone fixe"
* contact.telecom.extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level"
* contact.telecom.extension[=].valueCodeableConcept = $TRE-R283-NiveauConfidentialite#1 "Accès libre"
* extension[0].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date"
* extension[=].valueDateTime = "2023-12-09T14:30:00+01:00"
* extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-financial-help-type"
* extension[=].valueCodeableConcept = $TRE-R241-AideFinanciere#02 "Habilité Aide Sociale"
* extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-accomodation-family"
* extension[=].valueBoolean = false