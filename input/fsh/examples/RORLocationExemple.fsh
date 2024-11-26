Alias: $TRE-R343-FonctionLieu = https://mos.esante.gouv.fr/NOS/TRE_R343-FonctionLieu/FHIR/TRE-R343-FonctionLieu
Alias: $TRE-R13-Commune = https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune

Instance: ror-location-exemple
InstanceOf: Location
Usage: #example
* type = $TRE-R343-FonctionLieu#001 "Hébergement"
* extension[0]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog"
  * valueCodeableConcept = $TRE-R13-Commune#78646 "Versailles"
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date"
  * valueDateTime = "2023-06-30T00:00:00.000Z"
* address.city = "Versailles"
* address.postalCode = "78000"
* address.line[0] = "7 rue porte de Buc"
* address.line[+] = "78000 Versailles"
* address.line[0].extension.id = "Location.address.line.extension:houseNumber"
* address.line[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line[=].extension.valueString = "7"
* address.line[+].extension.id = "Location.address.line.extension:streetNameType"
* address.line[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
* address.line[=].extension.valueString = "rue"
* address.line[+].extension.id = "Location.address.line.extension:streetNameBase"
* address.line[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase"
* address.line[=].extension.valueString = "porte de Buc"