
#
A ce jour, le webservice répond au cas d'usage suivants :

-   Consultation des données capacitaires en lits et places

    Pour les cas d'usage couverts par ce webservice :

-   Les préconditions sont :

-   Le système consommateur dispose des points d'accès et des moyens
    d'authentification (authentification mTLS avec des certificats
    IGC-Santé) pour accéder aux données du ROR National.

-   Le système consommateur peut uniquement effectuer les recherches
    autorisées par son profil d'accès aux données. \[Ref_04\]

-   Les postconditions sont :

-   L'exécution des transactions ne provoquera aucune modification sur
    les données sources extraites.

## Consultation des données capacitaires

### Description du cas d'usage

Un consommateur cherche les capacités des lieux de réalisation de
l'offre à partir de critères de recherche.

Le consommateur renseigne son (ses) critère(s) de recherche parmi les
critères disponibles.

Le ROR National répond au consommateur les lieux de réalisation de
l'offre correspondants aux critères de recherche et les identifiants des
offres opérationnelles liées.

![Une image contenant texte Description générée automatiquement](image6.png)

[]{#_Toc122104304 .anchor}Figure 2 -- Recherche capacité (modèle expo
V3.0)

### Scénarios

-   Scénario 1 : Données capacitaires de France

-   un consommateur souhaite récupérer l\'ensemble des données
    capacitaires de France afin de mettre à jour son système (Exemple de
    ROR urgence qui souhaite afficher l\'ensemble des capacités sur une
    carte).

-   Scénario 2 : Données capacitaires sur un lieu de prise en charge
    identifié

-   un consommateur souhaite mettre à jour dans son système les données
    de capacité surun lieu de prise en charge -\> il connait un
    desidentifiants identifiant de point de saisie ou identifiant
    externe de synchronisation et demande à lire une donnée capacitaire
    en particulier.

-   Scénario 3 : Données capacitaires sur plusieurs lieux de prise en
    charge identifiés

-   un consommateur souhaite mettre à jour dans son système les données
    de capacité en lits/placesde certains lieux de prise en charge ) -\>
    il connait les identifiants et demande à lire la liste de ces
    données capacitaires.

-   Scénario 4 : Données capacitaires à partir d'une date de mise à jour

-   un consommateur souhaite mettre à jour dans son système les données
    capacitaires mises à jour dans le ROR national depuis une date.

-   Scénario 5 : Données capacitaires d'une offre opérationnelle

-   un consommateur ayant recherché au préalable une offre de santé
    correspondant à ses critères (exemple : Urgences spécialisées
    cardiologiques via le service de recherche 2.4) souhaite connaitre
    la situation des capacités pour ces offres. Le service de recherche
    lui ayant renvoyé les identifiants de ces offres, il les passe en
    paramètre de la recherche 3.0.