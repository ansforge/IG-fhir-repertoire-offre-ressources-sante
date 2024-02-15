<!-- ## Mise à jour d’anomalie
<code><span style="background-color: #58D68D;color:white;font-weight:bold;font-size: x-large;">ROR 2.3</span></code>-->

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
<p><a href="#_ftnref1" name="_ftn1">[1]</a> https://www.hl7.org/fhir/R4/http.html#patch <a href="https://www.hl7.org/fhir/R4/http.html#patch">https://www.hl7.org/fhir/R4/http.html#patch</a> et <a href="https://www.hl7.org/fhir/R4/http.html#general">https://www.hl7.org/fhir/R4/http.html#general</a></p>

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

#### Scénario 1 : Mise à jour du statut d'une anomalie <code><span style="color: #ff0000;">draft</span></code>

**Description du scénario :** Le responsable de la donnée en anomalie corrige l’anomalie, le responsable qualité ou un système numérique met à jour le statut de l’anomalie.

**Exemple :** Le responsable de la donnée souhaite corriger une anomalie relevée précédemment, dont l'identifiant technique est 1309.

**Requête :**

```json
Content-Type: application/fhir+json
PATCH [BASE]/Task/1309
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
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R352-StatutMetierAnomalie/FHIR/TRE-R352-StatutMetierAnomalie",
                                "code": "08",
                                "display": "Corrigé"
                            }
                        ]
                    }
                }
            ]
        }
    ]
}
```

#### Scénario 2 : Inactivation d’une anomalie

**Description du scénario :** Un responsable qualité ou un système numérique décide d’inactiver une anomalie (elle a été saisie par erreur par exemple).

**Exemple :** Le déclarant de l’anomalie souhaite annuler l’anomalie en question dont l'identifiant technique est 1310.

**Requête :**

```json
Content-Type: application/fhir+json
PATCH [BASE]/Task/1310
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
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R352-StatutMetierAnomalie/FHIR/TRE-R352-StatutMetierAnomalie",
                                "code": "08",
                                "display": "Corrigé"
                            }
                        ]
                    }
                }
            ]
        }
    ]
}
```