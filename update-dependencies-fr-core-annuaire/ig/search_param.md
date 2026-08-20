# Critères de recherche - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* **Critères de recherche**

## Critères de recherche

### StructureDefinition-ror-location

* LimiteCaracteristiqueEquipement**/**typeCaracteristique: Metadonnee/dateMiseJour
  * equipment-feature: _lastUpdated
  * Non: Oui
  * token: date 
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Date de dernière mise à jour.
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: Metadonnee/regionSource
  * equipment-feature: _tag
  * Non: Oui
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Code de la région de la source de la donnée
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: idExterneSynchro
  * equipment-feature: identifier
  * Non: Oui
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: L'identifiant externe de synchronisation est l'identifiant défini par le porteur d'offre pour la zone d'hébergement des lits.Location.identifier.type = 26 | JDV_J236
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: identifiant
  * equipment-feature: identifier
  * Non: Oui
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Identifiant fonctionnel du lieu.Location.identifier.type = 25 | JDV_J236
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: fonctionLieu
  * equipment-feature: type
  * Non: Oui
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: La fonction correspond à la destination d'usage du lieuJDV_J198-FonctionLieu-ROR issu de la TRE_R343-FonctionLieu
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: Adresse/codePostal
  * equipment-feature: address-postalcode
  * Non: Oui
  * token: string
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Code Postal ou code postal spécifique CEDEX
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: Adresse/localite
  * equipment-feature: address-city
  * Non: Oui
  * token: string
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Localité ou Libellé du bureau distributeur CEDEX
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: Lieu/communeCOG
  * equipment-feature: commune-cog
  * Non: Non
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Code officiel géographique (COG) de la commune dans laquelle le lieu est situé.JDV-J124-Commune issu de la TRE_R13-Commune
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: CapacitePriseCharge/affectationTemporaire
  * equipment-feature: temporary-assignement
  * Non: Non
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: L'affectation temporaire permet de réserver tout ou partie des lits d'une zone d'hébergement pour des patients selon qu'ils soient -ou non- concernés par une pathologie (Covid+, Covid-, ...) ou un évènement (catastrophe naturelle, attentat, ...).JDV_J195-AffectationTemporaire-ROR issu de la TRE_R337-AffectationTemporaire 
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: CapaciteAccueilOperationnelle/statutCapacite
  * equipment-feature: capacity-status
  * Non: Non
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Permet de préciser le statut des lits décrits.JDV_J188-TypeStatutCapacite-ROR issu de la TRE-R330-TypeStatutCapacite
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: Statut
  * equipment-feature: operational-status
  * Non: Oui
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Indique si le lieu est opérationnel, fermé temporairement ou fermé définitivement.`draft`JDV_J204-StatutLieu-ROR issu de la TRE_R203-StatutLieu
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: CapaciteAccueilOperationnelle/nombreCapacite
  * equipment-feature: nb-capacity
  * Non: Non
  * token: number
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Quantité de lits ou places de la capacité exprimée.
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: CapaciteAccueilOperationnelle/natureCapacite
  * equipment-feature: capacity-type
  * Non: Non
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Indique si la capacité est exprimée en lits ou en places.JDV_J187-NatureCapacite-ROR issu de la TRE_R329-NatureCapacite
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: CapaciteAccueilOperationnelle/temporaliteCapacite
  * equipment-feature: temporality-capacity
  * Non: Non
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Indique le moment où cette capacité sera effective. Il est ainsi possible de décrire la situation immédiate, ou de fournir des informations prospectives de capacités, prenant notamment en compte les entrées et sorties déjà identifiés de patients.JDV_J189-TemporaliteCapacite-ROR issu de la TRE_R331-Temporalite
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: CapaciteAccueilOperationnelle/genreCapaciteDispo
  * equipment-feature: gender-capacity-available
  * Non: Non
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Genre des patients qui peuvent étre installés dans des lits disponibles.JDV_J190-GenreCapacite-ROR issu de la TRE_R332-GenreCapacite
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: CapaciteAccueilOperationnelle/typeFermetureCapacite
  * equipment-feature: capacity-closing-type
  * Non: Non
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Indique le statut de lits fermés, permettant d'identifier le nombre de lits fermés qui peuvent être réactivés en cas de besoin et le nombre de ceux qui ne peuvent pas l'être.JDV_J191-TypeFermetureCapacite-ROR issu de la TRE_R333-TypeFermetureCapacite
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: CapaciteAccueilOperationnelle/typeLitSupplementaire
  * equipment-feature: additional-bed-type
  * Non: Non
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Indique le statut de lits supplémentaires, pour identifier le nombre de lits supplémentaires déjà mobilisés et, par typologie de mobilisation possible, le nombre de lits qui ne le sont pas encore.JDV_J192-TypeLitSupplementaire-ROR issu de la TRE_R334-TypeLitSupplementaire
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: CapaciteAccueilOperationnelle/typeCrise
  * equipment-feature: crisis-type
  * Non: Non
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Indique le type de crise qui permet de mobiliser le nombre de lits supplémentaires décrits.JDV_J194-TypeCrise-ROR issu de la TRE_R336-TypeCrise
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: CapaciteAccueilOperationnelle/dateMAJCapacite
  * equipment-feature: capacity-update-date
  * Non: Non
  * token: date
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Date à laquelle la capacité d'accueil a été mise à jour dans la source.
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: EquipementSpecifique/typeEquipement
  * equipment-feature: equipment-type
  * Non: Non
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Les équipements spécifiques décrits sont des ressources propres de la structure ou mises à disposition dans le cadre d'une convention à la condition qu'elles soient utilisées sur site.JDV_J18-EquipementSpecifique-ROR issu de la TRE_R212-Equipement
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: LimiteCaracteristiqueEquipement/valeurLimite
  * equipment-feature: limit-value
  * Non: Non
  * token: quantity
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Correspond à la valeur extrême associée à une caractéristique de l'équipement.http://unitsofmeasure.org
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: CapaciteHabitation/typeHabitation
  * equipment-feature: residential-type
  * Non: Non
  * token: token
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Le type d'habitation renseigne sur la taille et le nombre de pièces d'un logement.JDV_J32-TypeHabitation-ROR issu de la TRE_R242-TypeHabitation
* LimiteCaracteristiqueEquipement**/**typeCaracteristique: CapaciteHabitation/nbHabitation
  * equipment-feature: residential-number
  * Non: Non
  * token: number
  * Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.JDV_J228-TypeCaracteristiqueEquipement-ROR: Nombre d'habitations du même type.

