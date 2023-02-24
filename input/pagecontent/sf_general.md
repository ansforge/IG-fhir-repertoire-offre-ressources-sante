##	Périmètre du Webservice
A ce jour, le webservice répond au cas d’usage suivants : 
-	Recherche d’une offre sur les principaux critères de recherche

Pour les cas d’usage couverts par ce webservice : 
-	Les préconditions sont : 
-	Le système consommateur dispose des points d’accès et des moyens d’authentification (authentification mTLS avec des certificats IGC-Santé) pour accéder aux données du ROR National.
-	Le système consommateur peut uniquement effectuer les recherches autorisées par son profil d’accès aux données.   [Ref_02] 
-	Les postconditions sont : 
-	L’exécution des transactions ne provoquera aucune modification sur les données sources extraites.

##	Recherche offre sur les principaux critères de recherche
###	Description du cas d’usage
Un consommateur cherche des offres opérationnelles à partir de critère(s) de recherche. 

Le consommateur renseigne son (ses) critère(s) de recherche parmi les critères disponibles. 
Le ROR National répond au consommateur les unités élémentaires correspondant aux critères de recherche et toutes les classes liées à l’unité élémentaire. 
       
Figure 2- Recherche offre (modèle expo V2.4)
 
###	Scénarios (non exhaustifs) couvrant ce cas d’usage     
-	Scenario 1 : Recherche sur un critère en saisissant une valeur
-	Un consommateur cherche les offres (unités)   ayant une activité opérationnelle qui correspond à l’unique valeur recherchée par le consommateur

-	Scenario 2 : Recherche sur un critère en saisissant une liste de valeurs
Un consommateur cherche les offres (unités) ayant à une activité opérationnelle qui correspond à l’une des valeurs recherchées par le consommateur 


-	Scenario 3 : Recherche multicritères #1 – ET
-	Un consommateur cherche les offres (unités) ayant plusieurs activités opérationnelles ET un acte spécifique

     
-	Scenario 4 : Recherche multicritères #2 – OU
-	Un consommateur cherche les offres (unités) ayant à une catégorie d'organisation OU une activité opérationnelle

-	Scenario 5 : Recherche multicritères #3 – ET/OU
-	Un consommateur recherche les offres (unités) ayant une catégorie d’établissement OU catégorie d’organisation ET un acte spécifique 


-	Scenario 6 : Recherche à proximité géographique
-	Un consommateur cherche les offres (unités) ayant une activité opérationnelle, dans un périmètre géographique proche du lieu de résidence d'un patient
