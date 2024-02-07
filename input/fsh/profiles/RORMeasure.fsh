Profile: RORMeasure
Parent: Measure
Id: ror-measure
Description: "Définition de l'indicateur de pilotage du ROR National"
* ^status = #draft

/* Données fonctionnelles */
* identifier 1..1 MS
* identifier ^short = "Identifiant de l'indicateur de pilotage du ROR National"
* status MS //Status required doit correspondre au valueset exigé par FHIR dans  http://hl7.org/fhir/R4/valueset-publication-status.html
* status ^short = "Statut de l'indicateur de pilotage du ROR National"
* date MS
* date ^short = "Date de dernière modification de l'indicateur"
* purpose 1..1 MS
* purpose ^short = "Objectif de l'indicateur"
* topic 1..1 MS
* topic ^short = "Sujet de l'indicateur" // utilisation du valueSet http://hl7.org/fhir/R4/valueset-definition-topic.html
* type 1..1 MS
* type ^short = "Type d'indicateur" // utilisation du valueSet http://hl7.org/fhir/R4/valueset-measure-type.html
* group.code 1..1 MS
* group.code ^short = "Code du groupe popu"
* group.description 1..1 MS
* group.description ^short = "Description du groupe popu exemple ROR N"