### StructureDefinition-ror-healthcareservice

Critères de recherches applicables à la ressource HealthcareService.

* Metadonnee/regionSource****: identifiantOffre
  * _tag: identifier
  * Oui: Oui
  * token: token
  * Code région de la source de la donnée.: Identifiant de l’offre
* Metadonnee/regionSource****: nomOffre (remplace nomOI)
  * _tag: name
  * Oui: Oui
  * token: string
  * Code région de la source de la donnée.: Dénomination sous laquelle l'offre est identifiée par le porteur d'offre et résultant de l'application de règles de bonne pratique pour être affichable auprès des professionnels comme du grand public.
* Metadonnee/regionSource****: typeOffre (remplace categorieOrganisation)
  * _tag: service-category
  * Oui: Oui
  * token: token
  * Code région de la source de la donnée.: Le type d'offre permet de distinguer les offres et de les classer en fonction de leur nature particulière, liée à un agrément, un personnel spécialement formé ou un environnement particulièrement adapté à l'état de santé des patients.JDV_J238-TypeOffre-ROR issu de la TRE_R244-CategorieOrganisation
* Metadonnee/regionSource****: champActivite
  * _tag: service-type
  * Oui: Oui
  * token: token
  * Code région de la source de la donnée.: Un champ d’activité indique le domaine dans lequel s'inscrit l'offre.JDV_J20-ChampActivite-ROR issu de la TRE_R227-ChampActivite
* Metadonnee/regionSource****: secteurPsychiatrique
  * _tag: psychiatric-sector
  * Oui: Non
  * token: string
  * Code région de la source de la donnée.: Le secteur de psychiatrie (ou sectorisation) correspond à une aire géographique à laquelle sont rattachées des structures de relais et de soins qui prennent en charge des patients résidants sur ce secteur.
* Metadonnee/regionSource****: modaliteAccueil (remplace accueilSequentielAccepte)
  * _tag: characteristic
  * Oui: Oui
  * token:  token 
  * Code région de la source de la donnée.: Une modalité d’accueil permet de préciser le mode de prise en charge géographiquement (ex. : sur le lieu de vie), technologiquement (ex. : téléconsultation) ou organisationnellement (ex. : accueil séquentiel).JDV_J226-ModaliteAccueil-ROR issu de la TRE_R338-ModaliteAccueil
