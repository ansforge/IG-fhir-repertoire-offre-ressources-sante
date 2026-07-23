# Mise à jour des dépendances de cette IG

## Contexte

Cette IG FHIR hérite d'une ancienne version de hl7.fhir.fr.core (1.1.0) et d'une ancienne version de ans.annuaire.fhir.r4 (0.2.0)

Seule une ressource possède en réalité un héritage: ROROrganization qui hérite de la ressource Organization.

## Objectif

Nous souhaitons mettre à jour cette IG vers les dernières versions de hl7.fhir.fr.core (https://github.com/Interop-Sante/hl7.fhir.fr.core / https://hl7.fr/ig/fhir/core/) et de ans.annuaire.fhir.r4 (https://github.com/ansforge/IG-fhir-annuaire / https://interop.esante.gouv.fr/ig/fhir/annuaire/1.2.0-snapshot-2/fr/liste_profils.html):

* ROROrganization à subdiviser en plusieurs profils:
  * Pour les EG et EJ, hériter de AsOrganizationProfile
  * Pour les pôles et les services, hériter de FRCoreOrganizationProfile
  * Pour les UF (qui correspondent à des UF médicales dans FRCORE), hériter de FRCoreOrganizationUFProfile

* Pour RORHealthcareService (OffreOpérationnelle), hériter de FRCoreHealthcareServiceProfile

* Pour RORLocation, pas de changement, héritage directement de la ressource FHIR R4 car les compléments de FRCORE concerne un usage différent (description d'une chambre) de celui de la définition d'une location dans le cadre du projet ROR (une location est un ensemble de plusieurs chambres dans le ROR)

* Pour RORPractitioner, cette ressource doit être renommé en RORPerson et hériter de AsPersonProfile

* Pour RORPractitionerRole, cette ressource doit être scindé en 2 ressources distinctes:
  * RORPractitionerProfile qui hérite de AsPractitionerProfile (exercice professionnel)
  * RORPractitionerRoleProfile qui hérite de AsPractitionerRoleProfile (situation d'exercice)

Les autres ressources ne sont pas modifiées.

Peux-tu, dans un fichier au format markdown, lister les impacts sur le modèle existant ?
Effectuer les modifications directement dans les fichiers FSH de ce projet?
