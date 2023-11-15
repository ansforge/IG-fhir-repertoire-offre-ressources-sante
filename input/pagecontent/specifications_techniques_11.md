<!-- ## 3.8	Consultation d’indicateurs de pilotage -->
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
<p>Measure</p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>Construction requ&ecirc;te de base</strong></p>
</td>
<td width="465">
<p>GET [base]/Measure{?[parameters]{&amp;_format=[mime-type]}}</p>
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

-   Un body contenant une ressource Bundle[^27] dont le type = searchset.\ Le bundle encapsule 0 à n ressources Measure corespondant aux critères de recherche plus les ressources incluses correspondant aux critères de recherche.\ Le service développé renvoie les 200 premiers résultats et indique le total trouvé dans une balise \"total\". Dans le cas où il n'y a pas de résultat le service renvoie \"total\": 0.

Remarque : la recherche est un succès à partir du moment où la requête peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR  <http://hl7.org/fhir/R4/http.html>

#### Réponse de base -- Echec

Lien vers la spécification FHIR : <http://hl7.org/fhir/R4/operationoutcome.html>

Si la recherche échoue, le serveur doit répondre :

-   Un header avec un un code erreur HTTP 4XX ou 5XX

-   Un body contenant une ressource [OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html) qui donne les détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la requête, ce qui est différent d'aucune correspondance à la recherche. Plus de précision sur la spécification FHIR : <http://hl7.org/fhir/R4/http.html>

### Critères de recherche

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-measure), de  **StructureDefinition-ror-measure** applicables à ce cas d'usage sont :
<table>
<tbody>
<tr>
<td width="227">
<p>id</p>
</td>
<td width="227">
<p>topic</p>
</td>
<td width="227">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>

-    Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-measurereport), de **StructureDefinition-ror-measurereport** applicables à ce cas d'usage sont :
<table>
<tbody>
<tr>
<td width="227">
<p>date</p>
</td>
<td width="227">
<p>&nbsp;</p>
</td>
<td width="227">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
Ces critères de recherche sont applicables à la ressource Measure, grâce au [chainage inversé](https://hl7.org/fhir/R4/search.html#has). Pour cela utiliser la syntaxe suivante :
`_has:MeasureReport:measure:[NOM CRITERE]`

### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes décrits dans le [paragraphe dédié](modifiers.html) applicables à ce cas d'usage sont :

-   \_revinclude

-   \_has, \_count, \_sort

-   Tous les prefixes de comparaison

### Exemple de requêtes

#### Scénario 1 : Intégration d'un indicateur dans un système externe

**Description du scénario :** Un consommateur souhaite intégrer un indicateur de pilotage du ROR national, dont l'identifiant est XXX, dans un système externe.

**Requête :**

`GET [BASE]/Measure?identifier=XXX&_revinclude=MeasureReport:measure `

**Requête expliquée :**

```sh
GET [BASE]/Measure?identifier=XXX #critère de recherche sur l’identifiant de l’indicateur
&_revinclude=MeasureReport:measure #inclus les MeasureReport qui référencent les Measure
```

#### Scénario 2 : Intégration d'indicateurs dans un système externe

**Description du scénario :** Un consommateur souhaite intégrer des indicateurs de pilotage du ROR national dans un système externe, à partir d'une date de mesure (06/10 2023).

**Requête :**

`GET [BASE]/Measure?_has:MeasureReport:measure:date=eq2023-10-06T15:00&_revinclude=MeasureReport:measure`

**Requête expliquée :**

```sh
GET [BASE]/Measure?_has:MeasureReport:measure:date=eq2023-10-06T15:00 #critère de recherche sur sur la date de mesure. Utilisation _has (reverse chaining) car c’est MeasureReport qui fait référence à Measure. 
&_revinclude=MeasureReport:measure #inclus les MeasureReport qui référencent les Measure
```