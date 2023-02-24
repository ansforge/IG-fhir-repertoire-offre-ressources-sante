# Contexte

## Contexte métier du projet
Le Répertoire de l’Offre et des Ressources en santé et accompagnement médico-social (ROR) est le référentiel (au sens gisement de données) de description de l’offre de santé des établissements sanitaires, des établissements et services du médico-social et des structures de ville.

Les acteurs de santé ont convergé sur une vision commune de l’offre de santé. L’offre de santé est définie par une ou plusieurs activités opérationnelles, réalisée(s) dans le cadre d’un mode de prise en charge et pour une patientèle, et par les ressources qui permettent la réalisation de ces activités opérationnelles sur un lieu donné. Ces ressources concernent principalement les équipements spécifiques, les capacités d’accueil et les compétences que l’on souhaite identifier pour cette offre.
Le ROR, en tant que référentiel de description de l’offre de santé (au sens gisement de données), a une couverture nationale. Il doit permettre à toute application autorisée de rechercher une offre de santé.

## Contexte technique du projet
L'objectif de ceproejt est de définir les profils ROR pour pouvoir consommer ce référentiel via l'API FHIR.
Les ressources profilées pour ce cas d'usage spécifique sont :
* http://hl7.org/fhir/R4/healthcareservice.html
* https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrOrganization
* http://hl7.org/fhir/R4/practitioner.html
* http://hl7.org/fhir/R4/practitionerrole.html
* http://hl7.org/fhir/R4/location.html

# CI/CD
Les pipelines mis de ce repository permettent : 
* Executer  Sushi
* Faire les tests avec le validator_cli
* Publier les pages :  https://ansforge.github.io/FIG_ans.fhir.fr.ror30/ig/main

![image](https://user-images.githubusercontent.com/101335975/215342980-61686171-e3f8-40c5-865c-efdfc3dd52b4.png)

# Pull Request
Faire la PR sur la branche main (livraisons 3.0)

# Notes
Ce sample IG a été créé à partir du sample-ig fhir : https://github.com/FHIR/sample-ig.

Un commentaire ? Une remarque ? Utilisez les GitHub [issues](https://docs.github.com/fr/issues) pour indiquer vos propositions d'amélioration et de correction.

## Acronymes

* IG : Implementation Guide
* FHIR : Fast Healthcare Interoperability Resources
* FIG : FHIR Implementation Guide
* HL7 : Health Level Seven

