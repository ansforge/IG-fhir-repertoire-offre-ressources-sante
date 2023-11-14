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

<table>
<tbody>
<tr>
<td width="215">
<p><strong>Interaction FHIR</strong></p>
</td>
<td width="465">
<p>Search<a href="#_ftn1" name="_ftnref1">[1]</a></p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>M&eacute;thode http associ&eacute;e</strong></p>
</td>
<td width="465">
<p>GET</p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>Ressource recherch&eacute;e</strong></p>
</td>
<td width="465">
<p>Location</p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>Construction requ&ecirc;te de base</strong></p>
</td>
<td width="465">
<p><code>GET [base]/Location{?[parameters]{&amp;_format=[mime-type]}}</code></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/R4/http.html#search">https://www.hl7.org/fhir/R4/http.html#search</a> et <a href="https://www.hl7.org/fhir/R4/http.html#general">https://www.hl7.org/fhir/R4/http.html#general</a></p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/R4/bundle.html>

Si la recherche est un succès, le serveur répond :

-   Un header avec un code 200 OK HTTP

-   Un body contenant une ressource [Bundle](https://www.hl7.org/fhir/R4/bundle.html) dont le type =
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
https://www.hl7.org/fhir/R4/http.html

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
<https://www.hl7.org/fhir/R4/operationoutcome.html>

Si la recherche échoue, le serveur doit répondre :

-   Un header avec un un code erreur HTTP 4XX ou 5XX

-   Un body contenant une ressource OperationOutcome[^3] qui donne les
    détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
<https://www.hl7.org/fhir/R4/http.html>

### Critères de recherche

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-location), de
    **StructureDefinition-ror-location** applicables à ce cas d'usage
    sont :

<table>
<tbody>
<tr>
<td width="230">
<p>_lastUpdated</p>
</td>
<td width="230">
<p>capacity-closing-type</p>
</td>
<td width="230">
<p>identifier</p>
</td>
</tr>
<tr>
<td width="230">
<p>address-postalcode</p>
</td>
<td width="230">
<p>crisis-type</p>
</td>
<td width="230">
<p>limit-value</p>
</td>
</tr>
<tr>
<td width="230">
<p>address-city</p>
</td>
<td width="230">
<p>capacity-update-date*</p>
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
<p>equipment-type</p>
</td>
<td width="230">
<p>residential-number</p>
</td>
</tr>
<tr>
<td width="230">
<p>capacity-status</p>
</td>
<td width="230">
<p>equipment-feature</p>
</td>
<td width="230">
<p>temporary-assignement</p>
</td>
</tr>
<tr>
<td width="230">
<p>capacity-type</p>
</td>
<td width="230">
<p>gender-capacity-available</p>
</td>
<td width="230">
<p>temporality-capacity</p>
</td>
</tr>
</tbody>
</table>
*<i>Critères de recherche qui seront applicables ultérieurement</i>

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-healthcareservice), de
    **StructureDefinition-ror-healthcareservice** applicables à ce cas
    d'usage sont :

<table>
<tbody>
<tr>
<td width="230">
<p>Identifier</p>
</td>
<td width="230">
<p>location</p>
</td>
</tr>
</tbody>
</table>

