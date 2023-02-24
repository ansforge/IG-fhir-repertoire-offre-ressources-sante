Profile: RORBundleResultatRechercheOffreDeSoins
Parent: Bundle
Id: ror-bundle-resultat-recherche-offre-de-soins
Description: "Profil créé dans le cadre du ROR"
* ^version = "3.0"
* ^publisher = "ANS"
* type = #searchset (exactly)
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains HealthcareService 0..*
* entry[HealthcareService].resource only RORHealthcareService