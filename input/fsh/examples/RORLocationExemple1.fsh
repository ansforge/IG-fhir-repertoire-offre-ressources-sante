Alias: $TRE-R30-RegionOM = https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM
Alias: $TRE-R13-CommuneOM = https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM
Alias: $TRE-R330-TypeStatutCapacite = https://mos.esante.gouv.fr/NOS/TRE_R330-TypeStatutCapacite/FHIR/TRE-R330-TypeStatutCapacite
Alias: $TRE-R329-NatureCapacite = https://mos.esante.gouv.fr/NOS/TRE_R329-NatureCapacite/FHIR/TRE-R329-NatureCapacite
Alias: $TRE-R331-TemporaliteCapacite = https://mos.esante.gouv.fr/NOS/TRE_R331-TemporaliteCapacite/FHIR/TRE-R331-TemporaliteCapacite
Alias: $TRE-R335-TypeSourceCapacite = https://mos.esante.gouv.fr/NOS/TRE_R335-TypeSourceCapacite/FHIR/TRE-R335-TypeSourceCapacite
Alias: $TRE-R337-AffectationTemporaire = https://mos.esante.gouv.fr/NOS/TRE_R337-AffectationTemporaire/FHIR/TRE-R337-AffectationTemporaire
Alias: $TRE-R334-TypeLitSupplementaire = https://mos.esante.gouv.fr/NOS/TRE_R334-TypeLitSupplementaire/FHIR/TRE-R334-TypeLitSupplementaire
Alias: $TRE-R336-TypeCrise = https://mos.esante.gouv.fr/NOS/TRE_R336-TypeCrise/FHIR/TRE-R336-TypeCrise
Alias: $TRE-R332-GenreCapacite = https://mos.esante.gouv.fr/NOS/TRE_R332-GenreCapacite/FHIR/TRE-R332-GenreCapacite
Alias: $TRE-R354-TypeIdentifiantRessourceOperationnelle = https://mos.esante.gouv.fr/NOS/TRE_R354-TypeIdentifiantRessourceOperationnelle/FHIR/TRE-R354-TypeIdentifiantRessourceOperationnelle
Alias: $TRE-R343-FonctionLieu = https://mos.esante.gouv.fr/NOS/TRE_R343-FonctionLieu/FHIR/TRE-R343-FonctionLieu

Instance: ror-location-exemple-1
InstanceOf: RORLocation
Usage: #example
* meta
  * lastUpdated = "2024-12-05T01:42:39.000+00:00"
  * tag = $TRE-R30-RegionOM#24
