<!-- ## 3.7	Consultation d’anomalie
<code><span style="background-color: #58D68D;color:white;font-weight:bold;font-size: x-large;">ROR 2.3</span></code>-->

### Caractéristiques de l'API

<table width="100%">
<tbody>
<tr>
<td width="18%">
<p><strong>Endpoint</strong></p>
</td>
<td width="81%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="18%">
<p><strong>Header</strong></p>
</td>
<td width="81%">
<p>Content-type&nbsp;:=Json + FHIR</p>
</td>
</tr>
<tr>
<td width="18%">
<p><strong>Encodage</strong></p>
</td>
<td width="81%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="18%">
<p><strong>Version FHIR</strong></p>
</td>
<td width="81%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="18%">
<p><strong>Version package</strong></p>
</td>
<td width="81%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="18%">
<p><strong>Publication</strong></p>
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
<p><strong>Interaction FHIR</strong></p>
</td>
<td width="538">
<p>Search<a href="#_ftn1" name="_ftnref1"><sup>[1]</sup></a></p>
</td>
</tr>
<tr>
<td width="141">
<p><strong>M&eacute;thode http associ&eacute;e</strong></p>
</td>
<td width="538">
<p>GET</p>
</td>
</tr>
<tr>
<td width="141">
<p><strong>Ressource recherch&eacute;e</strong></p>
</td>
<td width="538">
<p>Task</p>
</td>
</tr>
<tr>
<td width="141">
<p><strong>Construction requ&ecirc;te de base</strong></p>
</td>
<td width="538">
<p><code>GET [base]/Task{?[parameters]{&amp;_format=[mime-type]}}</code></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/R4/http.html#search">https://www.hl7.org/fhir/R4/http.html#search</a> et <a href="https://www.hl7.org/fhir/R4/http.html#general">https://www.hl7.org/fhir/R4/http.html#general</a></p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/R4/http.html>

Si la recherche est un succès, le serveur répond :

Un header avec un code 200 OK HTTP

Un body contenant une ressource [Bundle]( https://www.hl7.org/fhir/R4/bundle.html) dont le type = searchset. Le bundle encapsule 0 à n ressources HealthcareService corespondant aux critères de recherche plus les ressources incluses correspondant aux critères de recherche. Le service développé renvoie les 200 premiers résultats et indique le total trouvé dans une balise `total`. Dans le cas où il n'y a pas de résultat le service renvoie `total`: 0.

Remarque : la recherche est un succès à partir du moment où la requête
peut être exécutée. Il peut il y avoir 0 à n correspondances.

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
[https://www.hl7.org/fhir/R4/operationoutcome.html](https://www.hl7.org/fhir/R4/operationoutcome.html)

Si la recherche échoue, le serveur doit répondre :
-   Un header avec un un code erreur HTTP 4XX ou 5XX
-   Un body contenant une ressource OperationOutcome qui donne les
détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
[https://www.hl7.org/fhir/R4/http.html](https://www.hl7.org/fhir/R4/http.html)

### Critères de recherche

-	Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-location), de **StructureDefinition-ror-location** applicables à ce cas d’usage sont :
<table>
<tbody>
<tr>
<td width="227">
<p>_tag</p>
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
Ces critères de recherche sont applicables à la ressource Task, grâce au chainage. Pour cela utiliser la syntaxe suivante : `focus:Location:[NOM CRITERE]`

-	Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-healthcareservice), de **StructureDefinition-ror-healtchareservice** applicables à ce cas d’usage sont : 
<table>
<tbody>
<tr>
<td width="227">
<p>_tag</p>
</td>
<td width="227">
<p>identifier</p>
</td>
<td width="227">
<p>type</p>
</td>
</tr>
</tbody>
</table>
Ces critères de recherche sont applicables à la ressource Task, grâce au chainage. Pour cela utiliser la syntaxe suivante : `focus:HealthcareService:[NOM CRITERE]`

-	Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-organization), de **StructureDefinition-ror-organization** applicables à ce cas d’usage sont : 
<table>
<tbody>
<tr>
<td width="227">
<p>_tag</p>
</td>
<td width="227">
<p>identifier</p>
</td>
<td width="227">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
Ces critères de recherche sont applicables à la ressource Task, grâce au chainage. Pour cela utiliser la syntaxe suivante : `focus:Organization:[NOM CRITERE]`
-	Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-practitioner), de **StructureDefinition-ror-practitioner** applicables à ce cas d’usage sont : 
<table>
<tbody>
<tr>
<td width="227">
<p>_tag</p>
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
Ces critères de recherche sont applicables à la ressource Task, grâce au chainage. Pour cela utiliser la syntaxe suivante : `focus:Practitioner:[NOM CRITERE]`

► Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-practitionerrole), de **StructureDefinition-ror-practitionerrole** applicables à ce cas d’usage sont : 
<table>
<tbody>
<tr>
<td width="227">
<p>_tag</p>
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
Ces critères de recherche sont applicables à la ressource Task, grâce au chainage. Pour cela utiliser la syntaxe suivante : `focus:PractitionerRole:[NOM CRITERE]`

►	Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-task), de **StructureDefinition-ror-task** applicables à ce cas d’usage sont : 
<table>
<tbody>
<tr>
<td width="230">
<p>_lastUpdated*</p>
</td>
<td width="230">
<p>identifier*</p>
</td>
<td width="230">
<p>focus*</p>
</td>
</tr>
</tbody>
</table>
*<i>Critères de recherche qui seront applicables ultérieurement</i>

### Paramètres et modificateurs de requêtes FHIR

Dans ce cas d’usage, nous n’utilisons aucun paramètres et modificateurs de requêtes décrits au [paragraphe dédié](modifiers.html).

### Exemple de requêtes

#### Scénario 1 : Consultation du statut d’une anomalie

**Description du scénario :** un responsable qualité où le moteur de règle souhaite consulter le statut d'une anomalie dont l’identifiant est XXX.


**Requête :**

`GET [BASE]/Task?identifier=XXX`

**Requête expliquée :**

```sh
GET [BASE]/Task?identifier=XXX #critère de recherche sur l’identifiant de l’anomalie
```

#### Scénario 2 : Consultation de la liste des anomalies

**Description du scénario :** un responsable qualité décide d'inactiver une anomalie dont l’identifiant technique = XXX (elle a été saisie par erreur par exemple) en mettant à jour son statut métier à YYY.

**Requête :**

`GET [BASE]/Task?focus:HealthcareService:identifier=XXX`

**Requête expliquée :**

```sh
GET [BASE]/Task?focus:HealthcareService.identifier=XXX #critère de recherche sur l’identifiant de l’élément référencé par l’anomalie
```

#### Scénario 3 : Consultation de la liste des anomalies sur un périmètre

**Description du scénario :** un responsable qualité souhaite consulter la liste des anomalies sur son périmètre : région = XXX.

**Requête :**

`GET [BASE]/Task?focus:[Ressource]:_tag=https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM|XXX`

**Requête expliquée :**
Exemple avec HealthcareService :

```sh
GET [BASE]/Task?focus:HealthcareService:_tag=https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM|XXX #critère de recherche sur la région source
Exemple avec Organization : 
GET [BASE]/Task?focus:Organization:_tag=https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM|XXX #critère de recherche sur la région source

```
#### Scénario 4 : Consommation de toutes les anomalies

**Description du scénario :** le BI consomme toutes les anomalies pour faire des tableaux de suivi.

**Requête :**

`GET [BASE]/Task `

**Requête expliquée :**

```sh
GET [BASE]/Task #recherche sans critère pour récupérer toutes les anomalies
```

