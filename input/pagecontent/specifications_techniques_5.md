<!-- ## Signalement d’anomalie -->

<p style="background-color: #ffcccc; border:1px solid grey; padding: 5px; max-width: 790px;">
Cette partie de la spécification est en cours de construction.
</p>

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
<td width="226">
<p><strong>Interaction FHIR</strong></p>
</td>
<td width="453">
<p>Create<a href="#_ftn1" name="_ftnref1"><sup>[1]</sup></a></p>
</td>
</tr>
<tr>
<td width="226">
<p><strong>M&eacute;thode http associ&eacute;e</strong></p>
</td>
<td width="453">
<p>POST</p>
</td>
</tr>
<tr>
<td width="226">
<p><strong>Ressource recherch&eacute;e</strong></p>
</td>
<td width="453">
<p>Task</p>
</td>
</tr>
<tr>
<td width="226">
<p><strong>Construction requ&ecirc;te de base</strong></p>
</td>
<td width="453">
<p><code>POST [base]/Task{?_format=[mime-type]}</code></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> https://www.hl7.org/fhir/http.html#create et <a href="https://www.hl7.org/fhir/http.html#general">https://www.hl7.org/fhir/http.html#general</a></p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/http.html >

Si la création est un succès, le serveur répond en renvoyant a minima:
-	Un header avec un code 201 Created HTTP.
-	Un header Location contenant le nouvel identifiant technique et l’identifiant de version de la ressource créée.
-	L’identifiant fonctionnel de la ressouce créée.


#### Réponse de base -- Echec

Lien vers la spécification FHIR :
[https://www.hl7.org/fhir/operationoutcome.html](https://www.hl7.org/fhir/operationoutcome.html)

Si la création échoue, le serveur doit répondre :

Un header avec un un code erreur HTTP 4XX ou 5XX

Un body contenant une ressource OperationOutcome qui donne les
détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
[https://www.hl7.org/fhir/http.html](https://www.hl7.org/fhir/http.html)

### Exemple de requêtes

#### Scénario 1 : Un responsable qualité souhaite signaler une anomalie sur un élément.

**Description du scénario :** Un consommateur cherche les offres proposant une activité opérationnelle = XXX et disposant d\'un lit disponible = 02 (TRE-R330-StatutCapacite) et disposant d’un nombre de lits supérieur à 0.

**Requête :**

```
POST [BASE]/Task
{	
	"resourceType": "Task",
	"businessStatus": [ { "system": "JDV XX", "value": "12345" } ],
	"code": [ { "system": "JDV XXX", "value": "12345" } ],
	"description": "description de notre ano",
	"focus": "URL HealthcareService"
}
```

#### Scénario 2 : Signalement de plusieurs anomalies

**Description du scénario :** Le moteur de règle crée automatiquement une ou plusieurs anomalies sur un ou plusieurs éléments.

**Requête :**

```
POST [BASE]/Bundle
{
  "resourceType": "Bundle",
	"type":"collection",
	"entry" : [
		{	
			"resource": {
				"resourceType": "Task",
				"businessStatus": [ { "system": "JDV XX", "value": "12345" } ],
				"code": [ { "system": "JDV XXX", "value": "12345" } ],
				"description": "description de notre ano",
				"focus": "URL HealthcareService"
			}
		},
			{
			"resource": {
				"resourceType": "Task",
				"businessStatus": [ { "system": "JDV XX", "value": "12345" } ],
				"code": [ { "system": "JDV XXX", "value": "12345" } ],
				"description": "description de notre ano",
				"focus": "URL Location"
			}
	
	
		}
				
	]
}
```