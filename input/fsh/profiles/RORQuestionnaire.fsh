Profile: RORQuestionnaire
Parent: Questionnaire
Id: ror-questionnaire
Description: "Fiche de saisie de l'offre de soins"
* ^status = #draft

/* Données fonctionnelles */
* identifier 0..1 MS
* identifier ^short = "Identifiant de la fiche de saisie. Exemple FDS-092"
* version ^short = "version de la fiche de saisie"
* version MS
* name 1..1 MS
* name ^short = "Nom utilisé par les systèmes pour référencer la fiche exemple FDS-092"
* title 1..1 MS
* title ^short = "Titre de la fiche. Exemple Unité d'accueil de jour, Equipe spécialisée Alzheimer (ESA), Unité d'Hébergement « traditionnelle » , en EHPAD Petite unité de vie (PUV)"
* subjectType 1..* MS
* subjectType ^short = "Types de Ressources qui seront alimentées lors de la saisie de cette fiche : HealthcareService, Organization, Practioner, PractionerRole, Location"
* date ^short = "Date du dernier changement"
* date MS
* publisher ^short = "Nom de l'éditeur: Etablissement ou personne" 
* publisher MS
* description ^short = "Description de l'objet de la feuille de saisie" 
* description MS
* derivedFrom ^short = "Fiche(s) de saisie parente(s)"
* derivedFrom MS
* approvalDate 0..1 MS
* approvalDate ^short = "Date de validation de la fiche de saisie"
* lastReviewDate 0..1 MS
* lastReviewDate ^short = "Date de dernière revue de la fiche"
* effectivePeriod ^short = "Periode de validité de la fiche" 
* effectivePeriod MS
* code 0..0 //hors cas d'usage du ROR ? http://hl7.org/fhir/R4/valueset-questionnaire-questions.html
* useContext 1..*
* useContext MS
* useContext ^short = "Contexte d'usage de la fiche de consignes de saisie de spécifier pour quelle(s) Catégorie(s) d'EG elle est applicable ainsi que pottentiellemnt la spécialité ordinale et la profession"
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "useContext.code"
* useContext ^slicing.rules = #open
* useContext ^slicing.description = "Slicing pour définir les différents contextes d'usage de la fiche afin de pouvoir catégoriser ces fiches de consignes par : catégorie d'EG (obligatoire), Spécialité ordinale (optionnel) et profession (optionnel)"
* useContext ^slicing.ordered = false
* useContext contains
    catEG 1..* and
    catPS 0..* and
    catSpeOrdinal 0..*
* useContext[catEG].code from ror-usage-context-type-vs (extensible)
* useContext[catEG].code = $TRE-R67-TypeStructure-EJ-EG#EG // fixé 
* useContext[catEG].valueCodeableConcept from $JDV-J55-CategorieEG-ROR (required)
* useContext[catEG].valueCodeableConcept ^short = "Catégorie(s) d'EG pour la(es)quelle(s) cette fiche de consigne de saisie est disponible"
* useContext[catEG].valueCodeableConcept MS
* useContext[catEG] ^short = "Contexte d'usage de la fiche de consignes de saisie afin de spécifier pour quelle(s) Catégorie(s) d'EG elle est applicable"
* useContext[catPS].code from ror-usage-context-type-vs (extensible)
* useContext[catPS].code = $TRE-R288-TypeProfession#P01 // fixé 
* useContext[catPS].valueCodeableConcept from $JDV-J229-ProfessionSante-ROR (required)
* useContext[catPS].valueCodeableConcept ^short = "Catégorie(s) de profession pour la(es)quelle(s) cette fiche de consigne de saisie est disponible"
* useContext[catPS].valueCodeableConcept MS
* useContext[catPS] ^short = "Contexte d'usage de la fiche de consignes de saisie afin de spécifier pour quelle(s) Catégorie(s) de profession elle est applicable"
* useContext[catSpeOrdinal].code from ror-usage-context-type-vs (extensible)
* useContext[catSpeOrdinal].code = $TRE-R04-TypeSavoirFaire#S // fixé 
* useContext[catSpeOrdinal].valueCodeableConcept from $JDV-J210-SpecialiteOrdinale-ROR (required)
* useContext[catSpeOrdinal].valueCodeableConcept ^short = "Catégorie(s) de spécialité ordinale pour la(es)quelle(s) cette fiche de consigne de saisie est disponible"
* useContext[catSpeOrdinal].valueCodeableConcept MS
* useContext[catSpeOrdinal] ^short = "Contexte d'usage de la fiche de consignes de saisie afin de spécifier pour quelle(s) Catégorie(s) de spécialité ordinale elle est applicable"
* item ^short = "Structure du champs de la fiche" 
* item MS
* item.required ^short = "Champs requis" 
* item.required MS
* item.code 0..0 //hors contexte ? http://hl7.org/fhir/R4/valueset-questionnaire-questions.html
* item.answerValueSet ^short = "Ensemble de valeurs autorisées en réponse" 
* item.answerValueSet MS
* item.definition ^short = "Element concerné par la saisie" 
* item.definition MS