# Mise à jour d'anomalie - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Mise à jour d'anomalie

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Construction de la requête de base

| | |
| :--- | :--- |
| **Interaction FHIR** | Patch[[1]](#_ftn1) (limitée aux attributs de 'premier niveau') |
| **Méthode http associée** | PATCH |
| **Ressource recherchée** | Task |
| **Construction requête de base** | `PATCH [base]/Task/[id]{&_format=[mime-type]}` |

 

[[1]](#_ftnref1) [https://www.hl7.org/fhir/R4/http.html#patch](https://www.hl7.org/fhir/R4/http.html#patch) et [https://www.hl7.org/fhir/R4/http.html#general](https://www.hl7.org/fhir/R4/http.html#general)

### Construction de la réponse de base

#### Réponse de base – Succès

Lien vers la spécification FHIR : [https://www.hl7.org/fhir/R4/http.html](https://www.hl7.org/fhir/R4/http.html)

Si la mise à jour est un succès, le serveur répond en renvoyant a minima:

* Un header avec un code 200 OK HTTP.
* Un header Last-Modified contenant la dernière date de mise à jour de la ressource mise à jour.
* Un header ETag contenant le nouvel identifiant de version de la ressource mise à jour.
* L’identifiant fonctionnel de la ressource créée.

#### Réponse de base – Echec

Lien vers la spécification FHIR : [https://www.hl7.org/fhir/R4/operationoutcome.html](https://www.hl7.org/fhir/R4/operationoutcome.html)

Si la mise à jour échoue, le serveur doit répondre:

* Un header avec un un code erreur HTTP 4XX ou 5XX.
* Un body contenant une ressource OperationOutcome qui donne les détails sur la raison de l’échec

### Exemple de requêtes

#### Scénario 1 : Mise à jour du statut d'une anomalie

**Description du scénario :** Le responsable de la donnée en anomalie corrige l’anomalie, le responsable qualité ou un système numérique met à jour le statut de l’anomalie.

**Exemple :** Le responsable de la donnée souhaite corriger une anomalie relevée précédemment, dont l'identifiant technique est 1309.

**Requête :**

```
Content-Type: application/fhir+json

Requête Postman : PATCH https://rortest.esante.gouv.fr/anomalies/Task/1309

Body : 
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

```
Content-Type: application/fhir+json

PRequête Postman : PATCH https://rortest.esante.gouv.fr/anomalies/Task/1310

Body :
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
                                "code": "03",
                                "display": "Annulé"
                            }
                        ]
                    }
                }
            ]
        }
    ]
}

```