* Metadonnee/regionSource****: specialisationPriseEnCharge
  * _tag: Une spécialisation de prise en charge correspond à un regroupement de troubles, de pathologies ou de déficiences qui nécessitent la mobilisation d'expertises, de compétences et/ou d'équipements spécifiques pouvant être discriminants dans le choix d’orientation du patient.JDV_J35-SpecialisationDePriseEnCharge-ROR issu de la TRE_R245-SpecialisationDePriseEnCharge
* Metadonnee/regionSource****: modePriseEnCharge
  * _tag: Le mode de prise en charge caractérise l'hébergement ainsi que le niveau de technicité et d'intensité des soins.JDV_J19-ModePriseEnCharge-ROR issu de la TRE_R213-ModePriseEnCharge
* Metadonnee/regionSource****: temporaliteAccueil
  * _tag: La temporalité d’accueil apporte une précision sur le mode de prise en charge. Elle indique si l'établissement médico-social accepte un accueil pour une durée limitée dans le temps, de 90 jours maximum par an.JDV_J30-TemporaliteAccueil-ROR issu de la TRE_R240-TemporaliteAccueil
* Metadonnee/regionSource****: typeFermeture (OffreOperationnelle)
  * _tag: Recherche sur la temporalité d'arrêt de réalisation de la prestation.JDV-J185-TypeFermeture-ROR
* Metadonnee/regionSource****: acteSpecifique
  * _tag: Un acte spécifique est une action menée par un ou plusieurs acteur(s) de santé dans le cadre d’une activité. Cet acte peut correspondre à une technique spécialisée ou traduire une expertise discriminante dans le parcours de santé. JDV_J16-ActeSpecifique-ROR issu de la TRE_R210-ActeSpecifique
* Metadonnee/regionSource****: professionRessource
  * _tag: La profession ressource traduit la mobilisation de métiers qui constituent un facteur différenciant dans la réalisation de la prestation.JDV_J186-ProfessionRessource-ROR issu de la TRE_R350-ProfessionRessource et TRE_R94-ProfessionSocial
* Metadonnee/regionSource****: niveauExpertise
  * _tag: Le niveau d'expertise atteste du niveau de ressources humaines et matérielles engagées dans la réalisation de l'offre et défini dans un cahier des charges officiel.JDV-J227-NiveauExpertise-ROR issu de la TRE_R253-TypeMaternite
* Metadonnee/regionSource****: competenceSpecifique
  * _tag: La compétence spécifique correspond à une capacité ou connaissance reconnue qui permet ou facilite l’accueil d’une personne. La compétence spécifique n’est ni une spécialité ordinale, ni une professionJDV-J33-CompetenceSpecifique-ROR issu de la TRE_R243-CompetenceSpecifique
* Metadonnee/regionSource****: zoneIntervention(DivisionTerritorial/code) 
  * _tag: intervention-zone
  * Oui: Non
  * token: token
  * Code région de la source de la donnée.: Correspond au code de la division territoriale du périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite JDV-J124-Commune, JDV-J248-DepartementOM-ROR, JDV-J237-RegionOM-ROR, JDV-J249-TerritoireSante-ROR, JDV-J247-Pays-ROR 
* Metadonnee/regionSource****: ActiviteOperationnelle/ activiteOperationnelle
  * _tag: specialty
  * Oui: Oui
  * token: token
  * Code région de la source de la donnée.: Une activité opérationnelle est un ensemble cohérent d’actions et de pratiques mises en œuvre pour répondre aux besoins en Santé de la personne. JDV_J17-ActiviteOperationnelle-ROR issu de la TRE_R211-ActiviteOperationnelle
* Metadonnee/regionSource****: Patientele/publicPrisEnCharge
  * _tag: patient-type
  * Oui: Non
  * token: token
  * Code région de la source de la donnée.: Ensemble de personnes qui présentent des caractèristiques psychologiques, intellectuelles, physiques, psycho-motrices, comportementales leur pemettant de bénéficier de la prestation décrite.JDV-J29-PublicPrisEnCharge-ROR issu de la TRE_R239-PublicPrisEnCharge
