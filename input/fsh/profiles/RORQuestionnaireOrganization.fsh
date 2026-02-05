Profile: RORQuestionnaireOrganization
Parent: SDCQuestionnairePopulateExpression
Id: ror-questionnaire-organization
Description: "Modèle de saisie des Lieux de Réalisation"
* ^status = #draft

/* Données fonctionnelles */
* identifier 0..1 MS
* identifier ^short = "Identifiant du modèle de saisie. Exemple FDS-092"
* version ^short = "version du modèle de saisie"
* version MS
* status ^short = "Statut du modèle"
* name 1..1 MS
* name ^short = "Nom utilisé par les systèmes pour référencer le modèle Exemple FDS-092"
* title 1..1 MS
* title ^short = "Titre du modèle. Exemple Unité d'accueil de jour, Equipe spécialisée Alzheimer (ESA), Unité d'Hébergement « traditionnelle » , en EHPAD Petite unité de vie (PUV)"
* subjectType 1..* MS
* subjectType ^short = "Types de Ressources qui seront alimentées par ce modèle : HealthcareService, Organization, Location"
* date ^short = "Date du dernier changement"
* date MS
* publisher ^short = "Nom de l'éditeur du modèle: Etablissement ou personne" 
* publisher MS
* description ^short = "Description de l'objet de la feuille de saisie" 
* description MS
* derivedFrom ^short = "Modèles de saisie parents"
* derivedFrom MS
* purpose MS
* purpose ^short = "Pourquoi ce modèle est-il défini"
* approvalDate 0..1 MS
* approvalDate ^short = "Date de validation du modèle de saisie"
* lastReviewDate 0..1 MS
* lastReviewDate ^short = "Date de dernière revue du modèle"
* effectivePeriod ^short = "Periode de validité du modèle" 
* effectivePeriod MS
* code 0..0 //hors cas d'usage du ROR ? http://hl7.org/fhir/R4/valueset-questionnaire-questions.html

* item ^short = "Structure du champs du modèle"
* item MS
* item.linkId ^short = "Unique id pour l'item du modèle"
* item.prefix MS
* item.text MS
* item.text ^short = "Texte pour l'item"
* item.type ^short = "Type de l'item group | display | boolean | decimal | integer | date | dateTime ..."
* item.enableWhen MS
* item.enableWhen ^short = "Item autorisé / disponible que sous condition"
* item.enableBehavior MS
* item.required MS
* item.required ^short = "Champs requis"
* item.repeats MS
* item.repeats ^short = "Si l'item peut de répeter"
* item.readOnly MS
* item.readOnly ^short = "En lecture seule"
* item.code 0..0 //hors contexte ? http://hl7.org/fhir/R4/valueset-questionnaire-questions.html
* item.answerValueSet ^short = "Ensemble de valeurs autorisées en réponse" 
* item.answerValueSet MS
* item.answerOption MS
* item.answerOption ^short = "Réponses permises"
* item.answerOption.initialSelected MS
* item.answerOption.initialSelected ^short = "Option de réponse sélectionnée par défaut"
* item.definition ^short = "Element concerné par la saisie" 
* item.definition MS
* item.initial MS
* item.initial ^short = "Valeur(s) initiale(s)"