Ces critères de recherche sont applicables à la ressource Location,
grâce au [chainage inversé](https://www.hl7.org/fhir/R4/search.html#has). Pour cela utiliser la syntaxe suivante :
`_has:HealthcareService:location:[NOM CRITERE]`

- 	Les critères de recherche, définis au paragraphe 4.6, de StructureDefinition-ror-task applicables à ce cas d’usage sont :
<table>
<tbody>
<tr>
<td width="228">
<p>business-status*</p>
</td>
<td width="226">
<p>_id</p>
</td>
<td width="226">
<p>_lastUpdated*</p>
</td>
</tr>
<tr>
<td width="228">
<p>identifier*</p>
</td>
<td width="226">
<p>authored-on*</p>
</td>
<td width="226">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
*<i>Critères de recherche qui seront applicables ultérieurement</i>

Ces critères de recherche sont applicables à la ressource Location,
grâce au [chainage inversé](https://www.hl7.org/fhir/R4/search.html#has). Pour cela utiliser la syntaxe suivante :
`_has:Location:focus:[[NOM CRITERE]`

### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes décrits au [paragraphe dédié](specifications_techniques.html#param%C3%A8tres-et-modificateurs-de-requ%C3%AAtes-fhir-1)
applicables à ce cas d'usage sont :

-   \_revinclude, \_include, :iterate

-   \_has, \_count, \_sort

-   Tous les prefixes de comparaison

### Exemples de requêtes

#### Scénario 1 : Données capacitaires sur le périmètre national

**Description du scénario :** un consommateur souhaite récupérer l\'ensemble des données capacitaires sur le périmètre national afin de mettre à jour son système.

**Requête :**

`GET [BASE]/Location?_revinclude=HealthcareService:location`

**Requête expliquée :**

```sh
GET [BASE]/Location?_revinclude=HealthcareService:location #inclus les HealthcareService qui référencent les Location

```


#### Scénario 1bis : Données capacitaires sur une région

**Description du scénario :** un consommateur souhaite récupérer l\'ensemble des données capacitaires sur une région afin de mettre à jour son système. Par exemple en Bretagne qui est composé des départements 22,29,35,56. 

**Requête :**

`GET [BASE]/Location?address-postalcode:text=35,22,29,56&_revinclude=HealthcareService:location`

**Requête expliquée :**

```sh
GET [BASE]/Location?address-postalcode:text=35,22,29,56 #critère de recherche sur les codes postaux commencant par les valeurs choisies
&_revinclude=HealthcareService:location #inclus les HealthcareService qui référencent les Location

```


#### Scénario 2 : Données capacitaires sur un lieu de prise en charge identifié

**Description du scénario :** un consommateur souhaite mettre à jour dans son système les données de capacité sur un lieu de prise en charge = Location1.

**Requête :**

`GET [BASE]/Location?identifier=Location1&_revinclude=HealthcareService:location`

**Requête expliquée :**

```sh
GET [BASE]/Location?identifier=Location1 #critère de recherche sur l’identifiant technique du lieu de prise en charge
&_revinclude=HealthcareService:location #inclus les HealthcareService qui référencent les Location


```

#### Scénario 3 : Données capacitaires sur plusieurs lieux de prise en charge identifiés

**Description du scénario :** un consommateur souhaite mettre à jour dans son système les données de capacité sur plusieurs lieux de prise en charge = Location1 ou Location2.

**Requête :**

`GET [BASE]/Location?identifier=Location1,Location2&_revinclude=HealthcareService:location`

**Requête expliquée :**

```sh
GET [BASE]/Location?identifier=Location1,Location2 #critère de recherche sur l’identifiant technique du lieu de prise en charge
&_revinclude=HealthcareService:location #inclus les HealthcareService qui référencent les Location


```

####  Scénario 4 : Données capacitaires à partir d'une date de mise à jour

**Description du scénario :** un consommateur souhaite mettre à jour dans son système les données de capacité à partir d\'une date de mise à jour \>= 06/11/2022-15h00.

**Requête :**

`GET [BASE]/Location?_lastUpdated=ge2022-11-06T15:00&_revinclude=HealthcareService:location`

**Requête expliquée :**
```sh
GET [BASE]/Location?_lastUpdated=ge2022-11-06T15:00 #critère de recherche sur la date de mise à jour/ge=greater or equal
&_revinclude=HealthcareService:location #inclus les HealthcareService qui référencent les Location
```

#### Scénario 5 : Données capacitaires d'une offre opérationnelle

**Prérequis :** un consommateur recherche au préalable une offre de santé correspondant à ses critères via le service de recherche
sur le modèle d\'exposition 2.4 du ROR. Le service de recherche envoie les identifiants des offres correspondant aux critères.

**Description du scénario :** un consommateur souhaite connaitre la situation des capacités pour les offres identifiées via le service de recherche sur le modèle d\'exposition 2.4 du ROR = UE1 ou UE2 ou UE3.

**Requête :**

`GET [BASE]/Location?_has:HealthcareService:location:identifier=UE1,UE2,UE3&_revinclude=HealthcareService:location`

**Requête expliquée :**

```sh
GET [BASE]/Location?_has:HealthcareService:location:identifier=UE1,UE2,UE3 #critère de recherche sur l’identifiant de l’offre. Utilisation _has (reverse chaining) car c’est HealthcareService qui fait référence à Location. 
&_revinclude=HealthcareService:location #inclus les HealthcareService qui référencent les Location
```
