<!-- ## Consultation de l'offre (Extraction) -->

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
<td width="149">
<p><strong>Interaction FHIR</strong></p>
</td>
<td width="531">
<p>Search<a href="#_ftn1" name="_ftnref1">[1]</a></p>
</td>
</tr>
<tr>
<td width="149">
<p><strong>M&eacute;thode http associ&eacute;e</strong></p>
</td>
<td width="531">
<p>GET</p>
</td>
</tr>
<tr>
<td width="149">
<p><strong>Ressource recherch&eacute;e</strong></p>
</td>
<td width="531">
<p>HealthcareService</p>
</td>
</tr>
<tr>
<td width="149">
<p><strong>Construction requ&ecirc;te de base</strong></p>
</td>
<td width="531">
<p><code>GET [base]/HealthcareService{?[parameters]{&amp;_format=[mime-type]}}</code></p>
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
    Le bundle encapsule 0 à n ressources HealthcareService corespondant
    aux critères de recherche plus les ressources incluses correspondant
    aux critères de recherche.\
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

-   Un body contenant une ressource [OperationOutcome](https://www.hl7.org/fhir/R4/operationoutcome.html) qui donne les
    détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
<https://www.hl7.org/fhir/R4/http.html>

### Critères de recherches

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-healthcareservice), de
    **StructureDefinition-ror-healthcareservice** applicables à ce cas
    d'usage sont :

<table>
<tbody>
<tr>
<td width="230">
<p>_lastUpdated</p>
</td>
<td width="230">
<p>identifier</p>
</td>
</tr>
</tbody>
</table>

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-organization), de
    **StructureDefinition-ror-organization** applicables à ce cas
    d'usage sont :

<table>
<tbody>
<tr>
<td width="230">
<p>_lastUpdated</p>
</td>
<td width="230">
<p>identifier</p>
</td>
</tr>
</tbody>
</table>

Ces critères de recherche sont applicables à la ressource
HealthcareService, grâce au [chainage](https://www.hl7.org/fhir/R4/search.html#chaining). Pour cela utiliser la syntaxe
suivante : `organization.[NOM CRITERE]`

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-location), de
    **StructureDefinition-ror-location** applicables à ce cas d'usage
    sont :

<table>
<tbody>
<tr>
<td width="230">
<p>_lastUpdated</p>
</td>
</tr>
</tbody>
</table>

Ces critères de recherche sont applicables à la ressource
HealthcareService, grâce au chainage. Pour cela utiliser la syntaxe
suivante : `location.[NOM CRITERE]`

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-practioner), de
    **StructureDefinition-ror-practitioner** applicables à ce cas
    d'usage sont :

<table>
<tbody>
<tr>
<td width="230">
<p>_lastUpdated</p>
</td>
</tr>
</tbody>
</table>

Ces critères de recherche sont applicables à la ressource HealthcareService,
grâce au [chainage](https://www.hl7.org/fhir/R4/search.html#has). Pour cela utiliser la syntaxe suivante :
`_has:PractitionerRole:service:_has:PractitionerRole:practitioner:[NOM CRITERE]`

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-practionerrole), de
    **StructureDefinition-ror-practitionerrole** applicables à ce cas d'usage sont :

<table>
<tbody>
<tr>
<td width="230">
<p>_lastUpdated</p>
</td>
</tr>
</tbody>
</table>

Ces critères de recherche sont applicables à la ressource HealthcareService,
grâce au [chainage](https://www.hl7.org/fhir/R4/search.html#has). Pour cela utiliser la syntaxe suivante :
`_has:PractitionerRole:service:[NOM CRITERE]`

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-task), de
    **StructureDefinition-ror-task** applicables à ce cas d'usage sont :

<table>
<tbody>
<tr>
<td width="228">
<p>business-status*</p>
</td>
<td width="226">
<p>_id</p>
</td>
<td colspan="2" width="226">
<p>_lastUpdated*</p>
</td>
</tr>
<tr>
<td width="228">
<p>Identifier*</p>
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

