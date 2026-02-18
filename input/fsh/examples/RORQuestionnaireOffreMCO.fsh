Instance: ror-questionnaire-offre-mco
InstanceOf: RORQuestionnaire
Usage: #example
Description: "Extrait du questionnaire (modèle de saisie) permettant de renseigner l'Offre Opérationnelle d'une unité hospitalière de gynécologie"

* meta
  * profile[+] = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-questionnaire-healthcareservice"
  * profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-defn"
* extension[launchContext]
  * extension[name].valueCoding = https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/ror-launchcontext#ror-structure
  * extension[type].valueCode = #HealthcareService
* version = "1"
* name = "MS-141"
* title = "Unité hospitalière de gynécologie"
* identifier.use = #official
* identifier.value = "MS-141"
* status = #active
//* experimental = true
* date = "2026-02-13"
* publisher = "ANS"
* description = "L’unité hospitalière de gynécologique assure la réalisation d’actes de gynécologie. Les valeurs proposées sont celles identifiées par le Conseil national professionnel (CNP) de gynécologie-obstétrique et de gynécologie médicale."
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/MS-141"
* jurisdiction = urn:iso:std:iso:3166#FR "FRANCE"

* subjectType[0] = #HealthcareService
* lastReviewDate = "2023-12-05"
* purpose = "Les questionnaires crées à partir de cette ressource sont utilisés par les établissements pour saisir leurs offres opérationnelles."

* useContext[catEG][+]
  * code = $TRE-R67-TypeStructure-EJ-EG#EG
  * valueCodeableConcept = $TRE-R66-CategorieEtablissement#101
* useContext[catEG][+]
  * code = $TRE-R67-TypeStructure-EJ-EG#EG
  * valueCodeableConcept = $TRE-R66-CategorieEtablissement#106
* useContext[catEG][+]
  * code = $TRE-R67-TypeStructure-EJ-EG#EG
  * valueCodeableConcept = $TRE-R66-CategorieEtablissement#114
* useContext[catEG][+]
  * code = $TRE-R67-TypeStructure-EJ-EG#EG
  * valueCodeableConcept = $TRE-R66-CategorieEtablissement#355
* useContext[catEG][+]
  * code = $TRE-R67-TypeStructure-EJ-EG#EG
  * valueCodeableConcept = $TRE-R66-CategorieEtablissement#365
* useContext[catEG][+]
  * code = $TRE-R67-TypeStructure-EJ-EG#EG
  * valueCodeableConcept = $TRE-R66-CategorieEtablissement#698
* useContext[catEG][+]
  * code = $TRE-R67-TypeStructure-EJ-EG#EG
  * valueCodeableConcept = $TRE-R66-CategorieEtablissement#128
* useContext[catEG][+]
  * code = $TRE-R67-TypeStructure-EJ-EG#EG
  * valueCodeableConcept = $TRE-R66-CategorieEtablissement#129
* useContext[catEG][+]
  * code = $TRE-R67-TypeStructure-EJ-EG#EG
  * valueCodeableConcept = $TRE-R66-CategorieEtablissement#122
* useContext[catEG][+]
  * code = $TRE-R67-TypeStructure-EJ-EG#EG
  * valueCodeableConcept = $TRE-R66-CategorieEtablissement#131
* useContext[champAct]
  * code = usage-context-ror-codesystem#champAct
  * valueCodeableConcept = $TRE_R227-ChampActivite#01
