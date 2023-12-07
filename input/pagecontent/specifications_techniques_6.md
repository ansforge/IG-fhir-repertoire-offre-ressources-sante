<!-- ## Mise à jour d’anomalie -->

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
<td width="141">
<p><strong>Interaction FHIR</strong></p>
</td>
<td width="538">
<p>Patch<a href="#_ftn1" name="_ftnref1"><sup>[1]</sup></a></p>
</td>
</tr>
<tr>
<td width="141">
<p><strong>M&eacute;thode http associ&eacute;e</strong></p>
</td>
<td width="538">
<p>PATCH</p>
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
<p><code>PATCH [base]/Task/[id]{&amp;_format=[mime-type]}</code></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/R4/http.html#patch">https://www.hl7.org/fhir/R4/http.html#patch</a> et <a href="https://www.hl7.org/fhir/R4/http.html#general">https://www.hl7.org/fhir/R4/http.html#general</a></p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/R4/http.html>

Si la mise à jour est un succès, le serveur répond en renvoyant a minima:
-	Un header avec un code 200 OK HTTP.
-	Un header Last-Modified contenant la dernière date de mise à jour de la ressource mise à jour.
-	Un header ETag contenant le nouvel identifiant de version de la ressource mise à jour.
-	L’identifiant fonctionnel de la ressource créée.

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
[https://www.hl7.org/fhir/R4/operationoutcome.html](https://www.hl7.org/fhir/R4/operationoutcome.html)

Si la mise à jour échoue, le serveur doit répondre:
-	Un header avec un un code erreur HTTP 4XX ou 5XX.
-	Un body contenant une ressource OperationOutcome  qui donne les détails sur la raison de l’échec

### Exemple de requêtes

#### Scénario 1 : Mise à jour du statut de plusieurs anomalies

**Description du scénario :** le responsable de la donnée en anomalie corrige des anomalies, le responsable qualité ou le moteur de règle met à jour les statuts métier des anomalies en précisant les identifiants techniques.
Anomalie XX au statut statutXX


**Requête :**

```json
Content-Type: application/fhir+json
POST [BASE]

{
    "resourceType": "Bundle",
    "type":"transaction",
    "entry" : [
	    {	
	        "fullUrl": " https://hapi.fhir.org/baseR4/Task/242612", #facultatif
	        "resource": 
                {
			        "resourceType": "Parameters",
			        "parameter": [ 
                        {
				            "name": "operation",
				            "part": [ 
                                {
                                    "name": "type",
                                    "valueString": "replace"
                                }, 
                                {
                                    "name": "path",
                                    "valueString": "Task.businessStatus"
                                },
                                {
                                    "name": "value",
                                    "valueCodeableConcept": 
                                        {
                                            "coding": [
                                                {
                                                    "system": "http://zzz",
                                                    "code": "260385009",
                                                    "display": "ND"
                                                }
                                            ]
                                        }
                                }
						    ]
				        }		
					]
			    },
            "request": 
                {
                    "method": "PATCH",
                    "url": " https://hapi.fhir.org/baseR4/Task/242612"
                }
		}				
	]
}

```

#### Scénario 2 : Inactivation d’une anomalie

**Description du scénario :** un responsable qualité décide d'inactiver une anomalie dont l’identifiant technique = XXX (elle a été saisie par erreur par exemple) en mettant à jour son statut métier à YYY.

**Requête :**

```json
Content-Type: application/fhir+json
PATCH [BASE]/Task/XXX
{
"resourceType": "Parameters",
	"parameter": [ {
	"name": "operation",
	"part": [ {
		"name": "type",
		"valueString": "replace"
	}, {
		"name": "path",
		"valueString": "Task.businessStatus"
	}, {
		"name": "value",
		"valueCodeableConcept": 
		{
			"coding": [
			{
				"system": "http://zzz",
				"code": "260385009",
				"display": "ND"
				}	],
				"text": "tetet"
		}
		}
			]
				}
				]
}

```