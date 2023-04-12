A ce jour, le webservice a pour vocation de répondre aux cas d'usage suivants :
-   Consultation des données capacitaires en lits et places
-   Consultation de l'offre (extraction)
-   Recherche d'offre sur critères principaux
-   Recherche d'offre avec données capacitaires
-   Signalement d’anomalie
-   Mise à jour d’anomalie
-   Consultation d’anomalie
  
<blockquote class="stu-note">
<p><b>Définition d’une Anomalie dans le ROR:</b>
 Une anomalie est une irrégularité sur une description d’offre de santé. (exemple adresse, numéro de téléphone, numéro FINESS, RPPS, spécialité etc…)
Il existe différents types d’anomalies dans le contexte ROR national:
  <ul>
    <li>Le non-respect d’une exigence qualité : toute offre ne respectant pas une exigence qualité sera être indiquée en écart par rapport à cette règle. 
    Exemple d’exigence : Les établissements sont peuplés selon les critères de peuplement définis par l'ANS → cet écart sera remonté au responsable d'établissement</li>
    <li>L’utilisation d’une nomenclature obsolète.</li>
    <li>Une anomalie déclarée sur une offre :  un utilisateur peut en effet identifier qu’une information n’est pas correcte sur la description d’une offre.</li>
  </ul>
Toute suspicion d’anomalie peut être jugée infondée par le responsable de l’offre ou un responsable qualité régional ou de l’établissement concerné.
</p>
</blockquote>