* item[0]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
    * valueExpression
   //   * name = "ror-structure"
      * language = #application/x-fhir-query
      * expression = "HealthcareService"
  * linkId = "Hs1"
  //* text = "Hs1"
  * type = #group
  * item[+]
    * linkId = "cing#Hs1.informationsGenerales"
    * text = "Informations générales"
    * type = #group
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%ror-structure.name"
      * linkId = "Hs1.name"
      * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.name"
      * text = "Nom de l'offre"
      * type = #string
      * required = true
      * repeats = false
      * readOnly = false
    * item[+]
      * linkId = "Hs1.type"
      * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.type"
      * type = #group
      * item[+]
        * extension
          * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
          * valueExpression
            * language = #text/fhirpath
            * expression = "%ror-structure.type.where(coding.system = 'https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite').coding"
        * linkId = "Hs1.type.coding"
        * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.type.coding"
        * text = "Champ d'activité"
        * type = #choice
        * required = true
        * repeats = false
        * readOnly = false
        * answerOption[+]
          * valueCoding
            * system = "https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite"
            * code = #01
            * display = "Médecine, Chirurgie Obstétrique (MCO)"               
          * initialSelected = false
      * item[+]
        * linkId = "Hs1.providedBy"
        * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.providedBy"
        * text = "Rattachement organisationnel"
        * type = #string
        * required = true
        * repeats = false
        * readOnly = false
      * item[+]
        * linkId = "Hs1.meta.questionnaire"
        * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.meta"
        * type = #group
        * item[+]
          * linkId = "Hs1.meta.extension:ror-meta-nom-questionnaire"
          * definition = "https://interop.esante.gouv.fr/internal/ror-meta-nom-questionnaire#HealthcareService.meta.extension"
          * type = #group
          * item[+]
            * extension
              * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
              * valueBoolean = true
            * linkId = "Hs1.meta.extension:ror-meta-nom-questionnaire.url"
            * definition = "https://interop.esante.gouv.fr/internal/ror-meta-nom-questionnaire#HealthcareService.meta.extension.url"
            * type = #string
            * initial
              * valueString = "https://interop.esante.gouv.fr/internal/ror-meta-nom-questionnaire"
          * item[+]
            * extension
              * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
              * valueExpression
                * language = #text/fhirpath
                * expression = "%ror-structure.meta.extension.where(url = 'https://interop.esante.gouv.fr/internal/ror-meta-nom-questionnaire').value"
            * linkId = "Hs1.meta.extension:ror-meta-nom-questionnaire.value"
            * definition = "https://interop.esante.gouv.fr/internal/ror-meta-nom-questionnaire#HealthcareService.meta.extension.value"
            * text = "Modèle de saisie"
            * type = #string
            * required = true
            * readOnly = true
      * item[+]
        * linkId = "Hs1.extension:ror-healthcareservice-sensitive-unit"
        * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension"
        * type = #group
        * item[+]
          * extension
            * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
            * valueBoolean = true
          * linkId = "Hs1.extension:ror-healthcareservice-sensitive-unit.url"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-sensitive-unit.url"
          * type = #string
          * initial
            * valueString = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit"
        * item[+]
          * extension
            * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
            * valueExpression
              * language = #text/fhirpath
              * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit').value"
          * linkId = "Hs1.extension:ror-healthcareservice-sensitive-unit.value"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-sensitive-unit.value"
          * text = "Unité sensible"
          * type = #boolean
          * required = true
          * repeats = false
          * readOnly = false
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
        * valueCode = #default-open
      * linkId = "cinc#Hs1.informationsGenerales.informationsComplementaires"
      * text = "Informations complémentaires (identifiants techniques, dates, etc.)"
      * type = #group
      * item[+]
        * linkId = "Hs1.identifier"
        * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.identifier"
        * type = #group
        * item[+] 
          * extension 
            * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
            * valueExpression
              * language = #text/fhirpath
              * expression = "%ror-structure.identifier.where(type.coding.where(system = 'https://mos.esante.gouv.fr/NOS/TRE_R355-TypeIdentifiantOffre/FHIR/TRE-R355-TypeIdentifiantOffre')).value"
          * linkId = "Hs1.identifier.value"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.identifier.value"
          * text = "Identifiant de l'offre"
          * type = #string
          * required = true
          * repeats = false
          * readOnly = false
        * item[+] 
          * extension
            * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
            * valueBoolean = true
          * linkId = "Hs1.identifier.type"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.identifier.type"
          * type = #choice
          * answerValueSet = "https://mos.esante.gouv.fr/NOS/TRE_R355-TypeIdentifiantOffre/FHIR/TRE-R355-TypeIdentifiantOffre"
          * initial
            * valueCoding
              * code = #35
        * item[+]
          * extension
            * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
            * valueExpression 
              * language = #text/fhirpath
              * expression = "%ror-structure.id"
          * linkId = "Hs1.id"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.id"
          * text = "ID FHIR"
          * type = #url
          * required = true
          * readOnly = true
        * item[+]
          * linkId = "Hs1.extension:ror-meta-creation-date"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date#HealthcareService.extension"
          * type = #group
          * item[+]
            * extension
              * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
              * valueBoolean = true
            * linkId = "Hs1.extension:ror-meta-creation-date.url"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date#HealthcareService.extension.url"
            * type = #string
            * initial
              * valueString = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date"
          * item[+]
            * extension
              * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
              * valueExpression 
                * language = #text/fhirpath
                * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date').value"
            * linkId = "Hs1.extension:ror-meta-creation-date.value"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-organization-creation-date.value"
            * text = "Date de création technique"
            * type = #dateTime
            * required = true
            * readOnly = true
          * item[+]                                        
            * linkId = "Hs1.meta"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.meta"
            * type = #group
            * item[+]  
              * extension
                * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                * valueExpression 
                  * language = #text/fhirpath
                  * expression = "%ror-structure.meta.lastUpdated"
              * linkId = "Hs1.meta.lastUpdated"
              * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.meta.lastUpdated"
              * text = "Date de dernière mise à jour FHIR"
              * type = #dateTime
              * required = true
              * readOnly = true
            * item[+]
              * extension[+]
                * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                * valueExpression 
                  * language = #text/fhirpath
                  * expression = "%ror-structure.meta.tag"
              * extension[+]
                * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
                * valueBoolean = true
              * linkId = "Hs1.meta.tag"
              * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.meta.tag"
              * text = "Hs1.meta.tag"
              * type = #choice
              * required = false
              * readOnly = true
              * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR"
      * item[+]
        * linkId = "capc#Hs1.accueilEtPriseEnCharge"
        * text = "Accueil et prise en charge"
        * type = #group
        * item[+]
          * linkId = "Hs1.category"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.category"
          * type = #group
          * item[+]
            * extension
              * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
              * valueExpression
                * language = #text/fhirpath
                * expression = "%ror-structure.category.where(coding.system = 'https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation').coding"
            * linkId = "Hs1.category.coding"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.category.coding"
            * text = "Type d'offre"
            * type = #choice
            * required = true
            * repeats = false
            * readOnly = false
            * answerOption 
              * valueCoding 
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation"
                * code = #157
                * display = "Unité hospitalière de gynécologie et/ou obstétrique"
              * initialSelected = false
          * item[+]
            * linkId = "Hs1.characteristic:careMode"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic"
            * type = #group
            * item[+]
              * extension
                * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                * valueExpression
                  * language = #text/fhirpath
                  * expression = "%ror-structure.characteristic.where(coding.system = 'https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge').coding"
              * linkId = "Hs1.characteristic:careMode.coding"
              * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:careMode.coding"
              * text = "Mode de prise en charge"
              * type = #choice
              * required = true
              * repeats = false
              * readOnly = false
              * answerOption
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge"
                  * code = #09
                  * display = "Chirurgie ambulatoire"
                * initialSelected = false
              * answerOption
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge"
                  * code = #28
                  * display = "Hospitalisation complète (HC)"
                * initialSelected = false
              * answerOption
                * valueCoding
                  * code = #29
                  * display = "Hospitalisation de jour (HJ)"
                * initialSelected = false
              * answerOption
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge"
                  * code = #32
                  * display = "Consultation (CS) ou Séance"
                * initialSelected = false
              * answerOption
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge"
                  * code = #34
                  * display = "Hospitalisation de semaine (HS)"
                * initialSelected = false                  
              * answerOption
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge"
                  * code = #29
                  * display = "Hospitalisation de jour (HJ)"
                * initialSelected = false
              * answerOption
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge"
                  * code = #32
                  * display = "Consultation (CS) ou Séance"
                * initialSelected = false
              * answerOption
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge"
                  * code = #34
                  * display = "Hospitalisation de semaine (HS)"
                * initialSelected = false
        * item[+]
          * linkId = "Hs1.characteristic:receptionType"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic"
          * type = #group
          * item[+]
            * linkId = "Hs1.characteristic:receptionModality"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic"
            * type = #group
            * item[+]
              * extension
                * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                * valueExpression
                  * language = #text/fhirpath
                  * expression = "%ror-structure.characteristic.where(coding.system = 'https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil').coding"
              * linkId = "Hs1.characteristic:receptionModality.coding"
              * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:receptionModality.coding"
              * text = "Modalité d'accueil"
              * type = #choice
              * required = false
              * repeats = false
              * readOnly = false
              * answerOption
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil"
                  * code = #02
                  * display = "Prise en charge directe SMUR"
                * initialSelected = false
              * answerOption
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil"
                  * code = #03
                  * display = "En présentiel"
                * initialSelected = false
              * answerOption
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil"
                  * code = #04
                  * display = "Téléconsultation"
                * initialSelected = false
              * answerOption
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil"
                  * code = #09
                  * display = "Participation aux gardes/astreintes"
                * initialSelected = false
              * answerOption
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil"
                  * code = #10
                  * display = "Téléexpertise en moins de 24h"
                * initialSelected = false
              * answerOption
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil"
                  * code = #11
                  * display = "Téléexpertise en moins de 7 jours"
                * initialSelected = false
              * answerOption
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil"
                  * code = #12
                  * display = "Téléexpertise en plus de 7 jours"
                * initialSelected = false
            * item[+]
              * extension
                * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
                * valueCode = #default-open
              * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleconsultation"
              * text = "Téléconsultation"
              * type = #group
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '09')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where(url = 'telecomAddress').value"
                * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleconsultation.telecom.adresse-1"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/0.6.0/StructureDefinition-ror-healthcareservice-contact-telecom#telecomAddress"
                * text = "Lien vers l'outil de téléconsultation"
                * type = #string
                * required = false
                * repeats = false
                * readOnly = false
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '09')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where(url = 'telecomAddress').value"
                * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleconsultation.telecom.adresse-2"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/0.6.0/StructureDefinition-ror-healthcareservice-contact-telecom#telecomAddress"
                * text = "Lien vers l'outil de téléconsultation"
                * type = #string
                * required = false
                * repeats = false
                * readOnly = false
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '09')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where(url = 'telecomAddress').value"
                * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleconsultation.telecom.adresse-3"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/0.6.0/StructureDefinition-ror-healthcareservice-contact-telecom#telecomAddress"
                * text = "Lien vers l'outil de téléconsultation"
                * type = #string
                * required = false
                * repeats = false
                * readOnly = false
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '09')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where(url = 'telecomAddress').value"
                * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleconsultation.telecom.adresse-4"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/0.6.0/StructureDefinition-ror-healthcareservice-contact-telecom#telecomAddress"
                * text = "Lien vers l'outil de téléconsultation"
                * type = #string
                * required = false
                * repeats = false
                * readOnly = false
              * item[+]
                * extension                                 
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '09')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where(url = 'telecomAddress').value"
                * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleconsultation.telecom.adresse-5"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/0.6.0/StructureDefinition-ror-healthcareservice-contact-telecom#telecomAddress"
                * text = "Lien vers l'outil de téléconsultation"
                * type = #string
                * required = false
                * repeats = false
                * readOnly = false
            * item[+]
              * extension
                * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
                * valueCode = #default-open
              * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise"
              * text = "Téléexpertise"
              * type = #group
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression 
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '15')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where('https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel').value.coding.where(system = 'https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication').valueCodeableConcept"
                * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise.teleexpertise-1.canal"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-telecom-communication-channel"
                * text = "Canal de téléexpertise"
                * type = #choice
                * required = false
                * repeats = false
                * readOnly = false
                * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR"
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression 
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '15')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where(url = 'telecomAddress').value"
                * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise.teleexpertise-1.coordonnee"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/0.6.0/StructureDefinition-ror-healthcareservice-contact-telecom#telecomAddress"
                * text = "Coordonnée de téléexpertise"
                * type = #choice
                * required = false
                * repeats = false
                * readOnly = false
                * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR"
            * item[+]
              * extension
                * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
                * valueCode = #default-open
              * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise.teleexpertise-2"
              * text = "Téléexpertise"
              * type = #group
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression 
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '15')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where('https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel').value.coding.where(system = 'https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication').valueCodeableConcept"
                * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise.teleexpertise-2.canal"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-telecom-communication-channel"
                * text = "Canal de téléexpertise"
                * type = #choice
                * required = false
                * repeats = false
                * readOnly = false
                * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR"
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression 
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '15')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where(url = 'telecomAddress').value"
                * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise.teleexpertise-2.coordonnee"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/0.6.0/StructureDefinition-ror-healthcareservice-contact-telecom#telecomAddress"
                * text = "Coordonnée de téléexpertise"
                * type = #choice
                * required = false
                * repeats = false
                * readOnly = false
                * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR"
            * item[+]
              * extension
                * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
                * valueCode = #default-open
              * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise.teleexpertise-3"
              * text = "Téléexpertise"
              * type = #group
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression 
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '15')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where('https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel').value.coding.where(system = 'https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication').valueCodeableConcept"
                * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise.teleexpertise-3.canal"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-telecom-communication-channel"
                * text = "Canal de téléexpertise"
                * type = #choice
                * required = false
                * repeats = false
                * readOnly = false
                * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR"
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression 
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '15')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where(url = 'telecomAddress').value"
                * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise.teleexpertise-3.coordonnee"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/0.6.0/StructureDefinition-ror-healthcareservice-contact-telecom#telecomAddress"
                * text = "Coordonnée de téléexpertise"
                * type = #choice
                * required = false
                * repeats = false
                * readOnly = false
                * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR"
            * item[+]
              * extension
                * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
                * valueCode = #default-open
              * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise.teleexpertise-4"
              * text = "Téléexpertise"
              * type = #group
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression 
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '15')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where('https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel').value.coding.where(system = 'https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication').valueCodeableConcept"
                * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise.teleexpertise-4.canal"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-telecom-communication-channel"
                * text = "Canal de téléexpertise"
                * type = #choice
                * required = false
                * repeats = false
                * readOnly = false
                * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR"
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression 
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '15')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where(url = 'telecomAddress').value"
                * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise.teleexpertise-4.coordonnee"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/0.6.0/StructureDefinition-ror-healthcareservice-contact-telecom#telecomAddress"
                * text = "Coordonnée de téléexpertise"
                * type = #choice
                * required = false
                * repeats = false
                * readOnly = false
                * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR"
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
                  * valueCode = #default-open
                * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise.teleexpertise-5"
                * text = "Téléexpertise"
                * type = #group
                * item[+]
                  * extension
                    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                    * valueExpression 
                      * language = #text/fhirpath
                      * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '15')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where('https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel').value.coding.where(system = 'https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication').valueCodeableConcept"
                  * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise.teleexpertise-5.canal"
                  * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-telecom-communication-channel"
                  * text = "Canal de téléexpertise"
                  * type = #choice
                  * required = false
                  * repeats = false
                  * readOnly = false
                  * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR"
                * item[+]
                  * extension
                    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                    * valueExpression 
                      * language = #text/fhirpath
                      * expression = "%ror-structure.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact' and extension.where(url = 'purposeContact' and value.coding.code = '15')).extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom').extension.where(url = 'telecomAddress').value"
                  * linkId = "cvid#Hs1.accueilEtPriseEnCharge.teleexpertise.teleexpertise-5.coordonnee"
                  * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/0.6.0/StructureDefinition-ror-healthcareservice-contact-telecom#telecomAddress"
                  * text = "Coordonnée de téléexpertise"
                  * type = #choice
                  * required = false
                  * repeats = false
                  * readOnly = false
                  * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR"               
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
      * valueCode = #default-open
    * linkId = "cvid#Hs1.accueilEtPriseEnCharge.informationsSupplementaires"
    * text = "Informations supplémentaires"
    * type = #group
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
        * valueCode = #default-open
      * linkId = "cvid#Hs1.accueilEtPriseEnCharge.visiteADomicile"
      * text = "Visite à domicile"
      * type = #group
      * item[+]
        * linkId = "Hs1.characteristic:managementType"
        * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic"
        * type = #group
        * item[+]
          * extension
            * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
            * valueExpression 
              * language = #text/fhirpath
              * expression = "%ror-structure.characteristic.where(coding.system='https://mos.esante.gouv.fr/NOS/TRE_R236-ModeGestion/FHIR/TRE-R236-ModeGestion').coding"
          * linkId = "Hs1.characteristic:managementType.coding"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:managementType.coding"
          * text = "Mode de gestion"
          * type = #choice
          * required = false
          * repeats = false
          * readOnly = false
          * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J26-ModeGestion-ROR/FHIR/JDV-J26-ModeGestion-ROR"
      * item[+]                                  
        * linkId = "Hs1.extension:ror-territorial-division"
        * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension"
        * text = "Périmètre"
        * type = #group
        * required = false
        * repeats = true
        * readOnly = false
        * item[+]
          * extension
            * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
            * valueBoolean = true                                  
          * linkId = "Hs1.extension:ror-territorial-division.url"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-territorial-division.url"
          * type = #string
          * required = false
          * repeats = true
          * readOnly = false
          * initial                    
            * valueString = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division"
      * item[+]                                  
        * linkId = "Hs1.extension:ror-territorial-division.extension:typeTerritorialDivision"
        * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension.extension"
        * type = #group
        * required = false
        * repeats = true
        * readOnly = false
        * item[+]
          * extension
            * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
            * valueBoolean = true
          * linkId = "Hs1.extension:ror-territorial-division.extension:typeTerritorialDivision.url"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-territorial-division.extension:typeTerritorialDivision.url"
          * type = #string
          * required = false
          * repeats = true
          * readOnly = false
          * initial
            * valueString = "typeTerritorialDivision"
        * item[+] 
          * extension
            * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
            * valueExpression 
              * language = #text/fhirpath
              * expression = "%ror-structure.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division').extension.where(url='typeTerritorialDivision').value.coding"
          * linkId = "Hs1.extension:ror-territorial-division.extension:typeTerritorialDivision.valueCodeableConcept"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-territorial-division.extension:typeTerritorialDivision.value"
          * text = "Type"
          * type = #choice
          * required = false
          * repeats = true
          * readOnly = false
          * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J223-TypeDivisionTerritoriale-ROR/FHIR/JDV-J223-TypeDivisionTerritoriale-ROR"
                                
                            
        * item[+]                                  
          * linkId = "Hs1.extension:ror-territorial-division.extension:codeTerritorialDivision"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension.extension"
          * type = #group
          * required = false
          * repeats = true
          * readOnly = false
          * item[+]
            * extension
              * url =  "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
              * valueBoolean = true
            * linkId = "Hs1.extension:ror-territorial-division.extension:codeTerritorialDivision.url"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-territorial-division.extension:codeTerritorialDivision.url"
            * type = #string
            * required = false
            * repeats = true
            * readOnly = false
            * initial
              * valueString = "codeTerritorialDivision"
          * item[+] 
            * extension
              * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
              * valueExpression 
                * language = #text/fhirpath
                * expression = "%ror-structure.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division').extension.where(url='codeTerritorialDivision').value.coding"
            * linkId = "Hs1.extension:ror-territorial-division.extension:codeTerritorialDivision.valueCodeableConcept"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-territorial-division.extension:codeTerritorialDivision.value"
            * text = "Code"
            * type = #choice
            * required = false
            * repeats = true
            * readOnly = false
            * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J223-TypeDivisionTerritoriale-ROR/FHIR/JDV-J223-TypeDivisionTerritoriale-ROR"
      * item[+] 
        * linkId = "cpat#Hs1.patientele"
        * text = "Patientèle"
        * type = #group
        * required = true
        * repeats = false
        * readOnly = false
        * item[+]
          * linkId = "Hs1.extension:ror-healthcareservice-patient-type"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension"
          * type = #group
          * item[+]
            * extension
              * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
              * valueBoolean = true
            * linkId = "Hs1.extension:ror-healthcareservice-patient-type.url"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-patient-type.url"
            * type = #string
            * initial
              * valueString = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type"
        * item[+]                                        
          * linkId = "Hs1.extension:ror-healthcareservice-patient-type.extension:supportedPatientInfo"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension.extension"
          * type = #group
          * item[+]
            * extension
              * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
              * valueBoolean = true                                  
            * linkId = "Hs1.extension:ror-healthcareservice-patient-type.extension:supportedPatientInfo.url"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-patient-type.extension:supportedPatientInfo.url"
            * type = #string
            * initial                    
              * valueString = "supportedPatientInfo"
        * item[+]                                         
          * extension
            * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
            * valueExpression 
              * language = #text/fhirpath
              * expression = "%ror-structure.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type').extension.where(url='supportedPatientInfo').value.coding"                      
          * linkId = "Hs1.extension:ror-healthcareservice-patient-type.extension:supportedPatientInfo.valueCodeableConcept"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-patient-type.extension:supportedPatientInfo.value"
          * text = "Public(s) pris en charge"
          * type = #choice
          * required = true
          * repeats = false
          * readOnly = false
          * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J29-PublicPrisEnCharge-ROR/FHIR/JDV-J29-PublicPrisEnCharge-ROR"
        * item[+]
          * linkId = "Hs1.extension:ror-healthcareservice-patient-type.extension:ageRange"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension.extension"
          * type = #group
          * item[+]
            * extension
              * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
              * valueBoolean = true                                  
            * linkId = "Hs1.extension:ror-healthcareservice-patient-type.extension:ageRange.url"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-patient-type.extension:ageRange.url"
            * type = #string
            * initial                    
              * valueString = "ageRange"
          * item[+]                                  
            * linkId = "carg#Hs1.extension:ror-healthcareservice-patient-type.extension:ageRange.range@hgroup"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-patient-type.extension:ageRange.range"
            * type = #group
            * item[+]
              * linkId = "camn#Hs1.extension:ror-healthcareservice-patient-type.extension:ageRange.range.low@hgroup"
              * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-patient-type.extension:ageRange.value.low"
              * text = "Age minimum"
              * type = #group
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression 
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type').extension.where(url='ageRange').value.low.value"
                * linkId = "Hs1.extension:ror-healthcareservice-patient-type.extension:ageRange.range.low.value"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-patient-type.extension:ageRange.value"
                * text = "Age minimum"
                * type = #integer
                * required = true
                * repeats = false
                * readOnly = false
                * initial
                  * valueInteger = 0
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression 
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type').extension.where(url='ageRange').value.low.code"
                * linkId = "Hs1.extension:ror-healthcareservice-patient-type.extension:ageRange.range.low.unit"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-patient-type.extension:ageRange.value.low.code"
                * text = "Unité d'age minimum"
                * type = #choice
                * required = true
                * repeats = false
                * readOnly = false
                * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J37-UcumUniteTemps/FHIR/JDV-J37-UcumUniteTemps"
                * initial
                  * valueCoding
                    * system = "https://mos.esante.gouv.fr/NOS/TRE_R247-UcumUniteMesure/FHIR/TRE-R247-UcumUniteMesure"
                    * code = #d"
                    * display = "jour"
              * item[+]
                * extension[+]
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression 
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type').extension.where(url='ageRange').value.low.system"
                * extension[+]            
                  * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
                  * valueBoolean = true
                * linkId = "Hs1.extension:ror-healthcareservice-patient-type.extension:ageRange.range.low.system"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-patient-type.extension:ageRange.value.low.system"
                * text = "Unité d'age minimum"
                * type = #string
                * required = false
                * readOnly = true
            * item[+]
              * linkId = "camx#Hs1.extension:ror-healthcareservice-patient-type.extension:ageRange.range.high@hgroup"
              * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-patient-type.extension:ageRange.value.high"
              * text = "Age maximum"
              * type = #group
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression 
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type').extension.where(url='ageRange').value.high.value"
                * linkId = "Hs1.extension:ror-healthcareservice-patient-type.extension:ageRange.range.high.value"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-patient-type.extension:ageRange.value.high.value"
                * text = "Age maximum"
                * type = #integer
                * required = true
                * repeats = false
                * readOnly = false
                * initial
                  * valueInteger = 120
              * item[+]
                * extension
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression 
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type').extension.where(url='ageRange').value.high.code"
                * linkId = "Hs1.extension:ror-healthcareservice-patient-type.extension:ageRange.range.high.unit"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-patient-type.extension:ageRange.value.high.code"
                * text = "Unité d'age maximum"
                * type = #choice
                * required = true
                * repeats = false
                * readOnly = false
                * answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J37-UcumUniteTemps/FHIR/JDV-J37-UcumUniteTemps"
                * initial 
                  * valueCoding
                    * system = "https://mos.esante.gouv.fr/NOS/TRE_R247-UcumUniteMesure/FHIR/TRE-R247-UcumUniteMesure"
                    * code = #a"
                    * display = "année"
              * item[+]
                * extension[+]
                  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                  * valueExpression 
                    * language = #text/fhirpath
                    * expression = "%ror-structure.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type').extension.where(url='ageRange').value.high.system"
                * extension[+]
                  * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
                  * valueBoolean = true
                * linkId = "Hs1.extension:ror-healthcareservice-patient-type.extension:ageRange.range.high.system"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.extension:ror-healthcareservice-patient-type.extension:ageRange.value.high.system"
                * type = #string
                * required = false
                * readOnly = true
      * item[+]
        * linkId = "cspe#Hs1.specificites"
        * text = "Spécificités de l'offre"
        * type = #group
        * item[+]
          * linkId = "Hs1.specificites.activites"
          * text = "Activités"
          * type = #display
        * item[+]                         
          * linkId = "Hs1.specialty:operationalActivity"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.specialty"
          * type = #group
          * item[+]
            * extension
              * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
              * valueExpression 
                * language = #text/fhirpath
                * expression = "%ror-structure.specialty.where(coding.system='https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle').coding"
            * linkId = "Hs1.specialty:operationalActivity.coding"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.specialty:operationalActivity.coding"
            * text = "Activités opérationnelles"
            * type = #choice
            * required = true
            * repeats = true
            * readOnly = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #022"
                * display = "Chirurgie gynécologique"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #053"
                * display = "Gynécologie médicale"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #076"
                * display = "Soins palliatifs avec lits identifiés de soins palliatifs (LISP)"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #080"
                * display = "Médecine de la reproduction"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #105"
                * display = "Orthogénie"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #135"
                * display = "Sexologie médicale"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #164"
                * display = "Traitements médicamenteux systémiques du cancer (chimiothérapie)"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #190"
                * display = "Oncologie médicale gynécologique (cancérologie)"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #195"
                * display = "Oncologie médicale sénologique (cancer du sein) (cancérologie)"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #439"
                * display = "Gynécologie endocrinienne"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #510"
                * display = "Échographie obstétricale"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #545"
                * display = "Chimiothérapie intensive"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #590"
                * display = "Échographie gynécologique"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #537"
                * display = "Chirurgie oncologique urologique"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #538"
                * display = "Chirurgie oncologique gynécologique"
              * initialSelected = false
            * answerOption[+]    
              * valueCoding
                * system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"
                * code = #539"
                * display = "Chirurgie oncologique mammaire"
              * initialSelected = false
        * item[+]                         
          * linkId = "Hs1.specialty:operationalActivityFamily"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.specialty"
          * text = "Hs1.specialty:operationalActivityFamily (erreur $expand)"
          * type = #group
          * item[+]
            * linkId = "Hs1.specificites.specialisations"
            * text = "Spécialisations"
            * type = #display
          * item[+]
            * linkId = "Hs1.characteristic:specificAct"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic"
            * type = #group
            * item[+]
              * extension
                * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                * valueExpression 
                  * language = #text/fhirpath
                  * expression = "%ror-structure.characteristic.where(coding.system='https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique').coding"
              * linkId = "Hs1.characteristic:specificAct.coding"
              * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:specificAct.coding"
              * text = "Actes spécifiques"
              * type = #choice
              * required = false
              * repeats = true
              * readOnly = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0013
                  * display = "Examen victime d'agression sexuelle"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0016
                  * display = "Insémination Intra Utérine avec sperme de Conjoint (IIU)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0080
                  * display = "Chirurgie de l'infertilité féminine"
              * answerOption[+]
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0190
                  * display = "Endoscopie de l'utérus gravide"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0213
                  * display = "FIV avec Injection Intra Cytoplasmique de Spermatozoïdes (ICSI) (Aide Médicale à la Procréation AMP)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0266
                  * display = "Interruption de grossesse pour motif médical (IMG/ITG)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0267
                  * display = "Interruption volontaire de grossesse (IVG) chirurgicale"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0268
                  * display = "Interruption volontaire de grossesse (IVG) médicamenteuse"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0311
                  * display = "Chirurgie réparatrice de mutilations sexuelles (excision)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0342
                  * display = "Chirurgie du transsexualisme"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0363
                  * display = "Plastie de la vulve et du périnée"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0643
                  * display = "Insémination intra Utérine avec sperme de Donneur (IIU-D)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0737
                  * display = "Vaporisation laser du col de l'utérus"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0856
                  * display = "FIV avec Injection Intra Cytoplasmique de Spermatozoïdes morphologiquement sélectionnés (IMSI) (Aide Médicale à la Procréation AMP)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0887
                  * display = "Chirurgie sénologique"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1026
                  * display = "Colposcopie"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1027
                  * display = "Échographie pelvienne"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1028
                  * display = "Hystérosonographie"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1029
                  * display = "Hystéro-sono-salpingosongraphie (HyFosy)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1030
                  * display = "Préservation ovocytaire"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1031
                  * display = "Prise en charge médicale de la transidentité"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1032
                  * display = "Traitement inducteur de l'ovulation"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1187
                  * display = "Échographie pelvienne pour procréation médicalement assistée (PMA) (compte folliculaire)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1287
                  * display = "Programme d'ETP labellisée - Maladies de la nutrition"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1298
                  * display = "Programme d'ETP labellisée - Exercice physique pour la santé"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1301
                  * display = "Échographie de datation de grossesse"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1302
                  * display = "Echographie de mesure de la clarté nucale par PS agréé"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1303
                  * display = "Échographie morphologique du 2ème trimestre"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1304
                  * display = "Vérification échographique pré IVG (IPE)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1543
                  * display = "Test Rapide d’Orientation Diagnostique (TROD) Syphilis"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1375
                  * display = "Chirurgie oncologique des cancers urologiques avec atteinte vasculaire"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1376
                  * display = "Chirurgie oncologique des cancers urologiques avec atteinte lombo-aortique"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1377
                  * display = "Chirurgie oncologique des cancers gynécologiques avec atteinte péritonéale"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1378
                  * display = "Chirurgie oncologique de l'ovaire"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1152
                  * display = "Chirurgie de l'endométriose"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1380
                  * display = "Prise en charge de l'infertilité liée à l'endométriose"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1381
                  * display = "Diagnostic de l'endométriose complexe"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0104
                  * display = "Chirurgie endocrinienne"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0189
                  * display = "Endoscopie de l'appareil génital féminin (hystéroscopie)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0190
                  * display = "Endoscopie de l'utérus gravide"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0213
                  * display = "FIV avec Injection Intra Cytoplasmique de Spermatozoïdes (ICSI) (Aide Médicale à la Procréation AMP)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0266
                  * display = "Interruption de grossesse pour motif médical (IMG/ITG)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0267
                  * display = "Interruption volontaire de grossesse (IVG) chirurgicale"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0268
                  * display = "Interruption volontaire de grossesse (IVG) médicamenteuse"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0311
                  * display = "Chirurgie réparatrice de mutilations sexuelles (excision)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0342
                  * display = "Chirurgie du transsexualisme"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0363
                  * display = "Plastie de la vulve et du périnée"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0643
                  * display = "Insémination intra Utérine avec sperme de Donneur (IIU-D)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0737
                  * display = "Vaporisation laser du col de l'utérus"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0856
                  * display = "FIV avec Injection Intra Cytoplasmique de Spermatozoïdes morphologiquement sélectionnés (IMSI) (Aide Médicale à la Procréation AMP)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #0887
                  * display = "Chirurgie sénologique"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1026
                  * display = "Colposcopie"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1027
                  * display = "Échographie pelvienne"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1028
                  * display = "Hystérosonographie"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1029
                  * display = "Hystéro-sono-salpingosongraphie (HyFosy)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1030
                  * display = "Préservation ovocytaire"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1031
                  * display = "Prise en charge médicale de la transidentité"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1032
                  * display = "Traitement inducteur de l'ovulation"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1187
                  * display = "Échographie pelvienne pour procréation médicalement assistée (PMA) (compte folliculaire)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1287
                  * display = "Programme d'ETP labellisée - Maladies de la nutrition"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1298
                  * display = "Programme d'ETP labellisée - Exercice physique pour la santé"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1301
                  * display = "Échographie de datation de grossesse"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1302
                  * display = "Echographie de mesure de la clarté nucale par PS agréé"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1303
                  * display = "Échographie morphologique du 2ème trimestre"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1304
                  * display = "Vérification échographique pré IVG (IPE)"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1543
                  * display = "Test Rapide d’Orientation Diagnostique (TROD) Syphilis"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1375
                  * display = "Chirurgie oncologique des cancers urologiques avec atteinte vasculaire"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1376
                  * display = "Chirurgie oncologique des cancers urologiques avec atteinte lombo-aortique"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1377
                  * display = "Chirurgie oncologique des cancers gynécologiques avec atteinte péritonéale"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1378
                  * display = "Chirurgie oncologique de l'ovaire"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1152
                  * display = "Chirurgie de l'endométriose"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1380
                  * display = "Prise en charge de l'infertilité liée à l'endométriose"
                * initialSelected = false
              * answerOption[+]    
                * valueCoding
                  * system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique"
                  * code = #1381
                  * display = "Diagnostic de l'endométriose complexe"
                * initialSelected = false
        * item[+]                         
          * linkId = "Hs1.characteristic:outsideOfficeAct"
          * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic"
          * type = #group
          * item[+]
            * linkId = "Hs1.characteristic:takingCareSpeciality"
            * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic"
            * type = #group
            * item[+]
              * linkId = "Hs1.specificites.professionEtCompetences"
              * text = "Professions et compétences"
              * type = #display
            * item[+]
              * linkId = "Hs1.characteristic:ressourceProfession"
              * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic"
              * type = #group
              * item[+]
                * linkId = "Hs1.characteristic:specificCompetence"
                * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic"
                * type = #group
                * item[+]
                  * linkId = "Hs1.specificites.expertise"
                  * text = "Expertise"
                  * type = #display
                * item[+]
                  * linkId = "Hs1.characteristic:expertiseLevel"
                  * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic"
                  * type = #group
                  * item[+]
                    * extension
                      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
                      * valueExpression 
                        * language = #text/fhirpath
                        * expression = "%ror-structure.characteristic.where(coding.system='https://mos.esante.gouv.fr/NOS/TRE_R253-TypeMaternite/FHIR/TRE-R253-TypeMaternite' or coding.system='https://mos.esante.gouv.fr/NOS/TRE_R344-NiveauExpertise/FHIR/TRE-R344-NiveauExpertise').coding"
                    * linkId = "Hs1.characteristic:expertiseLevel.coding"
                    * definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:expertiseLevel.coding"
                    * text = "Niveau de recours dans le parcours de santé"
                    * type = #choice
                    * required = false
                    * repeats = true
                    * readOnly = false
                    * answerOption[+]    
                      * valueCoding
                        * system = "https://mos.esante.gouv.fr/NOS/TRE_R344-NiveauExpertise/FHIR/TRE-R344-NiveauExpertise"
                        * code = #26
                        * display = "Centre de recours pour chirurgie oncologique complexe"
                      * initialSelected = false
                    * answerOption[+]    
                      * valueCoding
                        * system = "https://mos.esante.gouv.fr/NOS/TRE_R344-NiveauExpertise/FHIR/TRE-R344-NiveauExpertise"
                        * code = #31
                        * display = "Filière endométriose - premier niveau de recours"
                      * initialSelected = false
                    * answerOption[+]    
                      * valueCoding
                        * system = "https://mos.esante.gouv.fr/NOS/TRE_R344-NiveauExpertise/FHIR/TRE-R344-NiveauExpertise"
                        * code = #32
                        * display = "Filière endométriose - deuxième niveau de recours"
                      * initialSelected = false
                    * answerOption[+]    
                      * valueCoding
                        * system = "https://mos.esante.gouv.fr/NOS/TRE_R344-NiveauExpertise/FHIR/TRE-R344-NiveauExpertise"
                        * code = #33
                        * display = "Filière endométriose - troisième niveau de recours"
                      * initialSelected = false