Ces critères de recherche sont applicables à la ressource HealthcareService, grâce au [chainage inversé](https://www.hl7.org/fhir/R4/search.html#has). Pour cela utiliser la syntaxe suivante : `_has:HealthcareService:focus:[NOM CRITERE]`


### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes décrits au [paragraphe dédié](modifiers.html)
applicables à ce cas d'usage sont :

-   \_revinclude, \_include, :iterate

-   \_has, \_count, \_sort

-   \_elements

-   Tous les préfixes de comparaison

### Exemples de requêtes

#### Scénario 1 : Extraction complète synchrone <code><span style="color: #ff0000;">deprecated</span></code>

**Description du scénario :** Un consommateur souhaite mettre à jour toutes les offres de santé sur le périmètre national.

**Requête :**

```
GET [BASE]/HealthcareService?_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```

#### Scénario 1 bis : Extraction complète asynchrone <code><span style="color: #ff0000;">draft</span></code>

**Description du scénario :** Un consommateur souhaite mettre à jour toutes les offres de santé sur le périmètre national de manière asynchrone (pour une question de performance et de volumétrie). Il réalise donc une extraction complète de l'offre nationale.
Pour réaliser cette opération nous utilisons http://hl7.org/fhir/uv/bulkdata/STU2/export.html

**Requête :**
**N.B.: Dans le Header il est nécessaire de préciser: **
`--header 'Prefer: respond-async'`
Plus d'information ici : <http://hl7.org/fhir/R4/async.html>

```
GET [BASE]/$export?_outputFormat=application/fhir+ndjson&_type=HealthcareService&includeAssociatedData=_myCompleteExtract

```

**Requête expliquée :**

```sh
GET [BASE]/$export? #utilisation de l'operation export. Plus d'information ici : <http://hl7.org/fhir/uv/bulkdata/STU2/export.html#endpoint---system-level-export>
_outputFormat=application/fhir+ndjson #précise le format de sortie attendu. Plus d'information sur le format ici : <http://ndjson.org/>
&_type=HealthcareService #précise le type de ressources 
&includeAssociatedData=_myCompleteExtract #un serveur prenant en charge ce paramètre DOIT renvoyer ou omettre un ensemble prédéfini de ressources FHIR associées à la demande. La valeur _myCompleteExtract correspond à une valeur personnalisée précédée d'un underscore et pris en charge par le serveur. Plus d'information ici : <http://hl7.org/fhir/uv/bulkdata/STU2/export.html#query-parameters>

```

En réponse, dans le header, le lien sera disponible dans Content-Location
Exemple :
`[BASE]/$export-poll-status?_jobId=990789c0-f170-400f-97dd-ed2ac6fd22dc`
Plus d'information ici : <http://hl7.org/fhir/R4/async.html#3.1.6.4>

#### Scénario 1 ter : Extraction complète asynchrone par région <code><span style="color: #ff0000;">draft</span></code>

**Description du scénario :** Un consommateur souhaite mettre à jour toutes les offres de santé sur un périmètre régional de manière asynchrone (pour une question de performance et de volumétrie). Il réalise donc une extraction complète de l'offre régionale.
Pour réaliser cette opération nous utilisons http://hl7.org/fhir/uv/bulkdata/STU2/export.html

**Requête :**
**N.B.: Dans le Header il est nécessaire de préciser: **
`--header 'Prefer: respond-async'`
Plus d'information ici : <http://hl7.org/fhir/R4/async.html>

```
GET [BASE]/$export?_outputFormat=application/fhir+ndjson&_type=HealthcareService&_typeFilter=HealthcareService%3F_tag%3Dhttps%3A%2F%2Fmos.esante.gouv.fr%2FNOS%2FTRE_R30-RegionOM%2FFHIR%2FTRE-R30-RegionOM%7C11&includeAssociatedData=_myCompleteExtract
```

**Requête expliquée :**

```sh
GET [BASE]/$export? #utilisation de l'operation export. Plus d'information ici : <http://hl7.org/fhir/uv/bulkdata/STU2/export.html#endpoint---system-level-export>
_outputFormat=application/fhir+ndjson #précise le format de sortie attendu. Plus d'information sur le format ici : <http://ndjson.org/>
&_type=HealthcareService #précise le type de ressources 
&_typeFilter=HealthcareService%3F_tag%3Dhttps%3A%2F%2Fmos.esante.gouv.fr%2FNOS%2FTRE_R30-RegionOM%2FFHIR%2FTRE-R30-RegionOM%7C11 #utilisation de filtre pour cibler le code Région. Ici 11 correspond au code de l'Ile de France pour plus d'explication sur la construction de la requête : <http://hl7.org/fhir/uv/bulkdata/STU2/export.html#example-request>
&includeAssociatedData=_myCompleteExtract #un serveur prenant en charge ce paramètre DOIT renvoyer ou omettre un ensemble prédéfini de ressources FHIR associées à la demande. La valeur _myCompleteExtract correspond à une valeur personnalisée précédée d'un underscore et pris en charge par le serveur. Plus d'information ici : <http://hl7.org/fhir/uv/bulkdata/STU2/export.html#query-parameters>
```

En réponse, dans le header, le lien sera disponible dans Content-Location
Exemple :
`[BASE]/$export-poll-status?_jobId=990789c0-f170-400f-97dd-ed2ac6fd22dc`
Plus d'information ici : <http://hl7.org/fhir/R4/async.html#3.1.6.4>

#### Scénario 2 : Extraction de l’ensemble des offres de santé d’un établissement

**Description du scénario :** un consommateur souhaite rechercher l\'offre de santé proposée\ par un établissement dont l'identifiant est = XX .

**Requête :**

```
GET [BASE]/HealthcareService?organization.identifier:above=XX&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?organization.identifier:above=XX #critère de recherche de l’établissement
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole

```

#### Scénario 3 : Extraction d'une offre de santé identifiée

**Description du scénario :** un consommateur souhaite
rechercher une offre de santé\
à partir de son identifiant = XXX.

**Requête :**

```
GET [BASE]/HealthcareService?identifier=XXX&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner 
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?identifier=XXX #critère de recherche de l’identifiant de l’offre
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 4 : Extraction complète à partir d'une date de mise à jour de l'offre opérationnelle

**Description du scénario :** Un consommateur souhaite mettre
à jour toute l\'offre\
mise à jour depuis une certaine date \>= (06/11/2022)

**Requête :**

```
GET [BASE]/HealthcareService?_lastUpdated=ge2022-11-06T15:00&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?_lastUpdated=ge2022-11-06T15:00 #critère de recherche de sur la date de mise à jour (ge= greater than)
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole

```

#### Scénario 5 : Extraction complète à partir d’une date de mise à jour de l’entité géographique

**Description du scénario :** un consommateur souhaite mettre à jour toute l\'offre dont l'l’entité géographique est mise à jour depuis une certaine date \>= (06/11/2022).

**Requête :**

```
GET [BASE]/HealthcareService?organization._lastUpdated:above=ge2022-11-06T15:00&organization.type= https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE_R66-CategorieEtablissement|XXX &_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?organization._lastUpdated:above=ge2022-11-06T15 :00 #critère de recherche sur la date de mise à jour (ge= greater or equal than)
&organization.type= https ://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE_R66-CategorieEtablissement|XXX #critère de recherche sur la categorieEG (nomenclature à compléter)
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 6 : Extraction complète à partir d'une date de mise à jour d'un des éléments de l'offre 

**Description du scénario :** Un consommateur souhaite par exemple mettre à jour toute l\'offre mise à jour depuis une certaine date \>=(06/11/2022) ou dont l'organisation est mise à jour depuis une certaine date \>= (06/11/2022)

**Requête :**

```
GET [BASE]/HealthcareService?_filter=(_lastUpdated ge 2022-11-06T15:00 or organization._lastUpdated:above ge 2022-11-06T15:00) &_revinclude=Organization:healthcareservice&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?_filter=(_lastUpdated ge 2022-11-06T15:00 or organization._lastUpdated:above ge 2022-11-06T15:00) #critère de recherche sur la date de mise à jour 
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 7 : Extraction partielle de l’offre sur un périmètre limité  

**Description du scénario :** un consommateur souhaite mettre à jour toute l\'offre de santé d\'une région source = XX. Comme il n\'utilise qu'un sous-ensemble des informations de l\'offre, il souhaite ne recevoir que ces informations.

**Requête :**

```
GET [BASE]/HealthcareService?_tag= https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM|XX&_elements=identifier &_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?_tag= https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM|XX #critère de recherche sur la région source
&_elements=identifier #ensemble des informations que le consommateur souhaite recevoir
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
```
#### Scénario 8 : Extraction d’une offre de santé identifiée et ses éventuelles anomalies associées

<p style="background-color: #ffcccc; border:1px solid grey; padding: 5px; max-width: 790px;">
Cette partie de la spécification est en cours de construction.
</p>

**Description du scénario :**un consommateur souhaite rechercher une offre de santé à partir de son identifiant = XXX et consulter les anomalies associées si elles existent.

**Requête :**

```
GET [BASE]/HealthcareService?identifier=XXX&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner&_revinclude=Task:focus
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?identifier=XXX #critère de recherche de l’identifiant de l’offre
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
&_revinclude=Task:focus #inclus les anomalies qui référencent HealthcareService
```