* Metadonnee/regionSource****: Patientele/ageMin
  * _tag: age-range-low
  * Oui: Non
  * token: quantity
  * Code région de la source de la donnée.: Age minimum (inclus) des personnes leur permettant de bénéficier de la prestation décrite.JDV_J37-UcumUniteTemps (système UCUM http://unitsofmeasure.org)
* Metadonnee/regionSource****: Patientele/ageMax
  * _tag: age-range-high
  * Oui: Non
  * token: quantity
  * Code région de la source de la donnée.: Age maximum (inclus) des personnes leur permettant de bénéficier de la prestation décrite.JDV_J37-UcumUniteTemps (système UCUM http://unitsofmeasure.org)
* Metadonnee/regionSource****: OffreOperationnelle/dateFermeture et datePrevisionnelleReouverture
  * _tag: notavailable-closing-reopeningdate
  * Oui: Non
  * token: date
  * Code région de la source de la donnée.: Paramètre de recherche pour rechercher la date dans la période de fermeture (during.start) et de réouverture prévisionnelle (during.end).

### StructureDefinition-ror-organization

Critères de recherches applicables à la ressource Organization.

* Metadonnee/regionSource****: idNat_Struct  
  * _tag: identifier
  * Oui: Oui
  * token: token
  * Code région de la source de la donnée.: Identification nationale de l'Entité Géographique définie dans le CI-SIS.
* Metadonnee/regionSource****: nomOI (OI) ou raisonSociale (EJ) ou denominationEG (EG) 
  * _tag: name
  * Oui: Oui
  * token: string
  * Code région de la source de la donnée.: Nom de l'organisation interne.
* Metadonnee/regionSource****: numFINESS
  * _tag: identifier
  * Oui: Oui
  * token: token
  * Code région de la source de la donnée.: Numéro FINESS de l'entité géographique.
* Metadonnee/regionSource****: categorieEG
  * _tag: type
  * Oui: Oui
  * token: token
  * Code région de la source de la donnée.: La catégorie d'établissement est le cadre réglementaire dans lequel s'exerce l'activité de l'entité géographique.JDV_J55-CategorieEG-ROR issu de TRE_R66-CategorieEtablissement, TRE_R316-AutreCategorieEtablissement et TRE_R02-SecteurActivite
* Metadonnee/regionSource****: typeOI
  * _tag: type
  * Oui: Oui
  * token: token
  * Code région de la source de la donnée.: Type d'organisation interne.JDV_J203-TypeOrganisationInterne-ROR/FHIR/JDV-J203-TypeOrganisationInterne-ROR issu de la TRE_R213-ModePriseEnCharge
* Metadonnee/regionSource****: zonePoser
  * _tag: drop-zone
  * Oui: Non
  * token: token
  * Code région de la source de la donnée.: Cet indicateur précise l’existence d’une zone de poser pour hélicoptère.
* Metadonnee/regionSource****: typeFermeture
  * _tag: closing-type
  * Oui: Non
  * token: token
  * Code région de la source de la donnée.: Type de fermeture de l'entité géographique, au sens des règles de gestion du SI FINESS (par exemple: fermeture définitive, fermeture provisoire).JDV-J201-TypeFermeture-ROR issu de la TRE_R286-TypeFermeture
* Metadonnee/regionSource****: dateFermeture
  * _tag: period-end
  * Oui: Non
  * token: date
  * Code région de la source de la donnée.: Date de fermeture de l'entité géographique. La date doit être supérieure à la date d’ouverture.
* Metadonnee/regionSource****: Tarif/typeTarif
  * _tag: price-type
  * Oui: Non
  * token: token
  * Code région de la source de la donnée.: Un type de tarif s’applique à une catégorie de services pour lesquels l’entité géographique a fixé un prix.JDV_J36-TypeTarif-ROR issu de la TRE_R246-TypeTarif
* Metadonnee/regionSource****: Tarif/montantTarif (Montant/valeur)
  * _tag: price-amount-value
  * Oui: Non
  * token: Number
  * Code région de la source de la donnée.: Montant du tarif des prestations et services : valeur.
* Metadonnee/regionSource****: ForfaitSocleHebergement + SupplementTarifHebergement/typeHabitation
  * _tag: price-residential-type
  * Oui: Non
  * token: token
  * Code région de la source de la donnée.: Précise les caractéristiques de l'hébergement.JDV_J32-TypeHabitation-ROR issu de TRE_R242-TypeHabitation 
* Metadonnee/regionSource****: TarifAccueilDeJour + TarifAidesHumaines + ForfaitSocleHebergement + TarifPortageRepas/conditionTarifaire
  * _tag: special-price
  * Oui: Non
  * token: token
  * Code région de la source de la donnée.: La condition tarifaire précise les conditions d’accès à un tarif modulé en fonction des critères relatifs à la personne.JDV_J39-ConditionTarifaire-ROR  issu TRE_R250-ConditionTarifaire
* Metadonnee/regionSource****: TarifDependance/groupeTarifaireDependance
  * _tag: price-dependency-level
  * Oui: Non
  * token: token
  * Code région de la source de la donnée.: Niveau de dépendance de la personne âgée accueillie qui sera associé à un tarif. Il y a 3 niveaux de tarifs selon le GIR.JDV_J27-GroupeTarifaireDependance-ROR issu de la TRE_R237-NiveauDependance 
* Metadonnee/regionSource****: ForfaitSocleHebergement + TarifDependance/temporaliteAccueil
  * _tag: price-welcome-type
  * Oui: Non
  * token: token
  * Code région de la source de la donnée.: Le tarif peut s’appliquer à un hébergement permanent ou à un hébergement temporaire.JDV_J30-TemporaliteAccueil-ROR issu de la TRE_R240-TemporaliteAccueil
* Metadonnee/regionSource****: Tarif/unitePrix
  * _tag: price-unit
  * Oui: Non
  * token: token
  * Code région de la source de la donnée.: Unité de référence pour évaluer le prix des prestations et services.JDV_J205-UnitePrix-ROR issu TRE_R228-UnitePrix
* Metadonnee/regionSource****: Tarif/dateDebutValiditeTarif
  * _tag: price-validity-start-date
  * Oui: Non
  * token: date
  * Code région de la source de la donnée.: Dernière date de début de validité du tarif indiqué.

### StructureDefinition-ror-practitioner

Critères de recherches applicables à la ressource Practitioner.


### StructureDefinition-ror-practitionerrole

Critères de recherches applicables à la ressource PractionerRole.


### StructureDefinition-ror-task

Critères de recherches applicables à la ressource Task.

* Identifiant****: -
  * Identifier: focus
  * Oui: Oui
  * token: Reference
  * Identifiant de l’anomalie.`draft`: Référence vers la ressource en anomalie.`draft`
* Identifiant****: Statut Métier
  * Identifier: business-status
  * Oui: Oui
  * token: token
  * Identifiant de l’anomalie.`draft`: Différent type de statut métier de l'anomalie.`draft`
* Identifiant****: Date création
  * Identifier: authored-on
  * Oui: Oui
  * token: date
  * Identifiant de l’anomalie.`draft`: Date création de l'anomalie `draft`

### StructureDefinition-ror-measure

Critères de recherches applicables à la ressource Measure.

* Identifiant****: Metadonnee/dateMiseJour
  * identifier: _lastUpdated
  * Oui: Oui
  * token: date 
  * Identifiant de l’indicateur.`draft`: Date de dernière mise à jour.`draft`
* Identifiant****: Sujet
  * identifier: topic
  * Oui: Oui
  * token: token
  * Identifiant de l’indicateur.`draft`: Sujet de l’indicateur.`draft`

### StructureDefinition-ror-measurereport

Critères de recherches applicables à la ressource MeasureReport.


**En complément, vous pouvez accéder aux Capability Statements [ici](artifacts.md#behavior-capability-statements)**

### StructureDefinition-ror-questionnaire

Critères de recherches applicables à la ressource Questionnaire.

* Description****: Metadonnee/dateMiseJour
  * description: _lastUpdated
  * Oui: Oui
  * string: date 
  * Critère pour rechercher dans la description. `draft`: Date de dernière mise à jour.
* Description****: Contexte d'usage
  * description: context
  * Oui: Oui
  * string: token
  * Critère pour rechercher dans la description. `draft`: Critère pour récupérer un ensemble de modèles de saisie par catégorie(s) d'EG définie(s) ainsi que potentiellemnt la spécialité ordinale et la profession `draft`
* Description****: Date de publication
  * description: date
  * Oui: Oui
  * string: date 
  * Critère pour rechercher dans la description. `draft`: Date de publication du modèle. `draft`
* Description****: Titre
  * description: title
  * Oui: Oui
  * string: string
  * Critère pour rechercher dans la description. `draft`: Critère pour rechercher dans le titre du modèle de saisie `draft`
* Description****: Nom technique du modèle
  * description: name
  * Oui: Oui
  * string: string
  * Critère pour rechercher dans la description. `draft`: Nom technique du modèle de saisie `draft` 

