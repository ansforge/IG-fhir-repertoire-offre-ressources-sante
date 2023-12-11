<!-- ## Mise à jour de l'offre -->

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
<p>Patch<a href="#_ftn1" name="_ftnref1">[1]</a></p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>M&eacute;thode http associ&eacute;e</strong></p>
</td>
<td width="465">
<p>PATCH</p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>Ressource recherch&eacute;e</strong></p>
</td>
<td width="465">
<p>Organization, HealthcareService, Practitioner, PractitionerRole</p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>Construction requ&ecirc;te de base</strong></p>
</td>
<td width="465">
<p>PATCH [base]/[Ressource]{?{&amp;_format=[mime-type]}}</p>
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

#### Scénario 1 : Mise à jour de l'entité juridique

**Description du scénario :** 

**Requête :**

```json
PATCH [BASE]/Organization/XXX
{
    "resourceType": "Parameters",
    "parameter": [ 
        {
            "name": "operation",
            "part": [ 
                {
                    "name": "type",
                    "valueString": ""
                }, 
                {
                    "name": "path",
                    "valueString": "Organization"
                },
                {
                    "name": "name",
                    "valueString": ""
                },
                {
                    "name": "value",
                    "value": ""
                }
            ]
        }
    ]
}
```

#### Scénario 2 : Mise à jour de l'entité géographique

**Description du scénario :** 

**Requête :**

```json
PATCH [BASE]/Organization/XXX
{
    "resourceType": "Parameters",
    "parameter": [ 
        {
            "name": "operation",
            "part": [ 
                {
                    "name": "type",
                    "valueString": ""
                }, 
                {
                    "name": "path",
                    "valueString": "Organization"
                },
                {
                    "name": "name",
                    "valueString": ""
                },
                {
                    "name": "value",
                    "value": ""
                }
            ]
        }
    ]
}
```

#### Scénario 3 : Mise à jour de l'organisation interne

**Description du scénario :** 

**Requête :**

```json
PATCH [BASE]/Organization/XXX
{
    "resourceType": "Parameters",
    "parameter": [ 
        {
            "name": "operation",
            "part": [ 
                {
                    "name": "type",
                    "valueString": ""
                }, 
                {
                    "name": "path",
                    "valueString": "Organization"
                },
                {
                    "name": "name",
                    "valueString": ""
                },
                {
                    "name": "value",
                    "value": ""
                }
            ]
        }
    ]
}
```

#### Scénario 4 : Mise à jour du professionnel

**Description du scénario :** 

**Requête :**

```json
PATCH [BASE]/Practitioner/XXX
{
    "resourceType": "Parameters",
    "parameter": [ 
        {
            "name": "operation",
            "part": [ 
                {
                    "name": "type",
                    "valueString": ""
                }, 
                {
                    "name": "path",
                    "valueString": "Practitioner"
                },
                {
                    "name": "name",
                    "valueString": ""
                },
                {
                    "name": "value",
                    "value": ""
                }
            ]
        }
    ]
}
```

#### Scénario 5 : Mise à jour de la situation opérationnelle

**Description du scénario :** 

**Requête :**

```json
PATCH [BASE]/PractitionerRole/XXX
{
    "resourceType": "Parameters",
    "parameter": [ 
        {
            "name": "operation",
            "part": [ 
                {
                    "name": "type",
                    "valueString": ""
                }, 
                {
                    "name": "path",
                    "valueString": "PractitionerRole"
                },
                {
                    "name": "name",
                    "valueString": ""
                },
                {
                    "name": "value",
                    "value": ""
                }
            ]
        }
    ]
}
```

#### Scénario 6 : Ajout d'un acte spécifique au sein d'une offre déjà décrite

**Description du scénario :** Un établissement ajoute un acte spécifique (0316 - Neurochirurgie éveillée avec mapping cortical) dans une offre déjà décrite (Hospitalisation complète de Neurochirurgie) au sein d'une structure (clinique chirurgicale Val D'or - FINESS : 920300936).

**Requête :**

```json
PATCH [BASE]/HealthcareService/XXX
{
    "resourceType": "Parameters",
    "parameter": [ 
        {
            "name": "operation",
            "part": [ 
                {
                    "name": "type",
                    "valueString": "add"
                }, 
                {
                    "name": "path",
                    "valueString": "HealthcareService"
                },
                {
                    "name": "name",
                    "valueString": "characteristic"
                },
                {
                    "name": "value",
                    "valueCodeableConcept": {
                        "coding": {
                            "system": "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                            "code": "316",
                            "display": "Neurochirurgie éveillée avec mapping cortical"
                        }
                    }
                }
            ]
        }
    ]
}
```

#### Scénario 7 : Retrait d'une activité opérationnelle au sein d'une offre déjà décrite

**Description du scénario :** Un établissement retire une activité opérationnelle (440 - Chirurgie intracrânienne) au sein d'une offre déjà décrite (Hospitalisation complète de Neurochirurgie) au sein d'une structure (Clinique chirurgicale Val D'or - FINESS : 920300936).

**Requête :**

```json
PATCH [BASE]/HealthcareService/XXX
{
    "resourceType": "Parameters",
    "parameter": [ 
        {
            "name": "operation",
            "part": [ 
                {
                    "name": "type",
                    "valueString": ""
                }, 
                {
                    "name": "path",
                    "valueString": "HealthcareService"
                },
                {
                    "name": "name",
                    "valueString": ""
                },
                {
                    "name": "value",
                    "value": ""
                }
            ]
        }
    ]
}
```