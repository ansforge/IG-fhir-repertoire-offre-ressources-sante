<!-- Consultation des données capacitaires -->
### Caractéristiques de l'API

<table width="25%">
<tbody>
<tr>
<td width="45%">
<p><strong>Endpoint</strong></p>
</td>

<td width="54%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="45%">
<p><strong>Header</strong></p>
</td>
<td width="54%">
<p>Content-type&nbsp;:=Json + FHIR</p>
</td>
</tr>
<tr>
<td width="45%">
<p><strong>Encodage</strong></p>
</td>
<td width="54%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="45%">
<p><strong>Version FHIR</strong></p>
</td>
<td width="54%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="45%">
<p><strong>Version package</strong></p>
</td>
<td width="54%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="45%">
<p><strong>Publication</strong></p>
</td>
<td width="54%">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>

###  Construction de la requête de base

|                                  |                                                         |
|----------------------------------|---------------------------------------------------------|
| **Interaction FHIR**             | Search                                                  |
| **Méthode http associée**        | GET                                                     |
| **Ressource recherchée**         | Location                                                |
| **Construction requête de base** | `GET[base]/Location{?[parameters]{&_format=[mime-type]}}` |

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/bundle.html>

Si la recherche est un succès, le serveur répond :

-   Un header avec un code 200 OK HTTP

