Profile: RORTask
Parent: Task
Id: ror-task
Description: "Anomalie concerant une donnée dans une ressource du ROR"

/* Données techniques */
* id 1..
* meta 1..

/* Données fonctionnelles */
* identifier 1..1
* identifier ^short = "Identifiant de l'anomalie"
* status MS //Status required doit correspondre au valueset exigé par FHIR dans TaskStatus https://www.hl7.org/FHIR/valueset-task-status.html
* businessStatus 1..1
* businessStatus ^short = "différent type d statut métier de l'anomalie"
* code 1..1
* code ^short = "Thématique de l'anomalie exemples :Exactitude, Complétude, Exhaustivité"
* description MS
* description ^short = "Description de l'anomalie"
* focus 1..1
* focus ^short = "référence vers la ressources en anomalie"
* authoredOn 1..1
* authoredOn ^short = "Date création de l'anomalie"
* lastModified 1..1
* lastModified ^short = "Date de dernière modification"
* reasonCode 1..1
* reasonCode ^short = "Type d'action proposée en réponse"
* input ^short = "Eléments en entrée pour définir l'anomalie"
//slices input
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open
* input ^slicing.description = "slicing pour définir les entrants"
* input ^slicing.ordered = false
* input contains
    ruleErrorId 0..1 MS and // identifiant de la règle à l'origine de l'anomalie
    errorValue 0..* MS and // donnée erronée. cardinalité incohérente ?
    proposedValue 0..* MS and //cardinalité incohérente ?
    pathElementError 0..1 MS and // élément en erreur dans la ressource
    systemRequester 1..1 MS and // système déclarant l'anomalie exemple Santé.fr
    identifierRequester 0..1 MS // identifiant du déclarant de l'anomalie
* input[ruleErrorId] ^short = "Identifiant de la règle à l'origine de l'anomalie"
* input[ruleErrorId].type = InputTaskRORCodeSystem#ruleErrorId
* input[ruleErrorId].value[x] only CodeableConcept
* input[errorValue] ^short = "donnée erronée"
* input[errorValue].type = InputTaskRORCodeSystem#errorValue
* input[errorValue].value[x] only string
* input[proposedValue] ^short = "nouvelle valeur proposée"
* input[proposedValue].type = InputTaskRORCodeSystem#proposedValue
* input[proposedValue].value[x] only string
* input[pathElementError] ^short = "élément en erreur dans la ressource"
* input[pathElementError].type = InputTaskRORCodeSystem#pathElementError
* input[pathElementError].value[x] only Expression 
* input[systemRequester] ^short = "système déclarant l'anomalie"
* input[systemRequester].type = InputTaskRORCodeSystem#systemRequester
* input[systemRequester].value[x] only string
* input[identifierRequester] ^short = "Identifiant du déclarant de l'anomalie"
* input[identifierRequester].type = InputTaskRORCodeSystem#identifierRequester
* input[identifierRequester].value[x] only Identifier
* output ^short = "Eléments en sortie concerant le traitement de l'anomalie"
//slices output
* output ^slicing.discriminator.type = #pattern
* output ^slicing.discriminator.path = "type"
* output ^slicing.rules = #open
* output ^slicing.description = "slicing concernant le traitement de l'anomalie"
* output ^slicing.ordered = false
* output contains
    newValue 0..* MS and //incohérence cardinalité?
    identifierAnalyst 0..1 MS
* output[newValue] ^short = "Nouvelle valeur renseignée"
* output[newValue].type = OutputTaskRORCodeSystem#newValue
* output[newValue].value[x] only string
* output[identifierAnalyst] ^short = "identifiant du destinataire du traitement de la demande"
* output[identifierAnalyst].type = OutputTaskRORCodeSystem#identifierAnalyst
* output[identifierAnalyst].value[x] only Identifier
* executionPeriod.start MS
* executionPeriod.start ^short =  "Date d'envoi au destinataire du traitement de l'anomalie"
* executionPeriod.end MS
* executionPeriod.end ^short =  "Date de fin de traitement de l'anomalie par le destinataire"