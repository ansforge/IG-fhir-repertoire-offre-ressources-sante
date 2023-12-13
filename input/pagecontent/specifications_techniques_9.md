<!-- ## 3.11 Recherche d’offre via une technique « Full text » -->
<code><span style="color: #ff0000;font-weight:bold;font-size: x-large;">draft</span></code>
<p style="background-color: #ffcccc; border:1px solid grey; padding: 5px; max-width: 790px;">
Cette partie de la spécification est en cours de construction et n'est pas implémentée. Elle est disponible, à titre d'information sur les travaux en cours au niveau du ROR National.
</p>


### Caractéristiques de l'API 
<table width="100%">
<tbody>
<tr>
<td width="19%">
<p><strong>Endpoint</strong></p>
</td>
<td width="80%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="19%">
<p><strong>Header</strong></p>
</td>
<td width="80%">
<p>Content-type&nbsp;:=Json + FHIR</p>
</td>
</tr>
<tr>
<td width="19%">
<p><strong>Encodage</strong></p>
</td>
<td width="80%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="19%">
<p><strong>Version FHIR</strong></p>
</td>
<td width="80%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="19%">
<p><strong>Version package</strong></p>
</td>
<td width="80%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="19%">
<p><strong>Publication</strong></p>
</td>
<td width="80%">
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
<p>HealthcareService</p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>Construction requ&ecirc;te de base</strong></p>
</td>
<td width="465">
<p>GET [base]/HealthcareService{?[parameters]{&amp;_format=[mime-type]}}</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="http://hl7.org/fhir/R4/http.html#search">http://hl7.org/fhir/R4/http.html#search</a> et <a href="http://hl7.org/fhir/R4/http.html#general">http://hl7.org/fhir/R4/http.html#general</a></p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <http://hl7.org/fhir/R4/bundle.html>

Si la recherche est un succès, le serveur répond :

-   Un header avec un code 200 OK HTTP

-   Un body contenant une ressource [Bundle](http://hl7.org/fhir/R4/bundle.html) dont le type = searchset.\ Le bundle encapsule 0 à n ressources corespondant aux critères de recherche plus les ressources incluses correspondant aux critères de recherche. Un score compris entre 0 et 1 est associé à chaque ressource, permettant de classer les ressources selon leur pertinence (0 correspondant au moins pertinent, 1 correspondant au plus pertinent).\ Le service développé renvoie les 200 premiers résultats et indique le total trouvé dans une balise \"total\". Dans le cas où il n'y a pas de résultat le service renvoie \"total\": 0.

Remarque : la recherche est un succès à partir du moment où la requête peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR : <http://hl7.org/fhir/R4/http.html>

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
<http://hl7.org/fhir/R4/operationoutcome.html>

Si la recherche échoue, le serveur doit répondre :

-   Un header avec un un code erreur HTTP 4XX ou 5XX

-   Un body contenant une ressource [OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html) qui donne les détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la requête, ce qui est différent d'aucune correspondance à la recherche. Plus de précision sur la spécification FHIR : <http://hl7.org/fhir/R4/http.html>

### Critères de recherche

-   Tous les critères de recherche, définis dans la [page dédiée](search_param.html), sont applicables.

### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes décrits [page dédiée](modifiers.html) applicables à ce cas d'usage sont :
-   \_revinclude, \_include, :iterate
-   \_has, \_count, \_sort
-   Tous les préfixes de comparaison

### Exemple de requêtes

#### Scénario 1 : Recherche des offres opérationnelles référençant le texte \"cardio\" <code><span style="color: #ff0000;">draft</span></code>

**Description du scénario :** Un consommateur recherche les offres opérationnelles contenant une chaine de caractères libre («cardio » par exemple).

**Requête :**
```
GET [BASE]/HealthcareService?_content=cardio&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**
```sh
GET [BASE]/HealthcareService?_content=cardio #filtre sur le contenu textuel des ressources HealthcareService
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```

#### Scénario 2 : Recherche des offres opérationnelles ou des lieux de réalisation de l'offre référençant le texte \"cardio\" <code><span style="color: #ff0000;">draft</span></code>

**Description du scénario :** Un consommateur recherche les offres opérationnelles ou les lieux de réalisation de l'offre liés contenant une chaine de caractères libre (« cardio » par exemple).

**Requête :**
```
GET [BASE]/HealthcareService?_filter=(_content=cardio or location._content=cardio)&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```
**Requête expliquée :**
```sh
GET [BASE]/HealthcareService?_filter=(_content=cardio or location._content=cardio) #filtre sur le contenu textuel des ressources HealthcareService ou Location liées
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```