Profile: RORQuestionnaire
Parent: Questionnaire
Id: ror-questionnaire
Description: "Fiche de saisie de l'offre de soins"
* ^status = #draft

/* Données fonctionnelles */
* identifier 0..1
* identifier ^short = "Identifiant de la fiche de saisie. Exemple FDS-092"
* version ^short = "version de la fiche de saisie"
* name 1..1
* name ^short = "Nom utilisé par les systèmes pour référencer la fiche exemple FDS-092"
* title 1..1
* title ^short = "Titre de la fiche. Exemple Unité d’accueil de jour, Equipe spécialisée Alzheimer (ESA), Unité d’Hébergement « traditionnelle » , en EHPAD Petite unité de vie (PUV)"
* subjectType 1..*
* subjectType ^short = "Types de Ressources qui seront alimentées lors de la saisie de cette fiche : HealthcareService, Organization, Practioner, PractionerRole, Location"
* date ^short = "Date du dernier changement"
* publisher ^short = "Nom de l'éditeur: Etablissement ou personne"
* description ^short = "Description de l'objet de la feuille de saisie"
* approvalDate 0..1
* approvalDate ^short = "Date de validation de la fiche de saisie"
* lastReviewDate 0..1
* lastReviewDate ^short = "Date de dernière revue de la fiche"
* effectivePeriod ^short = "Periode de validité de la fiche"
* code 0..0 //hors contexte ? http://hl7.org/fhir/R4/valueset-questionnaire-questions.html
* item ^short = "Structure du champs de la fiche"
* item.required ^short = "Champs requis"
* item.answerValueSet ^short = "Ensemble de valeurs autorisées en réponse"
* item.definition ^short = "Element concerné par la saisie"