# Consultation d'indicateurs de pilotage - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

* [**Table of Contents**](toc.md)
* **Consultation d'indicateurs de pilotage**

## Consultation d'indicateurs de pilotage

`draft`

 Cette partie de la spécification est en cours de construction et n'est pas implémentée. Elle est disponible, à titre d'information sur les travaux en cours au niveau du ROR National. 

### Construction de la requête de base

| | |
| :--- | :--- |
| **Interaction FHIR** | Search[[1]](#_ftn1) |
| **Méthode http associée** | GET |
| **Ressource recherchée** | Measure |
| **Construction requête de base** | `GET [base]/Measure{?[parameters]{&_format=[mime-type]}}` |

 

[[1]](#_ftnref1) [http://hl7.org/fhir/R4/http.html#search](http://hl7.org/fhir/R4/http.html#search) et [http://hl7.org/fhir/R4/http.html#general](http://hl7.org/fhir/R4/http.html#general)

### Construction de la réponse de base

#### Réponse de base – Succès

Lien vers la spécification FHIR : [http://hl7.org/fhir/R4/bundle.html](http://hl7.org/fhir/R4/bundle.html)

Si la recherche est un succès, le serveur répond :

* Un header avec un code 200 OK HTTP
* Un body contenant une ressource Bundle[^27] dont le type = searchset.\ Le bundle encapsule 0 à n ressources Measure corespondant aux critères de recherche plus les ressources incluses correspondant aux critères de recherche.\ Le service développé renvoie les 200 premiers résultats et indique le total trouvé dans une balise "total". Dans le cas où il n’y a pas de résultat le service renvoie "total": 0.

Remarque : la recherche est un succès à partir du moment où la requête peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR [http://hl7.org/fhir/R4/http.html](http://hl7.org/fhir/R4/http.html)

#### Réponse de base – Echec

Lien vers la spécification FHIR : [http://hl7.org/fhir/R4/operationoutcome.html](http://hl7.org/fhir/R4/operationoutcome.html)

Si la recherche échoue, le serveur doit répondre :

* Un header avec un un code erreur HTTP 4XX ou 5XX
* Un body contenant une ressource [OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html) qui donne les détails sur la raison de l’échec

Remarque : l’échec d’une recherche est la non-possibilité d’exécuter la requête, ce qui est différent d’aucune correspondance à la recherche. Plus de précision sur la spécification FHIR : [http://hl7.org/fhir/R4/http.html](http://hl7.org/fhir/R4/http.html)

### Critères de recherche

Les critères de recherche applicables sont définis sur la page dédiée pour :

* [Structuredefinition-ror-measure](search_param.md#structuredefinition-ror-measure)
* [Structuredefinition-ror-measurereport](search_param.md#structuredefinition-ror-measurereport) (critères de recherche applicables à la ressource Measure, grâce au [chainage inversé](https://hl7.org/fhir/R4/search.html#has). Pour cela utiliser la syntaxe suivante : `_has:MeasureReport:measure:[NOM CRITERE]`)

**En complément, vous pouvez accéder aux Capability Statements [ici](artifacts.md#behavior-capability-statements)**

### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes sont décrits [ici](modifiers.md).

### Exemple de requêtes

#### Scénario 1 : Intégration d’un indicateur dans un système externe draft

**Description du scénario :** Un consommateur souhaite intégrer un indicateur de pilotage du ROR national, dont l’identifiant est XXX, dans un système externe.

**Requête :**

`GET [BASE]/Measure?identifier=XXX&_revinclude=MeasureReport:measure `

**Requête expliquée :**

```
GET [BASE]/Measure?identifier=XXX #critère de recherche sur l’identifiant de l’indicateur
&_revinclude=MeasureReport:measure #inclus les MeasureReport qui référencent les Measure

```

#### Scénario 2 : Intégration d’indicateurs dans un système externe draft

**Description du scénario :** Un consommateur souhaite intégrer des indicateurs de pilotage du ROR national dans un système externe, à partir d’une date de mesure (06/10 2023).

**Requête :**

`GET [BASE]/Measure?_has:MeasureReport:measure:date=eq2023-10-06T15:00&_revinclude=MeasureReport:measure`

**Requête expliquée :**

```
GET [BASE]/Measure?_has:MeasureReport:measure:date=eq2023-10-06T15:00 #critère de recherche sur sur la date de mesure. Utilisation _has (reverse chaining) car c’est MeasureReport qui fait référence à Measure. 
&_revinclude=MeasureReport:measure #inclus les MeasureReport qui référencent les Measure

```