* extension[0]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog"
  * valueCodeableConcept = $TRE-R13-CommuneOM#45234 "Orléans"
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity"
  * extension[0]
    * url = "nbCapacity"
    * valueInteger = 15
  * extension[+]
    * url = "capacityUpdateDate"
    * valueDateTime = "2024-07-08T18:15:39Z"
  * extension[+]
    * url = "capacityStatus"
    * valueCodeableConcept = $TRE-R330-TypeStatutCapacite#01 "Installé"
  * extension[+]
    * url = "capacityType"
    * valueCodeableConcept = $TRE-R329-NatureCapacite#01 "Lit"
  * extension[+]
    * url = "temporalityCapacity"
    * valueCodeableConcept = $TRE-R331-TemporaliteCapacite#01 "Courant"
  * extension[+]
    * url = "capacitySourceType"
    * valueCodeableConcept = $TRE-R335-TypeSourceCapacite#01 "Saisie manuelle"
  * extension[+]
    * url = "temporaryAssignement"
    * valueCodeableConcept = $TRE-R337-AffectationTemporaire#01 "Aucune"
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity"
  * extension[0]
    * url = "additionalBedType"
    * valueCodeableConcept = $TRE-R334-TypeLitSupplementaire#03 "Mobilisable avec ressources humaines"
  * extension[+]
    * url = "crisisType"
    * valueCodeableConcept = $TRE-R336-TypeCrise#02 "Situation sanitaire Exceptionnelle (SSE) (Plan blanc)"
  * extension[+]
    * url = "nbCapacity"
    * valueInteger = 0
  * extension[+]
    * url = "capacityUpdateDate"
    * valueDateTime = "2024-07-08T18:15:39Z"
  * extension[+]
    * url = "capacityStatus"
    * valueCodeableConcept = $TRE-R330-TypeStatutCapacite#06 "Supplémentaire"
  * extension[+]
    * url = "capacityType"
    * valueCodeableConcept = $TRE-R329-NatureCapacite#01 "Lit"
  * extension[+]
    * url = "temporalityCapacity"
    * valueCodeableConcept = $TRE-R331-TemporaliteCapacite#01 "Courant"
  * extension[+]
    * url = "capacitySourceType"
    * valueCodeableConcept = $TRE-R335-TypeSourceCapacite#01 "Saisie manuelle"
  * extension[+]
    * url = "temporaryAssignement"
    * valueCodeableConcept = $TRE-R337-AffectationTemporaire#01 "Aucune"
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity"
  * extension[0]
    * url = "nbCapacity"
    * valueInteger = 0
  * extension[+]
    * url = "capacityUpdateDate"
    * valueDateTime = "2024-07-08T18:15:39Z"
  * extension[+]
    * url = "capacityStatus"
    * valueCodeableConcept = $TRE-R330-TypeStatutCapacite#02 "Disponible"
  * extension[+]
    * url = "capacityType"
    * valueCodeableConcept = $TRE-R329-NatureCapacite#01 "Lit"
  * extension[+]
    * url = "temporalityCapacity"
    * valueCodeableConcept = $TRE-R331-TemporaliteCapacite#01 "Courant"
  * extension[+]
    * url = "capacitySourceType"
    * valueCodeableConcept = $TRE-R335-TypeSourceCapacite#01 "Saisie manuelle"
  * extension[+]
    * url = "genderCapacityAvailable"
    * valueCodeableConcept = $TRE-R332-GenreCapacite#02 "Homme"
  * extension[+]
    * url = "temporaryAssignement"
    * valueCodeableConcept = $TRE-R337-AffectationTemporaire#01 "Aucune"
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity"
  * extension[0]
    * url = "nbCapacity"
    * valueInteger = 0
  * extension[+]
    * url = "capacityUpdateDate"
    * valueDateTime = "2024-07-08T18:15:39Z"
  * extension[+]
    * url = "capacityStatus"
    * valueCodeableConcept = $TRE-R330-TypeStatutCapacite#02 "Disponible"
  * extension[+]
    * url = "capacityType"
    * valueCodeableConcept = $TRE-R329-NatureCapacite#01 "Lit"
  * extension[+]
    * url = "temporalityCapacity"
    * valueCodeableConcept = $TRE-R331-TemporaliteCapacite#01 "Courant"
  * extension[+]
    * url = "capacitySourceType"
    * valueCodeableConcept = $TRE-R335-TypeSourceCapacite#01 "Saisie manuelle"
  * extension[+]
    * url = "genderCapacityAvailable"
    * valueCodeableConcept = $TRE-R332-GenreCapacite#01 "Femme"
  * extension[+]
    * url = "temporaryAssignement"
    * valueCodeableConcept = $TRE-R337-AffectationTemporaire#01 "Aucune"
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity"
  * extension[0]
    * url = "nbCapacity"
    * valueInteger = 3
  * extension[+]
    * url = "capacityUpdateDate"
    * valueDateTime = "2024-07-08T18:15:39Z"
  * extension[+]
    * url = "capacityStatus"
    * valueCodeableConcept = $TRE-R330-TypeStatutCapacite#02 "Disponible"
  * extension[+]
    * url = "capacityType"
    * valueCodeableConcept = $TRE-R329-NatureCapacite#01 "Lit"
  * extension[+]
    * url = "temporalityCapacity"
    * valueCodeableConcept = $TRE-R331-TemporaliteCapacite#01 "Courant"
  * extension[+]
    * url = "capacitySourceType"
    * valueCodeableConcept = $TRE-R335-TypeSourceCapacite#01 "Saisie manuelle"
  * extension[+]
    * url = "genderCapacityAvailable"
    * valueCodeableConcept = $TRE-R332-GenreCapacite#03 "Indifférencié"
  * extension[+]
    * url = "temporaryAssignement"
    * valueCodeableConcept = $TRE-R337-AffectationTemporaire#01 "Aucune"
* extension[+]
  * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date"
  * valueDateTime = "2024-07-18T11:58:51+00:00"
* identifier
  * type = $TRE-R354-TypeIdentifiantRessourceOperationnelle#25 "Identifiant du lieu de réalisation de l'offre connu par l'instance ROR"
  * value = "24/1073"
* status = #active
* name = "UNITE DE SURVEILLANCE CONTINUE CHIR"
* type = $TRE-R343-FonctionLieu#001 "Hébergement"
* address
  * line[0] = "14 AV DE L'HOPITAL"
    * extension[0]
      * id = "Location.address.line.extension:houseNumber"
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
      * valueString = "14"
    * extension[+]
      * id = "Location.address.line.extension:streetNameType"
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
      * valueString = "AV"
    * extension[+]
      * id = "Location.address.line.extension:streetNameBase"
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase"
      * valueString = "DE L'HOPITAL"
  * line[+] = "45000 ORLEANS"
  * city = "ORLEANS"
  * postalCode = "45000"
* position
  * extension
    * url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-coordinate-reliability"
    * valueBoolean = true
  * longitude = 1.92204
  * latitude = 47.834781