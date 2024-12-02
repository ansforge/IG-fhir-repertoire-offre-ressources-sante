Alias: $TRE-G07-TypeIdentifiantStructure = https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure
Alias: $TRE-R72-FinessStatutJuridique = https://mos.esante.gouv.fr/NOS/TRE_R72-FinessStatutJuridique/FHIR/TRE-R72-FinessStatutJuridique
Alias: $TRE-R69-FinessAgregatStatutJuridiqueNiv2 = https://mos.esante.gouv.fr/NOS/TRE_R69-FinessAgregatStatutJuridiqueNiv2/FHIR/TRE-R69-FinessAgregatStatutJuridiqueNiv2

Instance: ror-organization-exemple-ej
InstanceOf: ROROrganization
Usage: #example
Description: "Exemple basique pour RORPOrganization décrivant une Entité Juridique (EJ) n'ayant pas forcément de cohérence fonctionnelle"

* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization"
* meta.lastUpdated = "2023-12-20T10:00:00+01:00"
* name = "Quiétude"

* identifier[idNatSt].use = #official
* identifier[idNatSt].value = "2921317258"
* identifier[idNatSt].type = $TRE-G07-TypeIdentifiantStructure#40 "Identifiant national de structure"
* identifier[idNatSt].system = "urn:oid:1.2.250.1.71.4.2.2"

* identifier[finess].type = $TRE-G07-TypeIdentifiantStructure#1 "FINESS"
* identifier[finess].system = "https://finess.esante.gouv.fr"
* identifier[finess].value = "458174839"

* identifier[sirene].value = "921317258"
* identifier[sirene].type = $TRE-G07-TypeIdentifiantStructure#2 "SIREN"
* identifier[sirene].system = "https://sirene.fr"

* type[statutJuridiqueINSEE] = $TRE-R72-FinessStatutJuridique#72 "Société à responsabilité limitée (SARL)"
* type[sousEnsembleAgregatStatutJuridique] = $TRE-R69-FinessAgregatStatutJuridiqueNiv2#2200 "Organisme privé à caractère commercial"
* address.city = "BOIS-COLOMBES"
* address.postalCode = "92270"
* address.line = "103 rue des Bourguignons, 92270 BOIS-COLOMBES"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "103"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
* address.line.extension[=].valueString = "rue"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase"
* address.line.extension[=].valueString = "des Bourguignons"
* extension.url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date"
* extension.valueDateTime = "2023-12-09T14:30:00+01:00"