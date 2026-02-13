Profile: RORQuestionnaireHealthcareService
Parent: SDCQuestionnairePopulateExpression
Id: ror-questionnaire-healthcareservice
Description: "Modèle de saisie des Offres Opérationnelles.  
Les questionnaires crées à partir de cette ressource sont utilisés par les établissements pour saisir leurs offres opérationnelles."
* ^status = #draft

/*
SDCQuestionnairePopulateExpression : http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp
SDCQuestionnaireExtractDefinition : http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-defn

ex avec populate et extract:
https://build.fhir.org/ig/HL7/sdc/en/Questionnaire-demographics.json.html
https://github.com/HL7/sdc/blob/master/input/fsh/examples/demographics.fsh
https://build.fhir.org/ig/HL7/sdc/en/examples.html#using-itempopulationcontext-and-itemextractioncontext
*/

//ex: https://github.com/hl7ch/ch-lab-report/blob/master/input/fsh/profiles/ChLabPatient.fsh
* ^extension[$imposeProfile].valueCanonical = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-defn"

* extension[launchContext] 1..1 MS
* extension[launchContext] only RORLaunchContextExtension

/* Données fonctionnelles */
* identifier 0..1 MS
* identifier ^short = "Identifiant du modèle de saisie. Exemple MS-141"
* version ^short = "version du modèle de saisie"
* version MS
* status ^short = "Statut du modèle"
* name 1..1 MS
* name ^short = "Nom utilisé par les systèmes pour référencer le modèle Exemple MS-141"
* title 1..1 MS
* title ^short = "Titre du modèle. Exemple Unité d'accueil de jour, Equipe spécialisée Alzheimer (ESA), Unité d'Hébergement « traditionnelle » , en EHPAD Petite unité de vie (PUV)"
* subjectType 1..1 MS
* subjectType ^short = "Type de la ressource qui alimente ce modèle : HealthcareService ou Organization ou Location"
* date ^short = "Date du dernier changement"
* date MS
* publisher ^short = "Nom de l'éditeur du modèle: Etablissement ou personne" 
* publisher MS
* description ^short = "Description du modèle de saisie" 
* description MS
//* derivedFrom ^short = "Modèles de saisie parents"
//* derivedFrom MS
* purpose MS
* purpose ^short = "Pourquoi ce modèle est-il défini"
* approvalDate 0..1 MS
* approvalDate ^short = "Date de validation du modèle de saisie"
* lastReviewDate 0..1 MS
* lastReviewDate ^short = "Date de dernière revue du modèle"
* effectivePeriod ^short = "Periode de validité du modèle" 
* effectivePeriod MS
* code 0..0 //hors cas d'usage du ROR ? http://hl7.org/fhir/R4/valueset-questionnaire-questions.html
* useContext 1..*
* useContext MS
* useContext ^short = "Contexte d'usage du modèle de saisie spécifiant pour quelles catégories d'EG ainsi que potentiellemnt la spécialité ordinale, la profession et ou le domaine de l'offre pour lesquels ce modèle est applicable"
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "code"
* useContext ^slicing.rules = #open
* useContext ^slicing.description = "Slicing pour définir les différents contextes d'usage du modèle afin de pouvoir catégoriser ces modèles de saisie par : catégorie d'EG (obligatoire), Spécialité ordinale (optionnel), profession (optionnel) et domaine (optionnel)"
* useContext ^slicing.ordered = false
* useContext contains
    catEG 1..* and
    typePS 0..* and
    speOrdinal 0..* and
    champAct 0..* //and
//    fonctionLieu 0..1
* useContext.code from ror-usage-context-type-vs (extensible)
* useContext[catEG].code = $TRE-R67-TypeStructure-EJ-EG#EG // fixé 
* useContext[catEG].valueCodeableConcept from $JDV-J55-CategorieEG-ROR (required)
* useContext[catEG].valueCodeableConcept ^short = "Catégories d'EG"
* useContext[catEG] ^short = "Contexte précisant les catégories d'EG pour lesquelles ce questionnaire est disponible"
* useContext[typePS].code = $TRE-R288-TypeProfession#P01 // fixé 
* useContext[typePS].valueCodeableConcept from $JDV-J229-ProfessionSante-ROR (required)
* useContext[typePS].valueCodeableConcept ^short = "Types de profession de santé"
* useContext[typePS] ^short = "Contexte précisant les types de profession de Santé pour lesquels ce questionnaire est disponible"
* useContext[speOrdinal].code = $TRE-R04-TypeSavoirFaire#S // fixé 
* useContext[speOrdinal].valueCodeableConcept from $JDV-J210-SpecialiteOrdinale-ROR (required)
* useContext[speOrdinal].valueCodeableConcept ^short = "Spécialités ordinales"
* useContext[speOrdinal] ^short = "Contexte précisant les spécialités ordinales pour lesquelles ce questionnaire est disponible"
* useContext[champAct].code = usage-context-ror-codesystem#champAct
* useContext[champAct].valueCodeableConcept from $JDV-J20-ChampActivite-ROR (required)
* useContext[champAct].valueCodeableConcept ^short = "Domaines (champs d'activité) de l' offre (OffreOperationnelle)"
* useContext[champAct] ^short = "Contexte précisant les domaines (champs d'activité) de l' offre (OffreOperationnelle) pour lesquels ce questionnaire est disponible"
// * useContext[fonctionLieu].code = usage-context-ror-codesystem#fonctionLieu
// * useContext[fonctionLieu].valueCodeableConcept from $JDV-J198-FonctionLieu-ROR (required)
// * useContext[fonctionLieu].valueCodeableConcept ^short = "Fonctions (fonctionLieu) du lieu (LieuRealisationOffre)"
// * useContext[fonctionLieu] ^short = "Contexte précisant les fonctions (fonctionLieu) du lieu (LieuRealisationOffre) pour lesquelles ce questionnaire est disponible"

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

