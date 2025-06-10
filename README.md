[![Workflow Init](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/actions/workflows/a_tests_githubPages.yml/badge.svg)](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/actions/a_tests_githubPages.yml)

![ror-logo](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/assets/117643165/732ffe22-fbb8-470f-92a1-c6f7252be914)

# Contexte


## Contexte métier du projet
Le Répertoire de l’Offre et des Ressources en santé et accompagnement médico-social ([ROR](https://esante.gouv.fr/produits-services/repertoire-ror)) est le référentiel (au sens gisement de données) de description de l’offre de santé des établissements sanitaires, des établissements et services du médico-social et des structures de ville.

Les acteurs de santé ont convergé sur une vision commune de l’offre de santé. L’offre de santé est définie par une ou plusieurs activités opérationnelles, réalisée(s) dans le cadre d’un mode de prise en charge et pour une patientèle, et par les ressources qui permettent la réalisation de ces activités opérationnelles sur un lieu donné. Ces ressources concernent principalement les équipements spécifiques, les capacités d’accueil et les compétences que l’on souhaite identifier pour cette offre.
Le ROR, en tant que référentiel de description de l’offre de santé (au sens gisement de données), a une couverture nationale. Il doit permettre à toute application autorisée de rechercher une offre de santé.

## Contexte technique du projet
L'objectif de ce projet est de définir les profils ROR pour pouvoir consommer ce référentiel via l'API FHIR.

Le modèle d'exposition cible du ROR est ici le modèle 3.0.

Les ressources profilées pour ce cas d'usage spécifique sont :
* http://hl7.org/fhir/R4/healthcareservice.html
* https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrOrganization
* http://hl7.org/fhir/R4/practitioner.html
* http://hl7.org/fhir/R4/practitionerrole.html
* http://hl7.org/fhir/R4/location.html

# CI/CD
Les pipelines de ce repository permettent : 
* Executer Sushi
* Faire les tests avec le validator_cli
* Publier les pages :  [https://ansforge.github.io/IG-fhir-repertoire-offre-ressources-sante/main/ig/](https://ansforge.github.io/IG-fhir-repertoire-offre-ressources-sante/main/ig/) (ou https://ansforge.github.io/IG-fhir-repertoire-offre-ressources-sante/[nom_de_la_branche]/ig/ pour prévisualiser l'IG d'une branche)

![215342980-61686171-e3f8-40c5-865c-efdfc3dd52b4](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/assets/117643165/968d9e59-be53-4874-9a78-5b92000db2f6)


# Pull Request
Faire la PR sur la branche main.

# Notes
Ce sample IG a été créé à partir du sample-ig fhir : https://github.com/FHIR/sample-ig.

Un commentaire ? Une remarque ? Utilisez les GitHub [issues](https://docs.github.com/fr/issues) pour indiquer vos propositions d'amélioration et de correction.

## Acronymes

* IG : Implementation Guide
* FHIR : Fast Healthcare Interoperability Resources
* FIG : FHIR Implementation Guide
* HL7 : Health Level Seven

