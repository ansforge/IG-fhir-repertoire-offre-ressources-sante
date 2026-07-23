# Artifacts Summary - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [ROR-Consommateur](CapabilityStatement-ror-consommateur.md) | Capability Statement pour les systèmes qui sont autorisés à consommer les données du ROR. Le Répertoire Opérationnel des Ressources (ROR) est le gisement de données qui décrit les offres de santé au niveau national. |
| [ROR-Serveur](CapabilityStatement-ror-serveur.md) | Capability Statement pour le Système ROR National. Le Répertoire Opérationnel des Ressources (ROR) est le gisement de données qui décrit les offres de santé au niveau national. |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [ror-sp-additional-bed-type](SearchParameter-ror-sp-additional-bed-type.md) | Paramètre de recherche pour récupérer les types des lits disponnibles |
| [ror-sp-capacity-closing-type](SearchParameter-ror-sp-capacity-closing-type.md) | Paramètre de recherche pour récupérer le type de la fermeture de la capacité |
| [ror-sp-capacity-status](SearchParameter-ror-sp-capacity-status.md) | Paramètre de recherche pour récupérer le statut de la capacité. |
| [ror-sp-capacity-type](SearchParameter-ror-sp-capacity-type.md) | Paramètre de recherche pour récupérer la nature de la capacité. |
| [ror-sp-capacity-update-date](SearchParameter-ror-sp-capacity-update-date.md) | Paramètre de recherche pour récupérer la date à jour de la capacité |
| [ror-sp-crisis-type](SearchParameter-ror-sp-crisis-type.md) | Paramètre de recherche pour récupérer le type de la crise |
| [ror-sp-equipment-feature](SearchParameter-ror-sp-equipment-feature.md) | Paramètre de recherche pour récupérer le type de caractéristique d’un equipement. |
| [ror-sp-equipment-type](SearchParameter-ror-sp-equipment-type.md) | Paramètre de recherche pour récupérer le type d’un équipement. |
| [ror-sp-gender-capacity-available](SearchParameter-ror-sp-gender-capacity-available.md) | Paramètre de recherche pour récupérer le genre disponible de la capacité. |
| [ror-sp-healthcareservice-age-range-high](SearchParameter-ror-sp-healthcareservice-age-range-high.md) | Paramètre de recherche décrivant l’age maximum de la patientèle |
| [ror-sp-healthcareservice-age-range-low](SearchParameter-ror-sp-healthcareservice-age-range-low.md) | Paramètre de recherche décrivant l’age minimum de la patientèle |
| [ror-sp-healthcareservice-equipment-type](SearchParameter-ror-sp-healthcareservice-equipment-type.md) | Paramètre de recherche décrivant le type d’équipement de l’offre opérationnelle |
| [ror-sp-healthcareservice-intervention-zone](SearchParameter-ror-sp-healthcareservice-intervention-zone.md) | Paramètre de recherche décrivant la zone d’intervention |
| [ror-sp-healthcareservice-notavailable-closing-reopeningdate](SearchParameter-ror-sp-healthcareservice-notavailable-closing-reopeningdate.md) | Paramètre de recherche pour rechercher la date dans la période de fermeture (during.start) et de réouverture prévisionnelle (during.end). |
| [ror-sp-healthcareservice-patient-type](SearchParameter-ror-sp-healthcareservice-patient-type.md) | Paramètre de recherche décrivant le public pris en charge |
| [ror-sp-healthcareservice-psychiatric-sector](SearchParameter-ror-sp-healthcareservice-psychiatric-sector.md) | Paramètre de recherche décrivrant le secteur psychiatrique de l’offre opérationnelle |
| [ror-sp-limit-value](SearchParameter-ror-sp-limit-value.md) | Paramètre de recherche pour récupérer la valeur limite (poids, taille, etc..) de l’équipement |
| [ror-sp-location-commune-cog](SearchParameter-ror-sp-location-commune-cog.md) | Paramètre de recherche sur le code officiel géographique (cog) de la commune dans laquelle le lieu est situé |
| [ror-sp-location-near-insee-code](SearchParameter-ror-sp-location-near-insee-code.md) | Paramètre de recherche similaire au paramètre spécial “near”, à l’exception que celui-ci pointe sur l’adresse et non pas la position géographique |
| [ror-sp-nb-capacity](SearchParameter-ror-sp-nb-capacity.md) | Paramètre de recherche pour récupérer le nombre de la capacité. |
| [ror-sp-organization-closing-type](SearchParameter-ror-sp-organization-closing-type.md) | Paramètre de recherche décrivant le type de fermeture de l’entité géographique, au sens des règles de gestion du SI FINESS |
| [ror-sp-organization-drop-zone](SearchParameter-ror-sp-organization-drop-zone.md) | Paramètre de recherche permettant d’indiquer s’il y a une zone poser sur le site concerné |
| [ror-sp-organization-oi-name](SearchParameter-ror-sp-organization-oi-name.md) | Paramètre de recherche sur le nom de l’organisation interne |
| [ror-sp-organization-period-end](SearchParameter-ror-sp-organization-period-end.md) | Paramètre de recherche décrivant la date de fermeture de l’entité géographique |
| [ror-sp-organization-price-amount-value](SearchParameter-ror-sp-organization-price-amount-value.md) | Paramètre de recherche sur la valeur du tarif des prestations et services |
| [ror-sp-organization-price-dependency-level](SearchParameter-ror-sp-organization-price-dependency-level.md) | Paramètre de recherche sur le niveau de dépendance de la personne âgée accueillie |
| [ror-sp-organization-price-residential-type](SearchParameter-ror-sp-organization-price-residential-type.md) | Paramètre de recherche sur les caractéristiques de l’hébergement |
| [ror-sp-organization-price-type](SearchParameter-ror-sp-organization-price-type.md) | Paramètre de recherche sur le type de tarif |
| [ror-sp-organization-price-unit](SearchParameter-ror-sp-organization-price-unit.md) | Paramètre de recherche sur l’unité de référence pour évaluer le prix des prestations et services |
| [ror-sp-organization-price-validity-start-date](SearchParameter-ror-sp-organization-price-validity-start-date.md) | Paramètre de recherche sur la dernière date de début de validité du tarif indiqué |
| [ror-sp-organization-price-welcome-type](SearchParameter-ror-sp-organization-price-welcome-type.md) | Paramètre de recherche décrivant si le tarif s’applique à un hébergement permanent ou à un hébergement temporaire |
| [ror-sp-organization-special-price](SearchParameter-ror-sp-organization-special-price.md) | Paramètre de recherche sur la condition tarifaire |
| [ror-sp-residential-number](SearchParameter-ror-sp-residential-number.md) | Paramètre de recherche pour récupérer le nombre d’habitation |
| [ror-sp-residential-type](SearchParameter-ror-sp-residential-type.md) | Paramètre de recherche pour récupérer le type d’habitation |
| [ror-sp-temporality-capacity](SearchParameter-ror-sp-temporality-capacity.md) | Paramètre de recherche pour récupérer le moment où la capacité sera effective |
| [ror-sp-temporary-assignement](SearchParameter-ror-sp-temporary-assignement.md) | Paramètre de recherche pour récupérer les affectations temporaires |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [RORHealthcareService](StructureDefinition-ror-healthcareservice.md) | Profil créé dans le cadre du ROR pour décrire les prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d’une personne |
| [RORLocation](StructureDefinition-ror-location.md) | Profil créé dans le cadre du ROR pour décrire l’espace disposant d’un ensemble de ressources pour réaliser une offre. |
| [RORMeasure](StructureDefinition-ror-measure.md) | Définition de l’indicateur de pilotage du ROR National |
| [RORMeasureReport](StructureDefinition-ror-measurereport.md) | Valeur pour un indicateur de pilotage du ROR National |
| [ROROrganization](StructureDefinition-ror-organization.md) | Profil créé dans le cadre du ROR pour décrire les organismes du domaine sanitaire, médico-social et social immatriculés dans le FINESS et les organisations internes |
| [RORPractitioner](StructureDefinition-ror-practitioner.md) | Profil créée dans le cadre du ROR pour décrire les données d’identification pérennes d’une personne physique, qui travaille en tant que professionnel |
| [RORPractitionerRole](StructureDefinition-ror-practitionerrole.md) | Profil créé dans le cadre du ROR pour décrire les modalités d’exercice opérationnelles du profesionnel dans la réalisation de l’offre |
| [RORQuestionnaire](StructureDefinition-ror-questionnaire-healthcareservice.md) | Modèle de saisie des Offres Opérationnelles. Les questionnaires créés à partir de cette ressource sont utilisés par les établissements pour saisir leurs offres opérationnelles. |
| [RORTask](StructureDefinition-ror-task.md) | Anomalie concerant une donnée dans une ressource du ROR |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AsLieuDit](StructureDefinition-as-ext-lieu-dit.md) | Extension créée dans le cadre du ROR pour indiquer le lieu dit |
| [Profil de LaunchContextExtension créé dans le cadre du ROR afin d'ajouter le name 'ror-structure' acceptant les ressources FHIR 'Organization', 'HealthcareService' et 'Location'](StructureDefinition-ror-launchcontext.md) | Profil de l’extension http://hl7.org/fhir/uv/sdc/StructureDefinition-sdc-questionnaire-launchContext.html créé dans le cadre du ROR afin d’ajouter le name ‘structure’ acceptant les ressources FHIR ‘Organization’, ‘HealthcareService’ et ‘Location’ |
| [RORActType](StructureDefinition-ror-act-type.md) | Extension créée dans le cadre du ROR pour discriminer le type d’acte (spécifique ou hors cabinet) |
| [RORAvailableTimeEffectiveOpeningClosingDate](StructureDefinition-ror-available-time-effective-opening-closing-date.md) | Extension créée dans le cadre du ROR pour décrire le planning d’activité d’un professionnel ou d’une offre. |
| [RORAvailableTimeNumberDaysofWeek](StructureDefinition-ror-available-time-number-days-of-week.md) | Extension créée dans le cadre du ROR pour indiquer le numéro du jour dans la semaine. |
| [RORAvailableTimeTypeOfTime](StructureDefinition-ror-available-time-type-of-time.md) | Extension créée dans le cadre du ROR pour apporter un contexte à la plage horaire définie par la suite. Un planning peut être constitué de plusieurs plages horaires du même type ou de type différent. |
| [RORComment](StructureDefinition-ror-comment.md) | Extension créée dans le cadre du ROR pour décrire le commentaire qui permet à la structure de donner des informations complémentaires |
| [RORCommuneCog](StructureDefinition-ror-commune-cog.md) | Extension créée dans le cadre du ROR pour représenter le code officiel géographique (COG) de la commune dans laquelle le lieu est situé. |
| [RORConfidenceGeolocation](StructureDefinition-ror-confidence-geolocation.md) | Extension créée dans le cadre du ROR. Il s’agit d’une information supplémentaire pour signaler si la longitude et la latitude sont fiables. |
| [RORConfidentialityLevel](StructureDefinition-ror-confidentiality-level.md) | Extension créée dans le cadre du ROR pour définir le niveau de restriction de l’accès aux attributs de la classe Contact. |
| [RORContactConfidentialityLevel](StructureDefinition-ror-contact-confidentiality-level.md) | Extension créée dans le cadre du ROR qui permet de définir le niveau de restriction de l’accès aux attributs de la classe Contact |
| [RORContactDescription](StructureDefinition-ror-contact-description.md) | Extension créée dans le cadre du ROR qui indique la description du Contact. |
| [RORContactFunctionContact](StructureDefinition-ror-contact-function-contact.md) | Extension créée dans le cadre du ROR qui indique un titre, une position ou une fonction de la personne assurant le contact au sein de l’organisation (directeur, secrétaire, etc.). |
| [RORContactTelecomConfidentialityLevel](StructureDefinition-ror-contact-telecom-confidentiality-level.md) | Extension créée dans le cadre du ROR |
| [RORContactTelecomUsage](StructureDefinition-ror-contact-telecom-usage.md) | Extension créée dans le cadre du ROR |
| [RORCoordinateReliability](StructureDefinition-ror-coordinate-reliability.md) | Extension créée dans le cadre du ROR pour signaler si les informations des coordonnées géographiques sont issues d’un mode de production qui assure un certain niveau de fiabilité |
| [RORHealthcareServiceContact](StructureDefinition-ror-healthcareservice-contact.md) | Extension créée dans le cadre du ROR pour décrire la personne ou le service qui agit comme point de contact de l’offre. |
| [RORHealthcareServiceContactTelecom](StructureDefinition-ror-healthcareservice-contact-telecom.md) | Extension créée dans le cadre du ROR pour les télécommunications du contact. |
| [RORHealthcareServiceNoConsentHabilitation](StructureDefinition-ror-healthcareservice-no-consent-habilitation.md) | Extension créée dans le cadre du ROR qui permet d’identifier les offres pour lesquelles un établissement est autorisé par le directeur général de l’ARS après avis du préfet, à prendre en charge des patients sans leur consentement. |
| [RORHealthcareServicePatientType](StructureDefinition-ror-healthcareservice-patient-type.md) | Extension créée dans le cadre du ROR pour décrire un ensemble de personnes qui répondent à des critères leur permettant de bénéficier de la prestation décrite |
| [RORHealthcareServicePsychiatricSector](StructureDefinition-ror-healthcareservice-psychiatric-sector.md) | Extension créée dans le cadre du ROR qui correspond à une aire géographique à laquelle sont rattachées des structures de relais et de soins qui prennent en charge des patients résidants sur ce secteur. |
| [RORHealthcareServiceSensitiveUnit](StructureDefinition-ror-healthcareservice-sensitive-unit.md) | Extension créée dans le cadre du ROR pour signaler que toutes les informations de description d’une offre sont confidentielles car elles présentent un risque d’utilisation à des fins malveillantes, ou que le porteur d’offre ne souhaite pas diffuser. |
| [RORLocationEquipment](StructureDefinition-ror-location-equipment.md) | Extension créée dans le cadre du ROR pour décrire une ressource matérielle discriminante pour la réalisation d’une prestation. Cette extension a été créée, car Device ne correspondait pas à la définition de l’équipement pour le ROR. Device représente une instance d’un équipement alors l’équipement pour le ROR correspond juste au nombre d’équipement de même type. |
| [RORLocationEquipmentLimit](StructureDefinition-ror-location-equipment-limit.md) | Extension créée dans le cadre du ROR qui précise les limites que peut supporter l’équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation. |
| [RORLocationResidentialCapacity](StructureDefinition-ror-location-residential-capacity.md) | Extension créée dans le cadre du ROR qui décrit un type d’habitation adapté à la réalisation d’une offre. |
| [RORLocationSupportedCapacity](StructureDefinition-ror-location-supported-capacity.md) | Extension créée dans le cadre du ROR qui indique une série d’enregistrements indiquant la quantité de lit (ou de place) de l’entité pour un statut et une temporalité donnés. |
| [RORMetaComment](StructureDefinition-ror-meta-comment.md) | Extension créée dans le cadre du ROR qui correspond au commentaire présent dans les métadonnées. |
| [RORMetaCreationDate](StructureDefinition-ror-meta-creation-date.md) | Extension créée dans le cadre du ROR qui correspond à la date de création (dans le ROR régional) présente dans les métadonnées. |
| [RORMetaQuestionnaireUsedAsATemplate](StructureDefinition-ror-meta-questionnaire-used-as-a-template.md) | Extension créée dans le cadre du ROR qui correspond au questionnaire de saisie utilisé comme modèle associé à la ressource. |
| [ROROrganizationAccessibilityLocation](StructureDefinition-ror-organization-accessibility-location.md) | Extension créée dans le cadre du ROR qui précise dans quelle mesure les locaux sont conformes aux dispositions règlementaires relatives à l’accessibilité des établissements recevant du public. |
| [ROROrganizationAccomodationFamily](StructureDefinition-ror-organization-accomodation-family.md) | Extension créée dans le cadre du ROR pour préciser si l’établissement peut héberger les familles des personnes prises en charge. |
| [ROROrganizationAdditionalName](StructureDefinition-ror-organization-additional-name.md) | Extension créée dans le cadre du ROR pour nom complémentaire de l’EJ (complementRaisonSociale) ou nom complémentaire de l’EG (DenominationEG) |
| [ROROrganizationClosingType](StructureDefinition-ror-organization-closing-type.md) | Extension créée dans le cadre du ROR pour définir le type de fermeture de l’organisation. |
| [ROROrganizationComment](StructureDefinition-ror-organization-comment.md) | Extension créée dans le cadre du ROR pour décrire le commentaire qui permet à la structure de donner des informations complémentaires |
| [ROROrganizationCreationDate](StructureDefinition-ror-organization-creation-date.md) | Extension créée dans le cadre du ROR pour définir la date de création de l’entité juridique. |
| [ROROrganizationDropZone](StructureDefinition-ror-organization-drop-zone.md) | Extension créée dans le cadre du ROR pour préciser l’existence d’une zone de poser pour hélicoptère sur le site concerné. |
| [ROROrganizationFinancialHelpType](StructureDefinition-ror-organization-financial-help-type.md) | Extension créée dans le cadre du ROR pour préciser l’aide financière pour laquelle l’EG dispose d’une habilitation ou conventionnement qui permet aux personnes accueillies d’en bénéficier si elles remplissent les conditions. |
| [ROROrganizationLevelRecourseORSAN](StructureDefinition-ror-organization-level-recours-orsan.md) | Extension créée dans le cadre du ROR pour décrire une hiérarchisation fonctionnelle de la mobilisation des établissements pour accueillir les patients après régulation par le SAMU. |
| [ROROrganizationNbPermanentSocialHelpPlace](StructureDefinition-ror-organization-nb-permanent-social-help-place.md) | Extension créée dans le cadre du ROR pour indiquer le nombre de places permanentes dédiées à l’aide sociale dans l’établissement |
| [ROROrganizationNbTemporarySocialHelpPlace](StructureDefinition-ror-organization-nb-temporary-social-help-place.md) | Extension créée dans le cadre du ROR pour indiquer le nombre de places temporaires dédiées à l’aide sociale dans l’établissement |
| [ROROrganizationPrice](StructureDefinition-ror-organization-price.md) | Extension créée dans le cadre du ROR pour permettre de définir les tarifs des prestations et services d’une entité géographique. |
| [ROROrganizationReopeningDate](StructureDefinition-ror-organization-reopening-date.md) | Extension créée dans le cadre du ROR pour définir la date prévisionnelle de réouverture de l’organisation interne. |
| [RORPractitionerRoleName](StructureDefinition-ror-practitionerrole-name.md) | Extension créée dans le cadre du ROR pour définir l’identité d’exercice d’un professionnel |
| [RORPractitionerRoleUnitExerciseMode](StructureDefinition-ror-practitionerrole-unit-exercise-mode.md) | Extension créée dans le cadre du ROR qui correspond au statut du professionnel lorsqu’il exerce dans le cadre de l’offre décrite. |
| [RORTelecomCommunicationChannel](StructureDefinition-ror-telecom-communication-channel.md) | Extension créée dans le cadre du ROR spécifiant le canal ou la manière dont s’établit la communication |
| [RORTelecomConfidentialityLevel](StructureDefinition-ror-telecom-confidentiality-level.md) | Extension créée dans le cadre du ROR qui permet de définir le niveau de restriction de l’accès aux attributs de la classe Télécommunication. |
| [RORTelecomUsage](StructureDefinition-ror-telecom-usage.md) | Extension créée dans le cadre du ROR qui précise l’utilisation du canal de communication |
| [RORTerritorialDivision](StructureDefinition-ror-territorial-division.md) | Extension créée dans le cadre du ROR qui correspond au périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite. Cela inclut notamment les divisions territoriales dans lesquelles les professionnels se déplacent. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Fusion des valuesets pour le code de la division territoriale](ValueSet-code-region-territorial-division-ror-valueset.md) | ValueSet regroupant des valuesets du NOS pour le code de la division territoriale |
| [Statuts autorisés pour les Questionnaires ROR](ValueSet-ror-questionnaire-status-vs.md) | Restriction des statuts de publication FHIR aux valeurs applicables aux modèles de saisie ROR. La valeur ‘unknown’ est exclue. |
| [Value Set afin d'étendre le Value Set pour query parameter includeAssociatedData](ValueSet-ror-include-associated-data-vs.md) | Value Set pour étendre http://hl7.org/fhir/uv/bulkdata/ValueSet/include-associated-data et utiliser _[custom value] pour utiliser le query parameter includeAssociatedData |
| [Value Set pour le contexte standard du lancement d'un questionnaire dans le cadre du ROR](ValueSet-ror-launch-context-vs.md) | Extension du Value Set https://hl7.org/fhir/uv/sdc/ValueSet-launchContext.html afin de l’adapter au contexte de lancement des questionnaires dans le cadre du ROR |
| [Value Set type pour le contexte d'usage du modèle de saisie](ValueSet-ror-usage-context-type-vs.md) | Extension du Value Set http://hl7.org/fhir/ValueSet/usage-context-type pour fixer le type de contexte d’usage du modèle de saisie avec le code EG ou le S pour Spécialité ordinale ou P01 pour le type de profession |
| [Valueset type d'acte](ValueSet-act-type-ror-valueset.md) | Valueset type d’acte |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ActTypeRORCodeSystem](CodeSystem-act-type-ror-codesystem.md) | CodeSystem pour le type d’acte pour les slices de characteristic concernant les actes dans la ressource ROR HealthcareService |
| [Code System (CS) utilisé pour étendre le CS original avec le query parameter includeAssociatedData](CodeSystem-ror-include-associated-data-code-system.md) | Code system pour étendre https://hl7.org/fhir/uv/bulkdata/CodeSystem-include-associated-data.html pour ajouter l’opération export pour le ROR |
| [Code System définissant le contexte standard du lancement d'un questionnaire dans le cadre du ROR](CodeSystem-ror-launch-context-codesystem.md) | Code System pour étendre http://hl7.org/fhir/uv/sdc/CodeSystem-launchContext.html afin de l’adapter au contexte de lancement des questionnaires dans le cadre du ROR |
| [InputTaskRORCodeSystem](CodeSystem-input-task-ror-codesystem.md) | Code System pour la définition des éléments spécifiques de input dans ressource RORTask |
| [OutputTaskRORCodeSystem](CodeSystem-output-task-ror-codesystem.md) | Code System pour la définition des éléments spécifiques de output dans ressource RORTask |
| [UsageContextRORCodeSystem](CodeSystem-usage-context-ror-codesystem.md) | CodeSystem pour définir le type de catégorie du contexte d’usage des instances de questionnaire dans le cadre du ROR |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Unité hospitalière de gynécologie](Questionnaire-ror-questionnaire-offre-mco.md) | Extrait du questionnaire (modèle de saisie) permettant de renseigner l’Offre Opérationnelle d’une unité hospitalière de gynécologie |
| [ror-healthcareservice-exemple](HealthcareService-1234564.md) | Exemple de HealthcareService ROR - Unité hospitalière de gynécologie (Chirurgie gynécologique - HC) |
| [ror-location-exemple](Location-ror-location-exemple.md) | Exemple ‘fake’ pour RORLocation n’ayant pas forcément de cohérence fonctionnelle. |
| [ror-task-exemple](Task-ror-task-exemple.md) | Exemple ‘fake’ pour RORTask n’ayant pas forcément de cohérence fonctionnelle |

