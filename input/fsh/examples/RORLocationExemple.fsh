Alias: $TRE-R343-FonctionLieu = https://mos.esante.gouv.fr/NOS/TRE_R343-FonctionLieu/FHIR/TRE-R343-FonctionLieu
Alias: $TRE-R13-Commune = https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune

Instance: ror-location-exemple
InstanceOf: RORLocation
Usage: #example
Description: "Exemple basique pour RORLocation n'ayant pas forcément de cohérence fonctionnelle"

* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location"
* type = $TRE-R343-FonctionLieu#001 "Hébergement"
* extension.url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog"
* extension.valueCodeableConcept = $TRE-R13-Commune#78646 "Versailles"
* address.city = "Versailles"
* address.postalCode = "78000"
* address.line = "7 rue porte de Buc"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "7"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
* address.line.extension[=].valueString = "rue"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase"
* address.line.extension[=].valueString = "porte de Buc"