Pour les cas d'usage couverts par ce webservice :
-   Les préconditions sont :
    -   Le système consommateur dispose des points d'accès et des moyens d'authentification (authentification mTLS avec des certificats IGC-Santé) pour accéder aux             données du ROR National.   
    -   Le système consommateur peut uniquement effectuer les recherches autorisées par son profil d'accès aux données. Plus d'information [ici](https://esante.gouv.fr/sites/default/files/media_entity/documents/ANS-ROR_Doctrine-Urbanisation_annexe_Politique%20d%27acc%C3%A8s%20V2.5%20cible.pdf) .
-   Les postconditions sont :
    -   L'exécution des transactions ne provoquera aucune modification sur les données sources extraites.

### Consultation des données capacitaires

#### Description du cas d'usage

Un consommateur cherche les capacités des lieux de réalisation de l'offre à partir de critères de recherche.

Le consommateur renseigne son (ses) critère(s) de recherche parmi les critères disponibles.

Le ROR National répond au consommateur les lieux de réalisation de l'offre correspondant aux critères de recherche et les identifiants des offres opérationnelles liées.

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="image6.png" alt="Recherche capacité (modèle expo V3.0)" title="Recherche capacité (modèle expo V3.0)">
            </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 2 - Recherche capacité (modèle expo V3.0)</b>
        </td>
    </tr>
</table>

#### Scénarios

-   Scénario 1 : Données capacitaires sur le périmètre national

    -   un consommateur souhaite récupérer l\'ensemble des données capacitaires sur le périmètre national afin de mettre à jour son système (Exemple de ROR urgence qui souhaite afficher l\'ensemble des capacités sur une carte).

-   Scénario 2 : Données capacitaires sur un lieu de prise en charge identifié

    -   un consommateur souhaite mettre à jour dans son système les données de capacité sur un lieu de prise en charge -\> il connait un des identifiants identifiant de point de saisie ou identifiant externe de synchronisation et demande à lire une donnée capacitaire en particulier.

-   Scénario 3 : Données capacitaires sur plusieurs lieux de prise en charge identifiés

    -   un consommateur souhaite mettre à jour dans son système les données de capacité en lits/places de certains lieux de prise en charge (il connait les identifiants et demande à lire la liste de ces données capacitaires).

-   Scénario 4 : Données capacitaires à partir d'une date de mise à jour

    -   un consommateur souhaite mettre à jour dans son système les données capacitaires mises à jour dans le ROR national depuis une date qu’il précise.

-   Scénario 5 : Données capacitaires d'une offre opérationnelle

    -   un consommateur ayant recherché au préalable une offre de santé correspondant à ses critères (exemple : Urgences spécialisées cardiologiques via le service de recherche sur le modèle d'exposition 2.4 du ROR) souhaite connaitre la situation des capacités pour ces offres. Le service de recherche lui ayant renvoyé les identifiants de ces offres, il les passe en  paramètre de la recherche.

### Consultation de l'offre (synchronisation)

#### Description du cas d'usage

Un consommateur souhaite :

-   Faire une extraction complète sans critère

-   Faire une extraction complète sur une région

-   Consulter une offre à partir de son identifiant

-   Consulter une offre à partir de l\'identifiant de son établissement

-   Faire une extraction complète des offres (modèle complet) modifiées depuis une date

Il y a deux cas possibles :

-   Extraction totale : Le consommateur renseigne si besoin son (ses) critère(s) de recherche parmi les critères disponibles. Le ROR National répond au consommateur les offres opérationnelles correspondant aux critères de recherche et toutes les classes liées à l'offre opérationnelle.

-   Extraction partielle : Le consommateur renseigne si besoin son (ses) critère(s) de recherche parmi les critères disponibles et sélectionne les attributs de l'offre opérationnelle qu'il souhaite recevoir. Le ROR National répond au consommateur les attributs demandés des offres opérationnelles correspondant aux critères de recherche et les organisations liées à ces offres opérationnelles.

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="image7.png" alt="Extraction complète offre" title="Extraction complète offre)">
        </div>
        </td>
         <td align ="center">
            <div class="figure">
                <img src="image8.png" alt="Extraction partielle offre"  title="Extraction partielle offre)">
            </div>
        </td>        
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 3 -- Extraction complète de l'offre</b>
        </td>
        <td align ="center">
            <b>Figure 4 - Extraction partielle de l'offre</b>
        </td>
    </tr>
</table>


#### Scénarios

-   Scénario 1 : Extraction complète

    -   Un consommateur souhaite mettre à jour toutes les offres de santé sur le périmètre nationale

-   Scénario 2 : Extraction de l’ensemble des offres de santé d’un établissement

    -   Un consommateur souhaite rechercher l\'offre de santé proposée par un établissement

-   Scénario 3 : Extraction d'une offre de santé identifiée

    -   Un consommateur souhaite rechercher une offre de santé à partir de son identifiant

-   Scénario 4 : Extraction à partir d'une date de mise à jour de l'offre opérationnelle

    -   Un consommateur souhaite mettre à jour toute l\'offre mise à jour depuis une certaine date précisée par le consommateur.

-   Scénario 5 : Extraction à partir d’une date de mise à jour de l’entité géographique

    -   Un consommateur souhaite mettre à jour toute l\'offre dont l'entité géographique est mise à jour depuis une certaine date

-   Scénario 6 : Extraction à partir d'une date de mise à jour d'un des éléments de l'offre

    -   Un consommateur souhaite mettre à jour dans son système toute l'offre mise à jour depuis une certaine date ou dont l’organisation est mise à jour depuis une certaine date

-   Scénario 7 : Extraction de l'offre sur un périmètre limité

    -   Un consommateur souhaite mettre à jour toute l\'offre de santé d\'une région. Comme il n\'utilise qu'un sous-ensemble des informations de l\'offre, il souhaite ne recevoir que ces informations.

-	Scénario 8 : Extraction d’une offre de santé identifiée avec anomalie

    -   Un consommateur souhaite rechercher une offre de santé à partir de son identifiant et consulter les anomalies associées si elle sont existantes 


### Recherche d'offre sur critères principaux

#### Description du cas d'usage

Un consommateur cherche des offres opérationnelles à partir de critère(s) de recherche.

Le consommateur renseigne son (ses) critère(s) de recherche parmi les critères disponibles.

Le ROR National répond au consommateur les offres opérationnelles correspondant aux critères de recherche et toutes les classes liées à l'offre opérationnelle.

<table align="center">
    <tr>
        <td align ="center">
        <div class="figure">
            <img src="image9.png" alt="Recherche offre" title="Recherche offre">
        </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 5 - Recherche offre</b>
        </td>
    </tr>
</table>


#### Scénarios

-   Scenario 1 : Recherche sur un critère en saisissant une valeur

    -   Un consommateur cherche les offres ayant une activité opérationnelle qui correspond à l'unique valeur recherchée par le consommateur

-   Scenario 2 : Recherche sur un critère en saisissant une liste de valeurs

    -   Un consommateur cherche les offres ayant une activité opérationnelle qui correspond à l'une des valeurs recherchées par le consommateur

-   Scenario 3 : Recherche multicritères #1 -- ET

    -   Un consommateur cherche les offres ayant un type d'offre **ET** une modalité d'accueil qu’il indique

-   Scenario 4 : Recherche multicritères #2 -- OU

    -   Un consommateur cherche les offres ayant à un type d'offre  **OU** une activité opérationnelle qu’il indique

-   Scenario 5 : Recherche multicritères #3 -- ET/OU

    -   Un consommateur recherche les offres ayant (une catégorie d'établissement **OU** un type d'offre) **ET** un acte spécifique qu’il indique

-   Scenario 6 : Recherche à proximité géographique

    -   Un consommateur cherche les offres ayant une activité opérationnelle, dans un périmètre géographique proche du lieu de résidence d\'un patient

-   Scenario 7 : Recherche sur une zone d'intervention

    -   Un consommateur cherche les offres proposées dans une commune faisant partie d\'une zone d\'intervention

-   Scenario 8 : Recherche sur un département

    -   Un consommateur recherche les offres sur un département, ou un ensemble de département (code postal)

-   Scenario 9 : Recherche sur une ville #1 -- Code Postal

    -   Un consommateur recherche les offres sur une ville, ou un ensemble de villes (code postal)

-   Scenario 10 : Recherche sur une ville #2 -- Code commune

    -   Un consommateur recherche les offres sur une ville, ou un ensemble de villes (code commune)

-   Scenario 11 : Recherche sur un critère du modèle d'exposition 3.0

    -   Un consommateur recherche les offres proposant une modalité d\'accueil et un niveau d\'expertise (critères modèle 3.0)
  
-    Scenario 12 : Recherche d’offre en anomalie

     -   Un responsable qualité recherche les offres en anomalie de sa région.


### Recherche d'offre avec données capacitaires

#### Description du cas d'usage

Un consommateur cherche les capacités des lieux de réalisation de l'offre à partir de critère(s) de recherche.

Le consommateur renseigne son (ses) critère(s) de recherche parmi les critères disponibles.

Le ROR National répond au consommateur les offres opérationnelles correspondant aux critères de recherche et les lieux de réalisation de l'offre liés.

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="image10.png" alt="Recherche offre avec données capacitaires" title="Recherche offre avec données capacitaires">
            </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 6 - Recherche offre avec données capacitaires</b>
        </td>
    </tr>
</table>

#### Scénarios

-   Scenario 1 : Recherche sur un critère capacitaire #1

    -   Un consommateur cherche les offres proposant une activité opérationnelle et disposant d\'un lit disponible

-   Scenario 2 : Recherche sur un critère capacitaire #2

    -   Un consommateur cherche les offres proposant une activité opérationnelle et disposant d\'un lit fermé réouvrable

-   Scenario 3 : Recherche sur un critère de l'équipement

    -   Un consommateur cherche une offre de chirurgie traumatologique proposant un appareil de radiologie adapté à l\'obésité du patient

### Signalement d’anomalie

#### Description du cas d’usage

Un consommateur souhaite signaler une ou plusieurs anomalies qualité sur un élément du modèle d’exposition du ROR.

Le consommateur renseigne les informations de l’anomalie à signaler, en précisant à minima les éléments obligatoires. (voir description de la [ressource](StructureDefinition-ror-task.html)).
Le ROR National répond au consommateur l’identifiant technique, les métadonnées et l’identifiant fonctionnel de l’anomalie créée.

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="image11.png" alt="Signalement d'anomalie" title="Signalement d'anomalie">
            </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 7 - Signalement d'anomalie</b>
        </td>
    </tr>
</table>

#### Scénarios

-	Scenario 1 : Signalement d’une anomalie

    -	Un responsable qualité souhaite signaler une anomalie sur un élément.

-	Scenario 2 : Signalement de plusieurs anomalies

    -	Un consommateur d'un système tiers souhaite signaler plusieurs anomalies.

### Mise à jour d’anomalie

#### Description du cas d’usage

Un service numérique souhaite mettre à jour une ou plusieurs anomalies qualité.

Le service numérique renseigne l’identifiant technique de l’anomalie à mettre à jour et les informations à modifier (voir description de la [ressource](StructureDefinition-ror-task.html)).
Le ROR National retourne au service numérique l’identifiant technique, les métadonnées et l’identifiant fonctionnel de l’anomalie créée.

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="image12.png" alt="Mise à jour d'anomalie" title="Mise à jour d'anomalie">
            </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 8 - Mise à jour d'anomalie</b>
        </td>
    </tr>
</table>

#### Scénarios

-	Scenario 1 : Mise à jour du statut de plusieurs anomalies
    
    -	Le responsable de la donnée en anomalie corrige l'anomalie, le responsable qualité ou le moteur de règle met à jour le statut de l'anomalie (possible en masse).

-	Scenario 2 : Inactivation d’une anomalie
    
    -	Un responsable qualité décide d'inactiver une anomalie (elle a été saisie par erreur par exemple).

### Consultation d’anomalie

#### Description du cas d’usage

Un consommateur souhaite consulter une ou plusieurs anomalies qualité.

Le consommateur renseigne si besoin son (ses) critère(s) de recherche parmi les critères disponibles.
Le ROR National répond au consommateur la ou les anomalies correspondantes aux critères de recherche

<table align="center">
    <tr>
        <td align ="center">
            <div class="figure">
                <img src="image13.png" alt="Consultation d'anomalie" title="Consultation d'anomalie">
            </div>
        </td>    
    </tr>
    <tr>
        <td align ="center">
            <b>Figure 9 - Consultation d'anomalie</b>
        </td>
    </tr>
</table>

#### Scénarios

-	Scenario 1 : Consultation du statut d’une anomalie

    -	Un responsable qualité ou le moteur de règle souhaite consulter le statut d'une anomalie.
-	Scenario 2 : Consultation de la liste des anomalies 

    -	Un responsable qualité ou le moteur de règle souhaite consulter la liste des anomalies d'un élément.

-   Scénario 3 : Consultation de la liste des anomalies sur un périmètre
    
    -	Un responsable qualité souhaite consulter la liste des anomalies sur son périmètre (région, établissement, département).

-	Scénario 4 : Consommation de toutes les anomalies

    -  Le BI consomme toutes les anomalies pour faire des tableaux de suivi.
