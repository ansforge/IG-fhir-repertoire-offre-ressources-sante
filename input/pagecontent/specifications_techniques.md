
## Consultation des données capacitaires

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

## Consultation de l'offre (synchronisation)

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

### Construction de la requête de base

|                                  |                                                                              |
|----------------------------------|------------------------------------------------------------------------------|
| **Interaction FHIR**             | [Search](https://www.hl7.org/fhir/http.html#search) ([voir les psécifications FHIR](https://www.hl7.org/fhir/http.html#general))                                                                      |
| **Méthode http associée**        | GET                                                                          |
| **Ressource recherchée**         | HealthcareService                                                            |
| **Construction requête de base** | `GET[base]/HealthcareService{?[parameters]{&_format=[mime-type]}}` |

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/bundle.html>

Si la recherche est un succès, le serveur répond :

-   Un header avec un code 200 OK HTTP

-   Un body contenant une ressource [Bundle](https://www.hl7.org/fhir/bundle.html) dont le type =
    searchset.
    Le bundle encapsule 0 à n ressources HealthcareService corespondant
    aux critères de recherche plus les ressources incluses correspondant
    aux critères de recherche.\
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

-   Un body contenant une ressource [OperationOutcome](https://www.hl7.org/fhir/operationoutcome.html) qui donne les
    détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
<https://www.hl7.org/fhir/http.html>

### Critères de recherches

-   Les critères de recherche, définis au [paragraphe dédié](specifications_techniques.html#structuredefinition-ror-healthcareservice), de
    **StructureDefinition-ror-healthcareservice** applicables à ce cas
    d'usage sont :

 |              |            |
|--------------|------------|
| \_lastUpdated | identifier |

-   Les critères de recherche, définis au [paragraphe dédié](specifications_techniques.html#structuredefinition-ror-organization), de
    **StructureDefinition-ror-organization** applicables à ce cas
    d'usage sont :

|              |            |
|--------------|------------|
| \_lastUpdated | identifier |

Ces critères de recherche sont applicables à la ressource
HealthcareService, grâce au [chainage](https://www.hl7.org/fhir/search.html#chaining). Pour cela utiliser la syntaxe
suivante : `location:[NOM CRITERE]`

-   Les critères de recherche, définis au [paragraphe dédié](specifications_techniques.html#structuredefinition-ror-location), de
    **StructureDefinition-ror-location** applicables à ce cas d'usage
    sont :

|              |
|--------------|
| \_lastUpdated |

Ces critères de recherche sont applicables à la ressource
HealthcareService, grâce au chainage. Pour cela utiliser la syntaxe
suivante : `location:[NOM CRITERE]`

-   Les critères de recherche, définis au [paragraphe dédié](specifications_techniques.html#structuredefinition-ror-practioner), de
    **StructureDefinition-ror-practitioner** applicables à ce cas
    d'usage sont :

|              |
|--------------|
| \_lastUpdated |

Ces critères de recherche sont applicables à la ressource Location,
grâce au [chainage](https://www.hl7.org/fhir/search.html#has). Pour cela utiliser la syntaxe suivante :
`_has:PractitionerRole:service:_has:PractitionerRole:practitioner:[NOM CRITERE]`

-   Les critères de recherche, définis au [paragraphe dédié](./specifications_techniques.html#structuredefinition-ror-practionerrole), de
    **StructureDefinition-ror-practitionerrole** applicables à ce cas
    d'usage sont :

|              |
|--------------|
| \_lastUpdated |

Ces critères de recherche sont applicables à la ressource Location,
grâce au [chainage](https://www.hl7.org/fhir/search.html#has). Pour cela utiliser la syntaxe suivante :
`_has:PractitionerRole:service:[NOM CRITERE]`

### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes décrits au paragraphe 5
applicables à ce cas d'usage sont :

-   \_revinclude, \_include, :iterate

-   \_has, \_count, \_sort

-   \_elements

-   Tous les préfixes de comparaison

### Exemple de requêtes

#### Scénario 1 : Synchronisation complète

**Description du scénario :** Un consommateur souhaite mettre
à jour toute l\'offre de santé nationale

**Requête :**

`get[BASE]/HealthcareService?_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?
_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 2 : Synchronisation des offres de santé d'un établissement

**Description du scénario :** Un consommateur souhaite
rechercher l\'offre de santé proposée\
par un établissement dont l'identifiant est = XX

**Requête :**

`get[BASE]/HealthcareService?organization:identifier=XX_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?organization:identifier=XX #critère de recherche de l’établissement
_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole

```

#### Scénario 3 : Synchronisation d'une offre de santé identifiée

**Description du scénario :** Un consommateur souhaite
rechercher une offre de santé\
à partir de son identifiant = XXX

**Requête :**

`get[BASE]/HealthcareService?identifier=XXX&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner` 

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?identifier=XXX #critère de recherche de l’identifiant de l’offre
_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 4 : Synchronisation complète à partir d'une date de mise à jour de l'offre opérationnelle

**Description du scénario :** Un consommateur souhaite mettre
à jour toute l\'offre\
mise à jour depuis une certaine date \>= (06/11/2022)

**Requête :**

`get[BASE]/HealthcareService?_lastUpdated=ge2022-11-06T15:00&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?_lastUpdated=ge2022-11-06T15:00 #critère de recherche de sur la date de mise à jour (ge= greater than)
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole

```

#### Scénario 5 : Synchronisation complète à partir d'une date de mise à jour de l'organisation

**Description du scénario :** Un consommateur souhaite mettre
à jour toute l\'offre dont l'organisation est mise à jour depuis une
certaine date \>= (06/11/2022)

**Requête :**

`get[BASE]/HealthcareService?providedBy._lastUpdated=ge2022-11-06T15:00&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?providedBy:_lastUpdated=ge2022-11-06T15:00 #critère de recherche sur la date de mise à jour (ge= greater than)
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 6 : Synchronisation complète à partir d'une date de mise à jour d'un des éléments de l'offre 

**Description du scénario :** Un consommateur souhaite mettre
à jour toute l\'offre mise à jour depuis une certaine date \>=
(06/11/2022) ou dont l'organisation est mise à jour depuis une certaine
date \>= (06/11/2022)

**Requête :**

`get[BASE]/HealthcareService?_filter=(_lastUpdated ge 2022-11-06T15:00 or providedBy:_lastUpdated ge 2022-11-06T15:00) &_revinclude=Organization:healthcareservice&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?_filter=(_lastUpdated ge 2022-11-06T15:00 or providedBy:_lastUpdated ge 2022-11-06T15:00) #critère de recherche sur la date de mise à jour 
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 7 : Synchronisation partielle de l'offre 

**Description du scénario :** Un consommateur souhaite mettre
à jour toute l\'offre de santé d\'une région source = XX. Comme il
n\'utilise qu'un sous-ensemble des informations de l\'offre, il souhaite
ne recevoir que ces informations.

**Requête :**

`get[BASE]/HealthcareService?_tag= https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM|XX&_elements=identifier &_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?_tag= https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM|XX #critère de recherche sur la région source
&_elements=identifier #ensemble des informations que le consommateur souhaite recevoir
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
```
## Recherche d'offre sur critères principaux

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

### Construction de la requête de base

<table>
<tbody>
<tr>
<td width="141">
<p>Interaction FHIR</p>
</td>
<td width="538">
<p>Search<a href="#_ftn1" name="_ftnref1"><sup>[1]</sup></a></p>
</td>
</tr>
<tr>
<td width="141">
<p>M&eacute;thode http associ&eacute;e</p>
</td>
<td width="538">
<p>GET</p>
</td>
</tr>
<tr>
<td width="141">
<p>Ressource recherch&eacute;e</p>
</td>
<td width="538">
<p>HealthcareService</p>
</td>
</tr>
<tr>
<td width="141">
<p>Construction requ&ecirc;te de base</p>
</td>
<td width="538">
<p>GET[base]/HealthcareService{?[parameters]{&amp;_format=[mime-type]}}</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/http.html#search">https://www.hl7.org/fhir/http.html#search</a> et <a href="https://www.hl7.org/fhir/http.html#general">https://www.hl7.org/fhir/http.html#general</a></p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR :
[[https://www.hl7.org/fhir/bundle.html]{.underline}](https://www.hl7.org/fhir/bundle.html)

Si la recherche est un succès, le serveur répond :

Un header avec un code 200 OK HTTP

Un body contenant une ressource [Bundle](https://www.hl7.org/fhir/bundle.html) dont le type = searchset.
Le bundle encapsule 0 à n ressources HealthcareService corespondant aux
critères de recherche plus les ressources incluses correspondant aux
critères de recherche.
Le service développé renvoie les 200 premiers résultats et indique le
total trouvé dans une balise `total`. Dans le cas où il n'y a pas de
résultat le service renvoie `total`: 0.

Remarque : la recherche est un succès à partir du moment où la requête
peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR :
https://www.hl7.org/fhir/http.html

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
[[https://www.hl7.org/fhir/operationoutcome.html]{.underline}](https://www.hl7.org/fhir/operationoutcome.html)

Si la recherche échoue, le serveur doit répondre :

Un header avec un un code erreur HTTP 4XX ou 5XX

Un body contenant une ressource [OperationOutcome](https://www.hl7.org/fhir/operationoutcome.html) qui donne les
détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
[[https://www.hl7.org/fhir/http.html]{.underline}](https://www.hl7.org/fhir/http.html)

### Critères de recherche

-   Les critères de recherche, définis au [paragraphe dédié](./specifications_techniques.html#structuredefinition-ror-healthcareservice), de
    **StructureDefinition-ror-healthcareservice** applicables à ce cas
    d'usage sont :
<table>
<tbody>
<tr>
<td width="230">
<p>age-range-high</p>
</td>
<td width="230">
<p>name</p>
</td>
<td width="230">
<p>specific-competence</p>
</td>
</tr>
<tr>
<td width="230">
<p>age-range-low</p>
</td>
<td width="230">
<p>psychiatric-sector</p>
</td>
<td width="230">
<p>speciality</p>
</td>
</tr>
<tr>
<td width="230">
<p>characteristic</p>
</td>
<td width="230">
<p>service-category</p>
</td>
<td width="230">
<p>patient-type</p>
</td>
</tr>
<tr>
<td width="230">
<p>intervention-zone</p>
</td>
<td width="230">
<p>service-type</p>
</td>
<td width="230">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>

-   Les critères de recherche, définis au [paragraphe dédié](./specifications_techniques.html#structuredefinition-ror-organization), de
    **StructureDefinition-ror-organization** applicables à ce cas
    d'usage sont :
<table>
<tbody>
<tr>
<td width="230">
<p>closing-type</p>
</td>
<td width="230">
<p>identifier</p>
</td>
<td width="230">
<p>type</p>
</td>
</tr>
<tr>
<td width="230">
<p>drop-zone</p>
</td>
<td width="230">
<p>period-end</p>
</td>
<td width="230">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>

Ces critères de recherche sont applicables à la ressource
HealthcareService, grâce au [chainage](https://www.hl7.org/fhir/search.html#chaining). Pour cela utiliser la syntaxe
suivante : `providedBy:[NOM CRITERE]`

-   Les critères de recherche, définis au [paragraphe dédié](./specifications_techniques.html#structuredefinition-ror-location), de
    **StructureDefinition-ror-location** applicables à ce cas d'usage
    sont :
<table>
<tbody>
<tr>
<td width="230">
<p>_tag</p>
</td>
<td width="230">
<p>commune-cog</p>
</td>
<td width="230">
<p>near</p>
</td>
</tr>
<tr>
<td width="230">
<p>address-postalcode</p>
</td>
<td width="230">
<p>equipment-type</p>
</td>
<td width="230">
<p>near-insee-code</p>
</td>
</tr>
</tbody>
</table>

Ces critères de recherche sont applicables à la ressource
HealthcareService, grâce au chainage. Pour cela utiliser la syntaxe
suivante : `location:[NOM CRITERE]`

### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes décrits au paragraphe dédié (à completer)
applicables à ce cas d'usage sont :

-   \_revinclude, \_include, :iterate

-   \_has, \_count, \_sort

-   Tous les préfixes de comparaison

### Exemple de requêtes

#### Scénario 1 : Recherche sur un critère en saisissant une valeur

**Description du scénario :** Un consommateur cherche les
offres ayant\
une activité opérationnelle = XXX

**Requête :**

`get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX #critère de recherche sur l’activité opérationnelle
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 2 : Recherche sur un critère en saisissant une liste de valeur

**Description du scénario :** Un consommateur cherche les
offres ayant à une activité opérationnelle = XXX ou YYY (TRE_R211-ActiviteOperationnelle)

**Requête :**

`get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX,YYY&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX,YYY #critère de recherche sur l’activité opérationnelle
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole

```
#### Scénario 3 : Recherche multicritères #1 - ET

**Description du scénario :** Un consommateur cherche les
offres ayant un type d'offre = XXX (TRE_R244-CategorieOrganisation) **ET** une modalité d'accueil = YYY (TRE_R338-ModaliteAccueil)

**Requête :**

`get[BASE]/HealthcareService?service-category= https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|XXX& characteristic= https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil|YYY&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**
```sh
get[BASE]/HealthcareService?service-category= https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|XXX#critère de recherche sur le type d’offre
& characteristic= https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil|YYY #critère de recherche sur la modalité d’accueil
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 4 : Recherche multicritères #2 - OU

**Description du scénario :** Un consommateur cherche les
offres ayant à un type d'offre = XXX (TRE_R244-CategorieOrganisation) **OU** une activité opérationnelle = YYY
(TRE_R211-ActiviteOperationnelle)

**Requête :**

`get[BASE]/HealthcareService?_filter=((service-category eq https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|XXX) or (speciality eq https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|YYY))&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?_filter=((service-category eq https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|XXX) or (speciality eq https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|YYY)) #critère de recherche sur l’activité opérationnelle OU (or) sur la catégorie d’organisation
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 5 : Recherche multicritère #3 -- ET/OU

**Description du scénario :** Un consommateur recherche les offres ayant **(** une catégorie d'établissement = XXX de TRE-R66-CategorieEtablissement **OU** type d'offre = YYY de TRE_R244-CategorieOrganisation **)** **ET** un acte spécifique = ZZZ (TRE-R210-ActeSpecifique)

**Requête :**

`get[BASE]/HealthcareService?_filter=((providedBy:type eq https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement|XXX) or (service-category eq https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|YYY))&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique|ZZZ&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?_filter=((providedBy:type eq https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement|XXX) or (service-category eq https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|YYY)) #critère de recherche sur l’acte spécifique OU sur la catégorie d’organisation
&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique|ZZZ #critère sur l’acte spécifique
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 6 : Recherche à proximité géographique

**Description du scénario :** Un consommateur cherche les
offres ayant une activité opérationnelle = XXX (TRE_R211-ActiviteOperationnelle) dans un périmètre géographique proche du lieu de résidence d'un patient= à YY km de (latitude,longitude)

**Requête :**

`get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX&location:near=latitude|longitude |YY|unite &_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX #critère de recherche sur l’activité opérationnelle
&location:near=latitude|longitude|YY|unite #critère de périmètre géographique – paramètre chainé – exemple : YY km autour du point de référence latitude et longitude dont le système de référence est WGS84 
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 7 : Recherche sur une zone d'intervention

**Description du scénario :** Un consommateur cherche les offres proposées dans une commune =XXX faisant partie d'une zone d'intervention

**Requête :**

`get[BASE]/HealthcareService?location:intervention-zone=XXX &_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?location:intervention-zone=XXX #critère de recherche sur la commune faisant partie d’une zone d’intervention
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 8 : Recherche sur un département

**Description du scénario :** Un consommateur recherche les offres sur un département = XX

**Requête :**

`get[BASE]/HealthcareService?location:address-postalcode=XX&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?location:address-postalcode=XX # critère de recherche sur un département ou un ensemble de département (2 premier chiffres du code postal)
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```

#### Scénario 9 : Recherche sur une ville #1 -- Code Postal

**Description du scénario :** Un consommateur recherche les offres sur un ensemble de villes (code postal) = XXXX ou YYYY

**Requête :**

`get[BASE]/HealthcareService?location:address=postalcode=XXXX,YYYY&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?location:address-postalcode=XXXX,YYYY#critère de recherche sur une ville ou un ensemble de ville en rentrant le code postal 
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 10 : Recherche sur une ville #2 -- Code commune

**Description du scénario :** Un consommateur recherche les offres sur une ville (code communes) = XX

**Requête :**

`get[BASE]/HealthcareService?location:commune-cog=https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM|XX &_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?location:commune-cog=https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM|XX #critere de recherche sur une ville ou un ensemble de ville via le code commune
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 11 : Recherche sur un critère modèle 3.0

**Description du scénario :** Un consommateur recherche les offres proposant une modalité d\'accueil = XX (TRE-R338-ModaliteAccueil) et un niveau d\'expertise (critères modèle 3.0) = YY (TRE_R253-TypeMaternite)

**Requête :**

`get[BASE]/HealthcareService?characteristic=https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil|XX&characteristic= https://mos.esante.gouv.fr/NOS/TRE_R253-TypeMaternite/FHIR/TRE-R253-TypeMaternite|YY&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?characteristic=https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil|XX #critère de recherche sur la modalité d’accueil
& characteristic= https://mos.esante.gouv.fr/NOS/TRE_R253-TypeMaternite/FHIR/TRE-R253-TypeMaternite|YY #critère de recherche sur le niveau d’expertise
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
## Recherche d'offre avec données capacitaires

### Caractéristiques de l'API
<table width="100%">
<tbody>
<tr>
<td width="18%">
<p>Endpoint</p>
</td>
<td width="81%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="18%">
<p>Header</p>
</td>
<td width="81%">
<p>Content-type&nbsp;:=Json + FHIR</p>
</td>
</tr>
<tr>
<td width="18%">
<p>Encodage</p>
</td>
<td width="81%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="18%">
<p>Version FHIR</p>
</td>
<td width="81%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="18%">
<p>Version package</p>
</td>
<td width="81%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="18%">
<p>Publication</p>
</td>
<td width="81%">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>

### Construction de la requête de base

<table>
<tbody>
<tr>
<td width="141">
<p>Interaction FHIR</p>
</td>
<td width="538">
<p>Search<a href="#_ftn1" name="_ftnref1"><sup>[1]</sup></a></p>
</td>
</tr>
<tr>
<td width="141">
<p>M&eacute;thode http associ&eacute;e</p>
</td>
<td width="538">
<p>GET</p>
</td>
</tr>
<tr>
<td width="141">
<p>Ressource recherch&eacute;e</p>
</td>
<td width="538">
<p>HealthcareService</p>
</td>
</tr>
<tr>
<td width="141">
<p>Construction requ&ecirc;te de base</p>
</td>
<td width="538">
<p>GET[base]/HealthcareService{?[parameters]{&amp;_format=[mime-type]}}</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/http.html#search">https://www.hl7.org/fhir/http.html#search</a> et <a href="https://www.hl7.org/fhir/http.html#general">https://www.hl7.org/fhir/http.html#general</a></p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/bundle.html>

Si la recherche est un succès, le serveur répond :

Un header avec un code 200 OK HTTP

Un body contenant une ressource [Bundle]( https://www.hl7.org/fhir/bundle.html) dont le type = searchset. Le bundle encapsule 0 à n ressources HealthcareService corespondant aux critères de recherche plus les ressources incluses correspondant aux critères de recherche. Le service développé renvoie les 200 premiers résultats et indique le total trouvé dans une balise `total`. Dans le cas où il n'y a pas de résultat le service renvoie `total`: 0.

Remarque : la recherche est un succès à partir du moment où la requête
peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR :
https://www.hl7.org/fhir/http.html

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
[https://www.hl7.org/fhir/operationoutcome.html](https://www.hl7.org/fhir/operationoutcome.html)

Si la recherche échoue, le serveur doit répondre :

Un header avec un un code erreur HTTP 4XX ou 5XX

Un body contenant une ressource OperationOutcome qui donne les
détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
[https://www.hl7.org/fhir/http.html](https://www.hl7.org/fhir/http.html)

### Critères de recherche

-   Les critères de recherche, définis au [paragraphe dédié](./specifications_techniques.html#structuredefinition-ror-healthcareservice), de
    **StructureDefinition-ror-healthcareservice** applicables à ce cas
    d'usage sont :
<table>
<tbody>
<tr>
<td width="230">
<p>identifier</p>
</td>
<td width="230">
<p>&nbsp;</p>
</td>
<td width="230">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>

-   Les critères de recherche, définis au [paragraphe dédié](./specifications_techniques.html#structuredefinition-ror-location), de
    **StructureDefinition-ror-location** applicables à ce cas d'usage
    sont :
<table>
<tbody>
<tr>
<td width="230">
<p>address-postalcode</p>
</td>
<td width="230">
<p>capacity-type</p>
</td>
<td width="230">
<p>type</p>
</td>
</tr>
<tr>
<td width="230">
<p>adress-city</p>
</td>
<td width="230">
<p>equipment-type</p>
</td>
<td width="230">
<p>residential-type</p>
</td>
</tr>
<tr>
<td width="230">
<p>additional-bed-type</p>
</td>
<td width="230">
<p>equipment-feature</p>
</td>
<td width="230">
<p>residential-number</p>
</td>
</tr>
<tr>
<td width="230">
<p>crisis-type</p>
</td>
<td width="230">
<p>gender-capacity-available</p>
</td>
<td width="230">
<p>temporary-assignement</p>
</td>
</tr>
<tr>
<td width="230">
<p>capacity-closing-type</p>
</td>
<td width="230">
<p>limit-value</p>
</td>
<td width="230">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="230">
<p>capacity-update-date</p>
</td>
<td width="230">
<p>temporality-capacity</p>
</td>
<td width="230">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>

Ces critères de recherche sont applicables à la ressource
HealthcareService, grâce au chainage. Pour cela utiliser la syntaxe
suivante : `location:[NOM CRITERE]`

### Paramètres et modificateurs de requêtes FHIR

Tous les paramètres et modificateurs de requêtes décrits au paragraphe (à compléter)
sont applicables à ce cas d'usage.

### Exemple de requêtes

#### Scénario 1 : Recherche sur un critère capacitaire #1

**Description du scénario :** Un consommateur cherche les offres proposant une activité opérationnelle = XXX et disposant d\'un lit disponible = (02 (TRE-R330-StatutCapacite) et \>0 pour la quantité)

**Requête :**

`get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX&location:capacity-status= https://mos.esante.gouv.fr/NOS/TRE_R330-StatutCapacite/FHIR/TRE-R330-StatutCapacite|02&_revinclude=Location:healthcareservice`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX #critère de recherche sur l’activité opérationnelle
&location:capacity-status= https://mos.esante.gouv.fr/NOS/TRE_R330-StatutCapacite/FHIR/TRE-R330-StatutCapacite|02 #critère de recherche sur la disponibilité d’un lit
&_revinclude=Location:healthcareservice #inclus les Location qui référencent les HealthcareService
```
#### Scénario 2 : Recherche un critère capacitaire #2

**Description du scénario :** Un consommateur cherche les offres proposant une activité opérationnelle = XXX et disposant d\'un lit fermé réouvrable = 01 (TRE-R333-TypeFermetureCapacite)

**Requête :**

`get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX&location:capacity-closing-type= https://mos.esante.gouv.fr/NOS/TRE_R333-TypeFermetureCapacite/FHIR/TRE-R333-TypeFermetureCapacite|01&_revinclude=Location:healthcareservice`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX #critère de recherche sur l’activité opérationnelle
&location:capacity-closing-type=https://mos.esante.gouv.fr/NOS/TRE_R333-TypeFermetureCapacite/FHIR/TRE-R333-TypeFermetureCapacite|01 #critère de recherche sur le lit fermé réouvrable
&_revinclude=Location:healthcareservice #inclus les Location qui référencent les HealthcareService
```
#### Scénario 3 : Recherche sur un critère de l'équipement

**Description du scénario :** Un consommateur cherche une offre dont l'activité opérationnelle = chirurgie traumatologique (025 de
TRE-R211-ActiviteOperationnelle) proposant un appareil de radiologie adapté à l\'obésité du patient (83 de TRE-R212-Equipement)

**Requête :**

`get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|025&location:equipment-type= https://mos.esante.gouv.fr/NOS/TRE_R212-Equipement/FHIR/TRE-R212-Equipement|83&_revinclude=Location:healthcareservice`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|025 #critère de recherche sur l’offre de chirurgie traumatologique
&location:equipment-type= https://mos.esante.gouv.fr/NOS/TRE_R212-Equipement/FHIR/TRE-R212-Equipement|83 #critère de recherche sur l’appareil de radiologie adapté à l’obésité du patient
&_revinclude=Location:healthcareservice #inclus les Location qui référencent les HealthcareService
```
# Critères de recherche 

## StructureDefinition-ror-location
<table width="100%">
<tbody>
<tr>
<td width="28%">
<p><strong>Attribut ME 3.0</strong></p>
</td>
<td width="14%">
<p><strong>Search parameters </strong></p>
</td>
<td width="6%">
<p><strong>Natif FHIR</strong></p>
</td>
<td width="6%">
<p><strong>Type FHIR</strong></p>
</td>
<td width="43%">
<p><strong>Description</strong></p>
</td>
</tr>
<tr>
<td width="28%">
<p><strong>-</strong></p>
</td>
<td width="14%">
<p>near</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>special</p>
</td>
<td width="43%">
<p>Recherche positionnelle (coordonn&eacute;es g&eacute;ographique)&nbsp;</p>
</td>
</tr>
<tr>
<td width="28%">
<p><strong>-</strong></p>
</td>
<td width="14%">
<p>near-insee-code</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>special</p>
</td>
<td width="43%">
<p>Recherche positionnelle (code INSEE commune)</p>
</td>
</tr>
<tr>
<td width="28%">
<p><strong>-</strong></p>
</td>
<td width="14%">
<p>status</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Statut de la ressource</p>
</td>
</tr>
<tr>
<td width="28%">
<p>Metadonnee/dateMiseJour</p>
</td>
<td width="14%">
<p>_lastUpdated</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>date</p>
</td>
<td width="43%">
<p>Date de derni&egrave;re mise &agrave; jour.</p>
</td>
</tr>
<tr>
<td width="28%">
<p>Metadonnee/regionSource</p>
</td>
<td width="14%">
<p>_tag</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Code de la r&eacute;gion de la source de la donn&eacute;e.</p>
</td>
</tr>
<tr>
<td width="28%">
<p>idExterneSynchro</p>
</td>
<td width="14%">
<p>identifier</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>L&rsquo;identifiant externe de synchronisation est l&rsquo;identifiant d&eacute;fini par le porteur d&rsquo;offre pour la zone d&rsquo;h&eacute;bergement des lits.</p>
<p>Location.identifier.type = 26 | JDV_J236</p>
</td>
</tr>
<tr>
<td width="28%">
<p>identifiant</p>
</td>
<td width="14%">
<p>identifier</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Identifiant fonctionnel du lieu.</p>
<p>Location.identifier.type = 25 | JDV_J236</p>
</td>
</tr>
<tr>
<td width="28%">
<p>fonctionLieu</p>
</td>
<td width="14%">
<p>type</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>La fonction correspond &agrave; la destination d'usage du lieu.</p>
<p>JDV_J198-FonctionLieu-ROR issu de la TRE_R343-FonctionLieu</p>
</td>
</tr>
<tr>
<td width="28%">
<p>Adresse/codePostal</p>
</td>
<td width="14%">
<p>address-postalcode</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>string</p>
</td>
<td width="43%">
<p>Code Postal ou code postal sp&eacute;cifique CEDEX</p>
</td>
</tr>
<tr>
<td width="28%">
<p>Adresse/localite</p>
</td>
<td width="14%">
<p>address-city</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>string</p>
</td>
<td width="43%">
<p>Localit&eacute; ou Libell&eacute; du bureau distributeur CEDEX</p>
</td>
</tr>
<tr>
<td width="28%">
<p>Lieu/communeCOG</p>
</td>
<td width="14%">
<p>commune-cog</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Code officiel g&eacute;ographique (COG) de la commune dans laquelle le lieu est situ&eacute;.</p>
<p>JDV_J230-CommuneOM-ROR issu de la TRE_R13-CommuneOM</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/statutCapacite</p>
</td>
<td width="14%">
<p>capacity-status</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Permet de pr&eacute;ciser le statut des lits d&eacute;crits.</p>
<p>JDV_J188-TypeStatutCapacite-ROR issu de la TRE_R330-StatutCapacite</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/nombreCapacite</p>
</td>
<td width="14%">
<p>nb-capacity</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>number</p>
</td>
<td width="43%">
<p>Quantit&eacute; de lits ou places de la capacit&eacute; exprim&eacute;e.</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/natureCapacite</p>
</td>
<td width="14%">
<p>capacity-type</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Indique si la capacit&eacute; est exprim&eacute;e en lits ou en places.</p>
<p>JDV_J187-NatureCapacite-ROR issu de la TRE_R329-NatureCapacite</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/temporaliteCapacite</p>
</td>
<td width="14%">
<p>temporality-capacity</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Indique le moment o&ugrave; cette capacit&eacute; sera effective. Il est ainsi possible de d&eacute;crire la situation imm&eacute;diate, ou de fournir des informations prospectives de capacit&eacute;s, prenant notamment en compte les entr&eacute;es et sorties d&eacute;j&agrave; identifi&eacute;s de patients.</p>
<p>JDV_J189-TemporaliteCapacite-ROR issu de la TRE_R331-Temporalite</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/genreCapaciteDispo</p>
</td>
<td width="14%">
<p>gender-capacity-available</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Genre des patients qui peuvent &ecirc;tre install&eacute;s dans des lits disponibles.</p>
<p>JDV_J190-GenreCapacite-ROR issu de la TRE_R332-GenreCapacite</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/typeFermetureCapacite</p>
</td>
<td width="14%">
<p>capacity-closing-type</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Indique le statut de lits ferm&eacute;s, permettant d&rsquo;identifier le nombre de lits ferm&eacute;s qui peuvent &ecirc;tre r&eacute;activ&eacute;s en cas de besoin et le nombre de ceux qui ne peuvent pas l&rsquo;&ecirc;tre.</p>
<p>JDV_J191-TypeFermetureCapacite-ROR issu de la TRE_R333-TypeFermetureCapacite</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/typeLitSupplementaire</p>
</td>
<td width="14%">
<p>additional-bed-type</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Indique le statut de lits suppl&eacute;mentaires, pour identifier le nombre de lits suppl&eacute;mentaires d&eacute;j&agrave; mobilis&eacute;s et, par typologie de mobilisation possible, le nombre de lits qui ne le sont pas encore.</p>
<p>JDV_J192-TypeLitSupplementaire-ROR issu de la TRE_R334-TypeLitSupplementaire</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/typeCrise</p>
</td>
<td width="14%">
<p>crisis-type</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Indique le type de crise qui permet de mobiliser le nombre de lits suppl&eacute;mentaires d&eacute;crits.</p>
<p>JDV_J194-TypeCrise-ROR issu de la TRE_R336-TypeCrise</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/dateMAJCapacite</p>
</td>
<td width="14%">
<p>capacity-update-date</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>date</p>
</td>
<td width="43%">
<p>Date &agrave; laquelle la capacit&eacute; d&rsquo;accueil a &eacute;t&eacute; mise &agrave; jour dans la source.</p>
</td>
</tr>
<tr>
<td width="28%">
<p>EquipementSpecifique/typeEquipement</p>
</td>
<td width="14%">
<p>equipment-type</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Les &eacute;quipements sp&eacute;cifiques d&eacute;crits sont des ressources propres de la structure ou mises &agrave; disposition dans le cadre d&rsquo;une convention &agrave; la condition qu'elles soient utilis&eacute;es sur site.</p>
<p>JDV_J18-EquipementSpecifique-ROR issu de la TRE_R212-Equipement</p>
</td>
</tr>
<tr>
<td width="28%">
<p>LimiteCaracteristiqueEquipement<strong>/</strong>typeCaracteristique</p>
</td>
<td width="14%">
<p>equipment-feature</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Indique la caract&eacute;ristique de l'&eacute;quipement pour laquelle une valeur limite est pr&eacute;cis&eacute;e.</p>
<p>JDV_J228-TypeCaracteristiqueEquipement-ROR</p>
</td>
</tr>
<tr>
<td width="28%">
<p>LimiteCaracteristiqueEquipement/valeurLimite</p>
</td>
<td width="14%">
<p>limit-value</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>quantity</p>
</td>
<td width="43%">
<p>Correspond &agrave; la valeur extr&ecirc;me associ&eacute;e &agrave; une caract&eacute;ristique de l'&eacute;quipement</p>
<p>TRE_R247-UcumUniteMesure</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteHabitation/typeHabitation</p>
</td>
<td width="14%">
<p>residential-type</p>
</td>
<td width="6%">
<p>&nbsp;Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Le type d&rsquo;habitation renseigne sur la taille et le nombre de pi&egrave;ces d&rsquo;un logement.</p>
<p>JDV_J32-TypeHabitation-ROR issu de la TRE_R242-TypeHabitation</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteHabitation/nbHabitation</p>
</td>
<td width="14%">
<p>residential-number</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>number</p>
</td>
<td width="43%">
<p>Nombre d'habitations du m&ecirc;me type.</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapacitePriseCharge/affectationTemporaire</p>
</td>
<td width="14%">
<p>temporary-assignement</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>L&rsquo;affectation temporaire permet de r&eacute;server tout ou partie des lits d&rsquo;une zone d&rsquo;h&eacute;bergement pour des patients selon qu&rsquo;ils soient &ndash;ou non- concern&eacute;s par une pathologie (Covid+, Covid-, &hellip;) ou un &eacute;v&egrave;nement (catastrophe naturelle, attentat, &hellip;).</p>
<p>JDV_J195-AffectationTemporaire-ROR issu de la TRE_R337-AffectationTemporaire</p>
</td>
</tr>
</tbody>
</table>

## StructureDefinition-ror-healthcareservice

Critères de recherches applicables à la ressource HealthcareService.
<table width="100%">
<tbody>
<tr>
<td width="22%">
<p><strong>Attribut ME 3.0</strong></p>
</td>
<td width="16%">
<p><strong>Search parameters </strong></p>
</td>
<td width="7%">
<p><strong>Natif FHIR</strong></p>
</td>
<td width="9%">
<p><strong>Type FHIR</strong></p>
</td>
<td width="44%">
<p><strong>Description</strong></p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>-</strong></p>
</td>
<td width="16%">
<p>location</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>reference</p>
</td>
<td width="44%">
<p>R&eacute;f&eacute;rence &agrave; la ressource Location</p>
</td>
</tr>
<tr>
<td width="22%">
<p>Metadonnee/dateMiseJour</p>
</td>
<td width="16%">
<p>_lastUpdated</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>date</p>
</td>
<td width="44%">
<p>Date de derni&egrave;re mise &agrave; jour.</p>
</td>
</tr>
<tr>
<td width="22%">
<p>Metadonnee/regionSource</p>
</td>
<td width="16%">
<p>_tag</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>Code r&eacute;gion de la source de la donn&eacute;e.</p>
</td>
</tr>
<tr>
<td width="22%">
<p>identifiantOffre</p>
</td>
<td width="16%">
<p>identifier</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>Identifiant de l&rsquo;offre</p>
</td>
</tr>
<tr>
<td width="22%">
<p>nomOffre (remplace nomOI)</p>
</td>
<td width="16%">
<p>name</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>string</p>
</td>
<td width="44%">
<p>D&eacute;nomination sous laquelle l'offre est identifi&eacute;e par le porteur d'offre et r&eacute;sultant de l'application de r&egrave;gles de bonne pratique pour &ecirc;tre affichable aupr&egrave;s des professionnels comme du grand public.</p>
</td>
</tr>
<tr>
<td width="22%">
<p>typeOffre (remplace categorieOrganisation)</p>
</td>
<td width="16%">
<p>service-category</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>Le type d'offre permet de distinguer les offres et de les classer en fonction de leur nature particuli&egrave;re, li&eacute;e &agrave; un agr&eacute;ment, un personnel sp&eacute;cialement form&eacute; ou un environnement particuli&egrave;rement adapt&eacute; &agrave; l'&eacute;tat de sant&eacute; des patients.</p>
<p>JDV_J238-TypeOffre-ROR issu de la TRE_R244-CategorieOrganisation</p>
</td>
</tr>
<tr>
<td width="22%">
<p>champActivite</p>
</td>
<td width="16%">
<p>service-type</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>Un champ d&rsquo;activit&eacute; indique le domaine dans lequel s'inscrit l'offre.</p>
<p>JDV_J20-ChampActivite-ROR issu de la TRE_R227-ChampActivite</p>
</td>
</tr>
<tr>
<td width="22%">
<p>secteurPsychiatrique</p>
</td>
<td width="16%">
<p>psychiatric-sector</p>
</td>
<td width="7%">
<p>Non</p>
</td>
<td width="9%">
<p>string</p>
</td>
<td width="44%">
<p>Le secteur de psychiatrie (ou sectorisation) correspond &agrave; une aire g&eacute;ographique &agrave; laquelle sont rattach&eacute;es des structures de relais et de soins qui prennent en charge des patients r&eacute;sidants sur ce secteur.</p>
</td>
</tr>
<tr>
<td width="22%">
<p>modaliteAccueil (remplace accueilSequentielAccepte)</p>
</td>
<td rowspan="7" width="16%">
<p>characteristic</p>
</td>
<td rowspan="7" width="7%">
<p>Oui</p>
</td>
<td rowspan="7" width="9%">
<p>&nbsp;</p>
<p>token</p>
<p>&nbsp;</p>
</td>
<td width="44%">
<p>Une modalit&eacute; d&rsquo;accueil permet de pr&eacute;ciser le mode de prise en charge g&eacute;ographiquement (ex. : sur le lieu de vie), technologiquement (ex. : t&eacute;l&eacute;consultation) ou organisationnellement (ex. : accueil s&eacute;quentiel).</p>
<p>JDV_J226-ModaliteAccueil-ROR issu de la TRE_R338-ModaliteAccueil</p>
</td>
</tr>
<tr>
<td width="22%">
<p>specialisationPriseEnCharge</p>
</td>
<td width="44%">
<p>Une sp&eacute;cialisation de prise en charge correspond &agrave; un regroupement de troubles, de pathologies ou de d&eacute;ficiences qui n&eacute;cessitent la mobilisation d'expertises, de comp&eacute;tences et/ou d'&eacute;quipements sp&eacute;cifiques pouvant &ecirc;tre discriminants dans le choix d&rsquo;orientation du patient.</p>
<p>JDV_J35-SpecialisationDePriseEnCharge-ROR issu de la TRE_R245-SpecialisationDePriseEnCharge</p>
</td>
</tr>
<tr>
<td width="22%">
<p>modePriseEnCharge</p>
</td>
<td width="44%">
<p>Le mode de prise en charge caract&eacute;rise l'h&eacute;bergement ainsi que le niveau de technicit&eacute; et d'intensit&eacute; des soins.</p>
<p>JDV_J19-ModePriseEnCharge-ROR issu de la TRE_R213-ModePriseEnCharge</p>
</td>
</tr>
<tr>
<td width="22%">
<p>temporaliteAccueil</p>
</td>
<td width="44%">
<p>La temporalit&eacute; d&rsquo;accueil apporte une pr&eacute;cision sur le mode de prise en charge. Elle indique si l'&eacute;tablissement m&eacute;dico-social accepte un accueil pour une dur&eacute;e limit&eacute;e dans le temps, de 90 jours maximum par an.</p>
<p>JDV_J30-TemporaliteAccueil-ROR issu de la TRE_R240-TemporaliteAccueil</p>
</td>
</tr>
<tr>
<td width="22%">
<p>acteSpecifique</p>
</td>
<td width="44%">
<p>Un acte sp&eacute;cifique est une action men&eacute;e par un ou plusieurs acteur(s) de sant&eacute; dans le cadre d&rsquo;une activit&eacute;. Cet acte peut correspondre &agrave; une technique sp&eacute;cialis&eacute;e ou traduire une expertise discriminante dans le parcours de sant&eacute;.</p>
<p>JDV_J16-ActeSpecifique-ROR issu de la TRE_R210-ActeSpecifique</p>
</td>
</tr>
<tr>
<td width="22%">
<p>professionRessource</p>
</td>
<td width="44%">
<p>La profession ressource traduit la mobilisation de m&eacute;tiers qui constituent un facteur diff&eacute;renciant dans la r&eacute;alisation de la prestation.</p>
<p>JDV_J186-ProfessionRessource-ROR issu de la</p>
</td>
</tr>
<tr>
<td width="22%">
<p>niveauExpertise</p>
</td>
<td width="44%">
<p>Le niveau d'expertise atteste du niveau de ressources humaines et mat&eacute;rielles engag&eacute;es dans la r&eacute;alisation de l'offre et d&eacute;fini dans un cahier des charges officiel.</p>
<p>JDV-J227-NiveauExpertise-ROR issu de la TRE_R253-TypeMaternite</p>
</td>
</tr>
<tr>
<td width="22%">
<p>competenceSpecifique</p>
</td>
<td width="16%">
<p>specific-competence</p>
</td>
<td width="7%">
<p>Non</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>La comp&eacute;tence sp&eacute;cifique correspond &agrave; une capacit&eacute; ou connaissance reconnue qui permet ou facilite l&rsquo;accueil d&rsquo;une personne. La comp&eacute;tence sp&eacute;cifique n&rsquo;est ni une sp&eacute;cialit&eacute; ordinale, ni une profession</p>
<p>JDV-J33-CompetenceSpecifique-ROR issu de la TRE_R243-CompetenceSpecifique</p>
</td>
</tr>
<tr>
<td width="22%">
<p>zoneIntervention</p>
</td>
<td width="16%">
<p>intervention-zone</p>
</td>
<td width="7%">
<p>Non</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>Correspond au p&eacute;rim&egrave;tre g&eacute;ographique dans lequel habitent les personnes pouvant &ecirc;tre prises en charge pour la prestation d&eacute;crite.</p>
<p>JDV-J223-TypeDivisionTerritoriale-ROR issu de la TRE_R201-TypeDivisionTerritoriale</p>
</td>
</tr>
<tr>
<td width="22%">
<p>ActiviteOperationnelle/ activiteOperationnelle</p>
</td>
<td width="16%">
<p>speciality</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>Une activit&eacute; op&eacute;rationnelle est un ensemble coh&eacute;rent d&rsquo;actions et de pratiques mises en &oelig;uvre pour r&eacute;pondre aux besoins en Sant&eacute; de la personne.</p>
<p>JDV_J17-ActiviteOperationnelle-ROR issu de la TRE_R211-ActiviteOperationnelle</p>
</td>
</tr>
<tr>
<td width="22%">
<p>Patientele/publicPrisEnCharge</p>
</td>
<td width="16%">
<p>patient-type</p>
</td>
<td width="7%">
<p>Non</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>Ensemble de personnes qui pr&eacute;sentent des caract&egrave;ristiques psychologiques, intellectuelles, physiques, psycho-motrices, comportementales leur pemettant de b&eacute;n&eacute;ficier de la prestation d&eacute;crite.</p>
<p>JDV-J29-PublicPrisEnCharge-ROR issu de la TRE_R239-PublicPrisEnCharge</p>
</td>
</tr>
<tr>
<td width="22%">
<p>Patientele/ageMin</p>
</td>
<td width="16%">
<p>age-range-low</p>
</td>
<td width="7%">
<p>Non</p>
</td>
<td width="9%">
<p>quantity</p>
</td>
<td width="44%">
<p>Age minimum (inclus) des personnes leur permettant de b&eacute;n&eacute;ficier de la prestation d&eacute;crite.</p>
<p>JDV_J37-UcumUniteTemps issu de la TRE_R247-UcumUniteMesure</p>
</td>
</tr>
<tr>
<td width="22%">
<p>Patientele/ageMax</p>
</td>
<td width="16%">
<p>age-range-high</p>
</td>
<td width="7%">
<p>Non</p>
</td>
<td width="9%">
<p>quantity</p>
</td>
<td width="44%">
<p>Age maximum (inclus) des personnes leur permettant de b&eacute;n&eacute;ficier de la prestation d&eacute;crite.</p>
<p>JDV_J37-UcumUniteTemps issu de la TRE_R247-UcumUniteMesure</p>
</td>
</tr>
</tbody>
</table>

## StructureDefinition-ror-organization

Critères de recherches applicables à la ressource Organization.

<table width="100%">
<tbody>
<tr>
<td width="17%">
<p><strong>Attribut ME 3.0</strong></p>
</td>
<td width="17%">
<p><strong>Search parameters </strong></p>
</td>
<td width="8%">
<p><strong>Natif FHIR</strong></p>
</td>
<td width="9%">
<p><strong>Type FHIR</strong></p>
</td>
<td width="46%">
<p><strong>Description</strong></p>
</td>
</tr>
<tr>
<td width="17%">
<p>Metadonnee/dateMiseJour</p>
</td>
<td width="17%">
<p>_lastUpdated</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>Date</p>
</td>
<td width="46%">
<p>Date de derni&egrave;re mise &agrave; jour.</p>
</td>
</tr>
<tr>
<td width="17%">
<p>Metadonnee/regionSource</p>
</td>
<td width="17%">
<p>_tag</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="46%">
<p>Code r&eacute;gion de la source de la donn&eacute;e.</p>
</td>
</tr>
<tr>
<td width="17%">
<p>idNat_Struct&nbsp;</p>
</td>
<td width="17%">
<p>identifier</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>Token</p>
</td>
<td width="46%">
<p>Identification nationale de l'Entit&eacute; G&eacute;ographique d&eacute;finie dans le CI-SIS.</p>
</td>
</tr>
<tr>
<td width="17%">
<p>nomOI</p>
</td>
<td width="17%">
<p>name</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>string</p>
</td>
<td width="46%">
<p>Nom de l'organisation interne.</p>
</td>
</tr>
<tr>
<td width="17%">
<p>numFINESS</p>
</td>
<td width="17%">
<p>identifier</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>Token</p>
</td>
<td width="46%">
<p>Num&eacute;ro FINESS de l'entit&eacute; g&eacute;ographique.</p>
</td>
</tr>
<tr>
<td width="17%">
<p>categorieEG</p>
</td>
<td width="17%">
<p>type</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>Token</p>
</td>
<td width="46%">
<p>La cat&eacute;gorie d'&eacute;tablissement est le cadre r&eacute;glementaire dans lequel s'exerce l'activit&eacute; de l'entit&eacute; g&eacute;ographique.</p>
<p>JDV_J55-CategorieEG-ROR issu de TRE_R66-CategorieEtablissement, TRE_R316-AutreCategorieEtablissement et TRE_R02-SecteurActivite</p>
</td>
</tr>
<tr>
<td width="17%">
<p>zonePoser</p>
</td>
<td width="17%">
<p>drop-zone</p>
</td>
<td width="8%">
<p>Non</p>
</td>
<td width="9%">
<p>Token</p>
</td>
<td width="46%">
<p>Cet indicateur pr&eacute;cise l&rsquo;existence d&rsquo;une zone de poser pour h&eacute;licopt&egrave;re</p>
</td>
</tr>
<tr>
<td width="17%">
<p>typeFermeture</p>
</td>
<td width="17%">
<p>closing-type</p>
</td>
<td width="8%">
<p>Non</p>
</td>
<td width="9%">
<p>Token</p>
</td>
<td width="46%">
<p>Type de fermeture de l'entit&eacute; g&eacute;ographique, au sens des r&egrave;gles de gestion du SI FINESS (par exemple: fermeture d&eacute;finitive, fermeture provisoire).</p>
<p>JDV-J201-TypeFermeture-ROR issu de la TRE_R286-TypeFermeture</p>
</td>
</tr>
<tr>
<td width="17%">
<p>dateFermeture</p>
</td>
<td width="17%">
<p>period-end</p>
</td>
<td width="8%">
<p>Non</p>
</td>
<td width="9%">
<p>Date</p>
</td>
<td width="46%">
<p>Date de fermeture de l'entit&eacute; g&eacute;ographique. La date doit &ecirc;tre sup&eacute;rieure &agrave; la date d&rsquo;ouverture.</p>
</td>
</tr>
</tbody>
</table>

## StructureDefinition-ror-practioner

Critères de recherches applicables à la ressource Practioner.

<table width="100%">
<tbody>
<tr>
<td width="17%">
<p><strong>Attribut ME 3.0</strong></p>
</td>
<td width="17%">
<p><strong>Search parameters </strong></p>
</td>
<td width="8%">
<p><strong>Natif FHIR</strong></p>
</td>
<td width="9%">
<p><strong>Type FHIR</strong></p>
</td>
<td width="46%">
<p><strong>Description</strong></p>
</td>
</tr>
<tr>
<td width="17%">
<p>Metadonnee/dateMiseJour</p>
</td>
<td width="17%">
<p>_lastUpdated</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>Date</p>
</td>
<td width="46%">
<p>Date de derni&egrave;re mise &agrave; jour.</p>
</td>
</tr>
<tr>
<td width="17%">
<p>Metadonnee/regionSource</p>
</td>
<td width="17%">
<p>_tag</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="46%">
<p>Code r&eacute;gion de la source de la donn&eacute;e.</p>
</td>
</tr>
</tbody>
</table>

## StructureDefinition-ror-practionerrole

Critères de recherches applicables à la ressource PractionerRole.

<table width="100%">
<tbody>
<tr>
<td width="17%">
<p><strong>Attribut ME 3.0</strong></p>
</td>
<td width="17%">
<p><strong>Search parameters </strong></p>
</td>
<td width="8%">
<p><strong>Natif FHIR</strong></p>
</td>
<td width="9%">
<p><strong>Type FHIR</strong></p>
</td>
<td width="46%">
<p><strong>Description</strong></p>
</td>
</tr>
<tr>
<td width="17%">
<p>Metadonnee/dateMiseJour</p>
</td>
<td width="17%">
<p>_lastUpdated</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>Date</p>
</td>
<td width="46%">
<p>Date de derni&egrave;re mise &agrave; jour.</p>
</td>
</tr>
<tr>
<td width="17%">
<p>Metadonnee/regionSource</p>
</td>
<td width="17%">
<p>_tag</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="46%">
<p>Code r&eacute;gion de la source de la donn&eacute;e.</p>
</td>
</tr>
</tbody>
</table>

# Paramètres et modificateurs de requêtes FHIR

<table width="100%">
<tbody>
<tr>
<td width="13%">
<p>&nbsp;</p>
</td>
<td colspan="2" width="38%">
<p><strong>Lien vers sp&eacute;cification</strong></p>
</td>
<td width="47%">
<p><strong>Description</strong></p>
</td>
</tr>
<tr>
<td colspan="4" width="100%">
<p><strong>Param&egrave;tres et modificateurs : inclusion</strong></p>
</td>
</tr>
<tr>
<td width="13%">
<p><strong>_revinclude</strong></p>
</td>
<td colspan="2" width="38%">
<p><a href="https://www.hl7.org/fhir/search.html#revinclude">https://www.hl7.org/fhir/search.html#revinclude</a></p>
</td>
<td width="47%">
<p>Indique que les ressources qui font r&eacute;f&eacute;rence &agrave; HealthcareService doivent &ecirc;tre incluses dans la r&eacute;ponse</p>
</td>
</tr>
<tr>
<td width="13%">
<p><strong>_include</strong></p>
</td>
<td colspan="2" width="38%">
<p><a href="https://www.hl7.org/fhir/search.html#include">https://www.hl7.org/fhir/search.html#include</a></p>
</td>
<td width="47%">
<p>Indique que les ressources r&eacute;f&eacute;renc&eacute;es par HealthcareService doivent &ecirc;tre incluses dans la r&eacute;ponse</p>
</td>
</tr>
<tr>
<td width="13%">
<p><strong>:iterate</strong></p>
</td>
<td colspan="2" width="38%">
<p>&nbsp;</p>
</td>
<td width="47%">
<p>Le processus d&rsquo;inclusion peut &ecirc;tre it&eacute;ratif si le modificateur :iterate est ajout&eacute; dans la requ&ecirc;te.</p>
</td>
</tr>
<tr>
<td colspan="3" width="52%">
<p><strong>Param&egrave;tres et modificateurs : chainage invers&eacute; </strong></p>
</td>
<td width="47%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="13%">
<p><strong>_has</strong></p>
</td>
<td colspan="2" width="38%">
<p><a href="http://hl7.org/fhir/search.html#has">http://hl7.org/fhir/search.html#has</a></p>
</td>
<td width="47%">
<p>Permet d&rsquo;utiliser les param&egrave;tres de recherche des ressources faisant r&eacute;f&eacute;rence &agrave; la ressource Location</p>
</td>
</tr>
<tr>
<td colspan="4" width="100%">
<p><strong>Param&egrave;tres et modificateurs&nbsp;: r&eacute;ponses</strong></p>
</td>
</tr>
<tr>
<td width="13%">
<p><strong>_count</strong></p>
</td>
<td colspan="2" width="38%">
<p><a href="https://www.hl7.org/fhir/search.html#count">https://www.hl7.org/fhir/search.html#count</a></p>
</td>
<td width="47%">
<p>Indique le nombre souhait&eacute; par le consommateur de r&eacute;sultat par page.</p>
<p><strong><u>RG_RECH_52&nbsp;:</u></strong> Par d&eacute;faut la recherche retourne 200 r&eacute;sultats maximum par page.</p>
</td>
</tr>
<tr>
<td width="13%">
<p><strong>_sort</strong></p>
</td>
<td colspan="2" width="38%">
<p><a href="http://hl7.org/fhir/search.html#_sort">http://hl7.org/fhir/search.html#_sort</a></p>
</td>
<td width="47%">
<p>Indique dans quel ordre renvoyer les r&eacute;sultats</p>
</td>
</tr>
<tr>
<td width="13%">
<p><strong>_elements</strong></p>
</td>
<td colspan="2" width="38%">
<p><a href="https://www.hl7.org/fhir/search.html#elements">https://www.hl7.org/fhir/search.html#elements</a></p>
</td>
<td width="47%">
<p>Permet au consommateur de demander les &eacute;l&eacute;ments &agrave; retourner de la ressource recherch&eacute;e.</p>
</td>
</tr>
<tr>
<td colspan="3" width="52%">
<p><strong>P</strong><strong>r&eacute;fixe de comparaison</strong></p>
</td>
<td width="47%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="2" width="19%">
<p><strong>gt, lt, ge, le, sa &amp; eb</strong></p>
</td>
<td width="33%">
<p><a href="https://www.hl7.org/fhir/search.html#date">https://www.hl7.org/fhir/search.html#date</a></p>
</td>
<td width="47%">
<p>Permet d&rsquo;effectuer des recherches comparatives</p>
</td>
</tr>
</tbody>
</table>

# Annexes

## Jeu de données pour exemple

<div class="figure">
    <img src="image13.png" alt="Jeu de données d'exemples: les relations" width="1238" height="922" title="Jeu de données d'exemples: les relations)">
</div>
**Figure 7 : Relations entre les données d'exemples**

<table width="934">
<tbody>
<tr>
<td colspan="14" width="934">
<p><strong>Location v3.0</strong></p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>ID</strong></p>
</td>
<td colspan="4" width="248">
<p><strong>Location1</strong></p>
</td>
<td colspan="3" width="203">
<p><strong>Location2</strong></p>
</td>
<td colspan="6" width="370">
<p><strong>Location 3</strong></p>
</td>
</tr>
<tr>
<td width="113">
<p>dateModification</p>
</td>
<td colspan="4" width="248">
<p>2022-11-07T14:38</p>
</td>
<td colspan="3" width="203">
<p>2022-11-06T14:37</p>
</td>
<td colspan="6" width="370">
<p>2022-11-06T14:37</p>
</td>
</tr>
<tr>
<td colspan="14" width="934">
<p><strong>LieuRealisationOffre</strong></p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>idExterneSynchro</strong></p>
</td>
<td colspan="4" width="248">
<p>Toto</p>
</td>
<td colspan="3" width="203">
<p>Titi</p>
</td>
<td colspan="6" width="370">
<p>Tata</p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>idPointSaisie</strong></p>
</td>
<td colspan="4" width="248">
<p>UE1</p>
</td>
<td colspan="3" width="203">
<p>UE2</p>
</td>
<td colspan="6" width="370">
<p>UF1</p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>communeCOG</strong></p>
</td>
<td colspan="4" width="248">&nbsp;</td>
<td colspan="3" width="203">&nbsp;</td>
<td colspan="6" width="370">&nbsp;</td>
</tr>
<tr>
<td width="113">
<p><strong>Adresse</strong></p>
</td>
<td colspan="4" width="248">
<p><span style="text-decoration: line-through;">27 Rue du Faubourg Saint-Jacques</span></p>
</td>
<td colspan="3" width="203">
<p>100 Bd du G&eacute;n&eacute;ral Leclerc</p>
</td>
<td colspan="6" width="370">
<p>47-83 Bd de l'H&ocirc;pital</p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>Adresse/codePostal&nbsp;</strong></p>
</td>
<td colspan="4" width="248">
<p><span style="text-decoration: line-through;">75014</span></p>
</td>
<td colspan="3" width="203">
<p>92110</p>
</td>
<td colspan="6" width="370">
<p>75013</p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>Adresse/localite&nbsp;</strong></p>
</td>
<td colspan="4" width="248">
<p><span style="text-decoration: line-through;">Paris</span></p>
</td>
<td colspan="3" width="203">
<p>Clichy</p>
</td>
<td colspan="6" width="370">
<p>Paris</p>
</td>
</tr>
<tr>
<td colspan="14" width="934">
<p><strong>EquipementSpecifique</strong></p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>typeEquipement</strong></p>
</td>
<td colspan="4" width="248">
<p>Table de bloc op&eacute;ratoire ob&eacute;sit&eacute; (poids entre 150 et 250 kg) - bariatrique</p>
</td>
<td colspan="3" width="203">
<p>Coronaroscanner</p>
</td>
<td colspan="6" width="370">
<p>Angioscope + Coronaroscanner</p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>typeCaracteristique&nbsp;</strong></p>
</td>
<td width="76">
<p>&nbsp;</p>
</td>
<td width="57">
<p>&nbsp;</p>
</td>
<td width="54">
<p>&nbsp;</p>
</td>
<td width="62">
<p>&nbsp;</p>
</td>
<td width="64">
<p>&nbsp;</p>
</td>
<td width="77">&nbsp;</td>
<td width="62">
<p>&nbsp;</p>
</td>
<td width="69">
<p>&nbsp;</p>
</td>
<td width="57">&nbsp;</td>
<td width="47">&nbsp;</td>
<td width="74">&nbsp;</td>
<td width="62">&nbsp;</td>
<td width="62">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>valeurLimite&nbsp;</strong></p>
</td>
<td width="76">
<p>&nbsp;</p>
</td>
<td width="57">
<p>&nbsp;</p>
</td>
<td width="54">
<p>&nbsp;</p>
</td>
<td width="62">
<p>&nbsp;</p>
</td>
<td width="64">
<p>&nbsp;</p>
</td>
<td width="77">&nbsp;</td>
<td width="62">
<p>&nbsp;</p>
</td>
<td width="69">
<p>&nbsp;</p>
</td>
<td width="57">&nbsp;</td>
<td width="47">&nbsp;</td>
<td width="74">&nbsp;</td>
<td width="62">&nbsp;</td>
<td width="62">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="14" width="934">
<p><strong>CapacitePriseCharge</strong></p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>affectationTemporaire&nbsp;</strong></p>
</td>
<td width="76">
<p>Aucune</p>
</td>
<td width="57">
<p>Aucune</p>
</td>
<td width="54">
<p>Aucune</p>
</td>
<td width="62">
<p>Aucune</p>
</td>
<td width="64">
<p>Aucune</p>
</td>
<td width="77">
<p>Aucune</p>
</td>
<td width="62">
<p>Covid+</p>
</td>
<td width="69">
<p>Aucune</p>
</td>
<td width="57">
<p>Aucune</p>
</td>
<td width="47">
<p>Aucune</p>
</td>
<td width="74">
<p>Aucune</p>
</td>
<td width="62">
<p>Covid+</p>
</td>
<td width="62">
<p>Covid+</p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>natureCapacite</strong></p>
</td>
<td width="76">
<p>Lit</p>
</td>
<td width="57">
<p>Lit</p>
</td>
<td width="54">
<p>Lit</p>
</td>
<td width="62">
<p>Lit</p>
</td>
<td width="64">
<p>Lit</p>
</td>
<td width="77">
<p>Lit</p>
</td>
<td width="62">
<p>Lit</p>
</td>
<td width="69">
<p>Lit</p>
</td>
<td width="57">
<p>Lit</p>
</td>
<td width="47">
<p>Lit</p>
</td>
<td width="74">
<p>Lit</p>
</td>
<td width="62">
<p>Lit</p>
</td>
<td width="62">
<p>Lit</p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>statutCapacite</strong></p>
</td>
<td width="76">
<p>Install&eacute;</p>
</td>
<td width="57">
<p>Disponible</p>
</td>
<td width="54">
<p>Occup&eacute;</p>
</td>
<td width="62">
<p>Ferm&eacute;</p>
</td>
<td width="64">
<p>Install&eacute;</p>
</td>
<td width="77">
<p>Disponible</p>
</td>
<td width="62">
<p>Disponible</p>
</td>
<td width="69">
<p>Install&eacute;</p>
</td>
<td width="57">
<p>Disponible</p>
</td>
<td width="47">
<p>Disponible</p>
</td>
<td width="74">
<p>Disponible</p>
</td>
<td width="62">
<p>Disponible</p>
</td>
<td width="62">
<p>Disponible</p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>temporaliteCapacite&nbsp;</strong></p>
</td>
<td width="76">
<p>Courante</p>
</td>
<td width="57">
<p>Courante</p>
</td>
<td width="54">
<p>Courante</p>
</td>
<td width="62">
<p>Courante</p>
</td>
<td width="64">
<p>Courante</p>
</td>
<td width="77">
<p>Courante</p>
</td>
<td width="62">
<p>Courante</p>
</td>
<td width="69">
<p>Courante</p>
</td>
<td width="57">
<p>Courante</p>
</td>
<td width="47">
<p>Courante</p>
</td>
<td width="74">
<p>Courante</p>
</td>
<td width="62">
<p>Courante</p>
</td>
<td width="62">
<p>Courante</p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>nombreCapacite&nbsp;</strong></p>
</td>
<td width="76">
<p>2</p>
</td>
<td width="57">
<p>1</p>
</td>
<td width="54">
<p>1</p>
</td>
<td width="62">
<p>1</p>
</td>
<td width="64">
<p>14</p>
</td>
<td width="77">
<p>10</p>
</td>
<td width="62">
<p>4</p>
</td>
<td width="69">
<p>24</p>
</td>
<td width="57">
<p>10</p>
</td>
<td width="47">
<p>4</p>
</td>
<td width="74">
<p>6</p>
</td>
<td width="62">
<p>2</p>
</td>
<td width="62">
<p>2</p>
</td>
</tr>
<tr>
<td width="113">
<p>dateMAJCapacite&nbsp;</p>
</td>
<td width="76">
<p>07/11/2022 - 14:37</p>
</td>
<td width="57">
<p>07/11/2022 - 14:37</p>
</td>
<td width="54">
<p>07/11/2022 - 14:37</p>
</td>
<td width="62">
<p>01/11/2022 - 12:37</p>
</td>
<td width="64">
<p>06/11/2022 - 14:37</p>
</td>
<td width="77">
<p>06/11/2022 - 14:37</p>
</td>
<td width="62">
<p>06/11/2022 - 14:37</p>
</td>
<td width="69">
<p>06/11/2022 - 14:37</p>
</td>
<td width="57">
<p>06/11/2022 - 14:37</p>
</td>
<td width="47">
<p>06/11/2022 - 14:37</p>
</td>
<td width="74">
<p>06/11/2022 - 14:37</p>
</td>
<td width="62">
<p>06/11/2022 - 14:37</p>
</td>
<td width="62">
<p>06/11/2022 - 14:37</p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>genreCapaciteDispo&nbsp;</strong></p>
</td>
<td width="76">
<p>Ind&eacute;termin&eacute;</p>
</td>
<td width="57">
<p>Ind&eacute;termin&eacute;</p>
</td>
<td width="54">
<p>Ind&eacute;termin&eacute;</p>
</td>
<td width="62">
<p>Ind&eacute;termin&eacute;</p>
</td>
<td width="64">
<p>Ind&eacute;termin&eacute;</p>
</td>
<td width="77">
<p>Ind&eacute;termin&eacute;</p>
</td>
<td width="62">
<p>Ind&eacute;termin&eacute;</p>
</td>
<td width="69">
<p>Ind&eacute;termin&eacute;</p>
</td>
<td width="57">
<p>Homme</p>
</td>
<td width="47">
<p>Femme</p>
</td>
<td width="74">
<p>Ind&eacute;termin&eacute;</p>
</td>
<td width="62">
<p>Homme</p>
</td>
<td width="62">
<p>Femme</p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>typeFermetureCapacite&nbsp;</strong></p>
</td>
<td width="76">
<p>&nbsp;</p>
</td>
<td width="57">
<p>&nbsp;</p>
</td>
<td width="54">
<p>&nbsp;</p>
</td>
<td width="62">
<p>&nbsp;</p>
</td>
<td width="64">
<p>&nbsp;</p>
</td>
<td width="77">&nbsp;</td>
<td width="62">
<p>&nbsp;</p>
</td>
<td width="69">
<p>&nbsp;</p>
</td>
<td width="57">&nbsp;</td>
<td width="47">&nbsp;</td>
<td width="74">&nbsp;</td>
<td width="62">&nbsp;</td>
<td width="62">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>typeLitSupplementaire&nbsp;</strong></p>
</td>
<td width="76">
<p>&nbsp;</p>
</td>
<td width="57">
<p>&nbsp;</p>
</td>
<td width="54">
<p>&nbsp;</p>
</td>
<td width="62">
<p>&nbsp;</p>
</td>
<td width="64">
<p>&nbsp;</p>
</td>
<td width="77">&nbsp;</td>
<td width="62">
<p>&nbsp;</p>
</td>
<td width="69">
<p>&nbsp;</p>
</td>
<td width="57">&nbsp;</td>
<td width="47">&nbsp;</td>
<td width="74">&nbsp;</td>
<td width="62">&nbsp;</td>
<td width="62">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="113">
<p><strong>typeCrise&nbsp;</strong></p>
</td>
<td width="76">
<p>&nbsp;</p>
</td>
<td width="57">
<p>&nbsp;</p>
</td>
<td width="54">
<p>&nbsp;</p>
</td>
<td width="62">
<p>&nbsp;</p>
</td>
<td width="64">
<p>&nbsp;</p>
</td>
<td width="77">
<p>&nbsp;</p>
</td>
<td width="62">
<p>&nbsp;</p>
</td>
<td width="69">
<p>&nbsp;</p>
</td>
<td width="57">
<p>&nbsp;</p>
</td>
<td width="47">
<p>&nbsp;</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="62">
<p>&nbsp;</p>
</td>
<td width="62">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>

<table width="100%">
<tbody>
<tr>
<td colspan="5" width="100%">
<p><strong>HealthcareService 3.0</strong></p>
</td>
</tr>
<tr>
<td width="14%">
<p><strong>ID</strong></p>
</td>
<td width="21%">
<p>UE1</p>
</td>
<td width="21%">
<p>UE2</p>
</td>
<td width="21%">
<p>UE3</p>
</td>
<td width="21%">
<p>UE4</p>
</td>
</tr>
</tbody>
</table>                                                           



[^1]: <https://www.hl7.org/fhir/http.html#search> et
    <https://www.hl7.org/fhir/http.html#general>

[^2]: <https://www.hl7.org/fhir/bundle.html>

[^3]: <https://www.hl7.org/fhir/operationoutcome.html>

[^4]: <https://www.hl7.org/fhir/search.html#has>

[^5]: <https://www.hl7.org/fhir/http.html#search> et
    <https://www.hl7.org/fhir/http.html#general>

[^6]: <https://www.hl7.org/fhir/bundle.html>

[^7]: <https://www.hl7.org/fhir/operationoutcome.html>

[^8]: <https://www.hl7.org/fhir/search.html#chaining>

[^9]: <https://www.hl7.org/fhir/search.html#has>

[^10]: <https://www.hl7.org/fhir/search.html#has>

[^11]: <https://www.hl7.org/fhir/http.html#search> et
    <https://www.hl7.org/fhir/http.html#general>

[^12]: <https://www.hl7.org/fhir/bundle.html>

[^13]: <https://www.hl7.org/fhir/operationoutcome.html>

[^14]: <https://www.hl7.org/fhir/search.html#chaining>

[^15]: <https://www.hl7.org/fhir/http.html#search> et
    <https://www.hl7.org/fhir/http.html#general>

[^16]: <https://www.hl7.org/fhir/bundle.html>

[^17]: <https://www.hl7.org/fhir/operationoutcome.html>
