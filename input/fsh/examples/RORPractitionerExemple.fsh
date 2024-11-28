Alias: $TRE-R200-CanalCommunication = https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication
Alias: $TRE-R283-NiveauConfidentialite = https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite

Instance: ror-practitioner-exemple
InstanceOf: Practitioner
Usage: #example
Description: "Exemple basique pour RORPRactitioner n'ayant pas forcément de cohérence fonctionnelle"

* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner"
* meta.lastUpdated = "2023-12-20T10:00:00+01:00"
* name.family = "CHANMET"
* name.given = "Cyndi"
* identifier.value = "11111573474"
* identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* gender = #female
* telecom.system = #email
* telecom.value = "cyndi.chanmet@lifen.mssante.fr"
* telecom.extension[0].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel"
* telecom.extension[=].valueCodeableConcept = $TRE-R200-CanalCommunication#3 "Courrier électronique"
* telecom.extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level"
* telecom.extension[=].valueCodeableConcept = $TRE-R283-NiveauConfidentialite#2 "Accès restreint"
* extension.url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date"
* extension.valueDateTime = "2023-12-09T14:30:00+01:00"