-   Un body contenant une ressource [Bundle](https://www.hl7.org/fhir/bundle.html) dont le type =
    searchset.
    Le bundle encapsule 0 à n ressources Location corespondant aux
    critères de recherche plus les ressources incluses correspondant aux
    critères de recherche.
    Le service développé renvoie les 200 premiers résultats et indique
    le total trouvé dans une balise `total`. Dans le cas où il n'y a
    pas de résultat le service renvoie `total`: 0.

Remarque : la recherche est un succès à partir du moment où la requête
peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR :
https://www.hl7.org/fhir/http.html

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
<https://www.hl7.org/fhir/operationoutcome.html>

Si la recherche échoue, le serveur doit répondre :

-   Un header avec un un code erreur HTTP 4XX ou 5XX

-   Un body contenant une ressource OperationOutcome[^3] qui donne les
    détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
<https://www.hl7.org/fhir/http.html>

### Critères de recherche

-   Les critères de recherche, définis au paragraphe 4.1, de
    **StructureDefinition-ror-location** applicables à ce cas d'usage
    sont :

|                       |                             |                        |
|-----------------------|-----------------------------|------------------------|
| \_lastUpdated         | capacity\-closing\-type     | identifier             |
| address\-postalcode   | crisis\-type                | limit\-value           |
| address\-city         | capacity-update ?           | residential\-type      |
| additional\-bed\-type | equipment\-type             | residential\-number    |
| capacity\-status      | equipment\-feature          | temporary\-assignement |
| capacity\-type        | gender\-capacity\-available | temporality\-capacity  |

-   Les critères de recherche, définis au paragraphe 4.2, de
    **StructureDefinition-ror-healthcareservice** applicables à ce cas
    d'usage sont :

|            |          |
|------------|----------|
| Identifier | location |

Ces critères de recherche sont applicables à la ressource Location,
grâce au chainage[^4]. Pour cela utiliser la syntaxe suivante :
`_has:HealthcareService:location:[NOM CRITERE]`

Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes décrits au [paragraphe dédié](specifications_techniques.html#param%C3%A8tres-et-modificateurs-de-requ%C3%AAtes-fhir-1)
applicables à ce cas d'usage sont :

-   \_revinclude, \_include, :iterate

-   \_has, \_count, \_sort

-   Tous les prefixes de comparaison

### Exemple de requêtes

#### Scénario 1 : Données capacitaires de France

**Description du scénario :** un consommateur souhaite
récupérer l\'ensemble des données capacitaires de France afin de mettre
à jour son système

**Requête :**

`get[BASE]/Location?_revinclude=HealthcareService:location`

**Requête expliquée :**

```sh
get[BASE]/Location?_revinclude=HealthcareService:location #inclus les HealthcareService qui référencent les Location

```
**Réponse "simplifiée" :**

```xml
HTTP 200 OK
  resourceType: Bundle
  type: searchset
  total: 4
  Location1 (match) UE1(include)
  Location2 (match) UE2(include)
  Location3 (match) UE3(include)
  Location4 (match) UE3(include)

```
#### Scénario 2 : Données capacitaires sur un lieu de prise en charge identifié

**Description du scénario :** un consommateur souhaite mettre
à jour dans son système les données de capacité sur un lieu de prise en
charge = Location1

**Requête :**

`get[BASE]/Location?identifier=Location1&_revinclude=HealthcareService:location`

**Requête expliquée :**

```sh
get[BASE]/Location?identifier=Location1 #critère de recherche sur l’identifiant technique du lieu de prise en charge
&_revinclude=HealthcareService:location #inclus les HealthcareService qui référencent les Location


```
**Réponse "simplifiée" :**

```xml
HTTP 200 OK
  resourceType: Bundle
  type: searchset
  total: 1
  Location1 (match) UE1(include)


```
#### Scénario 3 : Données capacitaires sur plusieurs lieux de prise en charge identifiés

**Description du scénario :** un consommateur souhaite mettre
à jour dans son système les données de capacité sur plusieurs lieux de
prise en charge = Location1 ou Location2

**Requête :**

`get[BASE]/Location?identifier=Location1,Location2&_revinclude=HealthcareService:location`

**Requête expliquée :**

```sh
get[BASE]/Location?identifier=Location1,Location2 #critère de recherche sur l’identifiant technique du lieu de prise en charge
&_revinclude=HealthcareService:location #inclus les HealthcareService qui référencent les Location


```
**Réponse "simplifiée" :**

```xml
HTTP 200 OK
  resourceType: Bundle
  type: searchset
  total: 2
  Location1 (match) UE1(include)
  Location2 (match) UE2(include)


```
####  Scénario 4 : Données capacitaires à partir d'une date de mise à jour

**Description du scénario :** un consommateur souhaite mettre
à jour dans son système les données de capacité

à partir d\'une date de mise à jour \>= 06/11/2022-15h00

**Requête :**

`get[BASE]/Location?_lastUpdated=ge2022-11-06T15:00&_revinclude=HealthcareService:location`

**Requête expliquée :**
```sh
get[BASE]/Location?_lastUpdated=ge2022-11-06T15:00 #critère de recherche sur la date de mise à jour/ge=greater or equal
&_revinclude=HealthcareService:location #inclus les HealthcareService qui référencent les Location
```
**Réponse "simplifiée" :**

```xml
HTTP 200 OK
  resourceType: Bundle
  type: searchset
  total: 1

  Location1 (match) UE1(include)
```

#### Scénario 5 : Données capacitaires d'une offre opérationnelle

**Prérequis :** un consommateur recherche au préalable une
offre de santé correspondant à ses critères via le service de recherche
en 2.4. Le service de recherche envoie les identifiants des offres
correspondant aux critères.

**Description du scénario :** un consommateur souhaite
connaitre la situation des capacités pour les offres identifiées via le
service 2.4 = UE1 ou UE2 ou UE3

**Requête :**

`get[BASE]/Location?_has:HealthcareService:location:identifier=UE1,UE2,UE3&_revinclude=HealthcareService:location`

**Requête expliquée :**

```sh
get[BASE]/Location?_has:HealthcareService:location:identifier=UE1,UE2,UE3 #critère de recherche sur l’identifiant de l’offre. Utilisation _has (reverse chaining) car c’est HealthcareService qui fait référence à Location. 
&_revinclude=HealthcareService:location #inclus les HealthcareService qui référencent les Location
```
**Réponse "simplifiée" :**
```xml
HTTP 200 OK
  resourceType: Bundle
  type: searchset
  total: 4
  Location1 (match) UE1(include)
  Location2 (match) UE2(include)
  Location3 (match) UE3(include)
  Location4 (match) UE3(include)

```
