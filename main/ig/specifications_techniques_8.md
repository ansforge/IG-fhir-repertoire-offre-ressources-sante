# Recherche d'offre sur la base d'informations tarifaires - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* **Recherche d'offre sur la base d'informations tarifaires**

## Recherche d'offre sur la base d'informations tarifaires

### Construction de la requête de base

| | |
| :--- | :--- |
| **Interaction FHIR** | Search[[1]](#_ftn1) |
| **Méthode http associée** | GET |
| **Ressource recherchée** | HealthcareService |
| **Construction requête de base** | `GET [base]/HealthcareService{?[parameters]{&_format=[mime-type]}}` |

 

[[1]](#_ftnref1) [http://hl7.org/fhir/R4/http.html#search](http://hl7.org/fhir/R4/http.html#search) et [http://hl7.org/fhir/R4/http.html#general](http://hl7.org/fhir/R4/http.html#general)

### Construction de la réponse de base

#### Réponse de base – Succès

Lien vers la spécification FHIR : [http://hl7.org/fhir/R4/bundle.html](http://hl7.org/fhir/R4/bundle.html)

Si la recherche est un succès, le serveur répond :

* Un header avec un code 200 OK HTTP
* Un body contenant une ressource [Bundle](http://hl7.org/fhir/R4/bundle.html) dont le type = searchset.\ Le bundle encapsule 0 à n ressources HealthcareService corespondant aux critères de recherche plus les ressources incluses correspondant aux critères de recherche.\ Le service développé renvoie les 200 premiers résultats et indique le total trouvé dans une balise "total". Dans le cas où il n’y a pas de résultat le service renvoie "total": 0.

Remarque : la recherche est un succès à partir du moment où la requête peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR : [http://hl7.org/fhir/R4/http.html](http://hl7.org/fhir/R4/http.html)

#### Réponse de base – Echec

Lien vers la spécification FHIR : [http://hl7.org/fhir/R4/operationoutcome.html](http://hl7.org/fhir/R4/operationoutcome.html)

Si la recherche échoue, le serveur doit répondre :

* Un header avec un un code erreur HTTP 4XX ou 5XX
* Un body contenant une ressource [OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html) qui donne les détails sur la raison de l’échec

Remarque : l’échec d’une recherche est la non-possibilité d’exécuter la requête, ce qui est différent d’aucune correspondance à la recherche. Plus de précision sur la spécification FHIR : [http://hl7.org/fhir/R4/http.html](http://hl7.org/fhir/R4/http.html)

### Critères de recherche

Les critères de recherche applicables sont définis sur la page dédiée pour :

* [StructureDefinition-ror-healthcareservice](search_param.md#structuredefinition-ror-healthcareservice)
* [Structuredefinition-ror-organization](search_param.md#structuredefinition-ror-organization) (critères de recherche applicables à la ressource HealthcareService, grâce au [chainage](https://www.hl7.org/fhir/R4/search.html#chaining). Pour cela utiliser la syntaxesuivante : `organization.[NOM CRITERE]`)

**En complément, vous pouvez accéder aux Capability Statements [ici](artifacts.md#behavior-capability-statements)**

### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes sont décrits [ici](modifiers.md).

### Exemple de requêtes

#### Scénario 1 : Recherche sur critères tarifaires #1 draft

**Description du scénario :** Un consommateur recherche les offres d’établissements dont le type de tarifs = 02 | forfait socle hébergement (TRE_R246-TypeTarif), le montant est inférieur à X euros, pour la date de début de validité la plus récente.

**Requête :**

```
GET [BASE]/HealthcareService?organization.price-type=https://mos.esante.gouv.fr/NOS/TRE_R246-TypeTarif/FHIR/TRE-R246-TypeTarif|02&organization.price-amount-value=ltX&_sort=-organization.price-validity-start-date&_include=Healthcareservice:location

```

**Requête expliquée :**

```
GET [BASE]/HealthcareService?organization.price-type=https://mos.esante.gouv.fr/NOS/TRE_R246-TypeTarif/FHIR/TRE-R246-TypeTarif|02 #critère de recherche sur le type de tarif
&organization.price-amount-value=ltX #critère de recherche sur la valeur du montant 
&_sort=-organization.price-validity-start-date #modificateur de requête pour trier par date de début de validité décroissante (du plus récent au moins récent)
&_include=Healthcareservice:location  #inclus les Location qui sont référencés par les HealthcareService

```

#### Scénario 2 : Recherche sur critères tarifaires #2 draft

**Description du scénario :** Un consommateur recherche les offres d’établissements dont le type de tarifs = 02 | forfait socle hébergement (TRE_R246-TypeTarif), le montant est inférieur ou égal à X euros, le type habitation = 03 | F1 (TRE_R242-TypeHabitation), les conditions tarifaires = 03 | tarif agréé ASH (TRE_R250-ConditionTarifaire).

**Requête :**

```
GET [BASE]/HealthcareService?organization.price-type=https://mos.esante.gouv.fr/NOS/TRE_R246-TypeTarif/FHIR/TRE-R246-TypeTarif|02&organization.price-amount-value=leX&organization.price-residential-type=https://mos.esante.gouv.fr/NOS/TRE_R242-TypeHabitation/FHIR/TRE-R242-TypeHabitation|03&organization.special-price=https://mos.esante.gouv.fr/NOS/TRE_R250-ConditionTarifaire/FHIR/TRE-R250-ConditionTarifaire|03&_include=Healthcareservice:location

```

**Requête expliquée :**

```
GET [BASE]/HealthcareService?organization.price-type=https://mos.esante.gouv.fr/NOS/TRE_R246-TypeTarif/FHIR/TRE-R246-TypeTarif|02 #critère de recherche sur le type de tarif
&organization.price-amount-value=ltX #critère de recherche sur la valeur du montant 
&organization.price-residential-type=https://mos.esante.gouv.fr/NOS/TRE_R242-TypeHabitation/FHIR/TRE-R242-TypeHabitation|03 #critère de recherche le type habitation
&organization.special-price=https://mos.esante.gouv.fr/NOS/TRE_R250-ConditionTarifaire/FHIR/TRE-R250-ConditionTarifaire|03 #critère de recherche sur les conditions tarifaires
&_include=Healthcareservice:location  #inclus les Location qui sont référencés par les HealthcareService

```

#### Scénario 3 : Recherche sur critères tarifaires #3 draft

**Description du scénario :** Un consommateur recherche les offres d’établissements dont type de tarifs = 03 | dépendance (TRE_R246-TypeTarif), le montant est inférieur à X euros, le niveau de dépendance = 02 | GIR 3-4 (TRE_R237-GroupeTarifaireDependance), la temporalité d'accueil (au niveau du tarif, pas de l'offre opérationnelle) = 02 | permanent (TRE-R240-TemporaliteAccueil).

**Requête :**

```
GET [BASE]/HealthcareService?organization.price-type=https://mos.esante.gouv.fr/NOS/TRE_R246-TypeTarif/FHIR/TRE-R246-TypeTarif|03&organization.price-amount-value=ltXR&organization.price-dependency-level=https://mos.esante.gouv.fr/NOS/TRE_R237-GroupeTarifaireDependance/FHIR/TRE-R237-GroupeTarifaireDependance|02&organization.price-welcome-type=https://mos.esante.gouv.fr/NOS/TRE_R240-TemporaliteAccueil/FHIR/TRE-R240-TemporaliteAccueil|02&_include=Healthcareservice:location

```

**Requête expliquée :**

```
GET [BASE]/HealthcareService?organization.price-type=https://mos.esante.gouv.fr/NOS/TRE_R246-TypeTarif/FHIR/TRE-R246-TypeTarif|03 #critère de recherche sur le type de tarif
&organization.price-amount-value=ltX #critère de recherche sur la valeur du montant 
&organization.price-dependency-level=https://mos.esante.gouv.fr/NOS/TRE_R237-GroupeTarifaireDependance/FHIR/TRE-R237-GroupeTarifaireDependance|02 #critère de recherche le niveau de dépendance
&organization.price-welcome-type=https://mos.esante.gouv.fr/NOS/TRE_R240-TemporaliteAccueil/FHIR/TRE-R240-TemporaliteAccueil|02 #critère de recherche la temporalité d’accueil
&_include=Healthcareservice:location #inclus les Location qui sont référencés par les HealthcareService

```

