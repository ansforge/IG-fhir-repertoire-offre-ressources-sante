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

#### Scénario 1 : Modification d'une entité juridique

**Description du scénario :** Une entité juridique déjà décrite dans le ROR enregistre un changement d'adresse.

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
                    "valueString": "replace"
                }, 
                {
                    "name": "path",
                    "valueString": "Organization.address.where()"
                },
                {
                    "name": "value",
                    "value": {
                        "city": "BOIS-COLOMBES",
                        "postalCode": "92270",
                        "line": ["42 Rue d'Estienne d'Orves, 92270 BOIS-COLOMBES"],
                        "_line": [
                            {
                                "extension": [
                                    {
                                        "id": "Location.address.line.extension:houseNumber",
                                        "url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
                                        "valueString": "42"
                                    },
                                    {
                                        "id": "Location.address.line.extension:streetNameType",
                                        "url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType",
                                        "valueString": "rue"
                                    },
                                    {
                                        "id": "Location.address.line.extension:streetNameBase",
                                        "url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
                                        "valueString": "d'Estienne d'Orves"
                                    }
                                ]
                            }
                        ]
                    }
                }
            ]
        }
    ]
}
```

#### Scénario 2 : Modification d'une entité géographique

**Description du scénario :** Une entité géographique déjà décrite dans le ROR enregistre un changement de n° de téléphone.

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
                    "valueString": "replace"
                }, 
                {
                    "name": "path",
                    "valueString": "Organization.telecom.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel' and valueCodeableConcept.coding[0].code='2').value"
                },
                {
                    "name": "value",
                    "valueString": "01.01.01.02.02"
                }
            ]
        },
        {
            "name": "operation",
            "part": [ 
                {
                    "name": "type",
                    "valueString": "add"
                }, 
                {
                    "name": "path",
                    "valueString": "Organization"
                },
                {
                    "name": "name",
                    "valueString": "contact"
                },
                {
                    "name": "value",
                    "value": {
                        "name": {
                            "family": "GREDIN",
                            "given": "Thierry"
                        },
                        "purpose": {
                            "coding": {
                                "system": "https://mos.esante.gouv.fr/NOS/JDV_J220-FonctionContact-ROR/FHIR/JDV-J220-FonctionContact-ROR",
                                "code": "01",
                                "display": "Directeur"
                            }
                        },
                        "extension": {
                            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-confidentiality-level",
                            "valueCodeableConcept": {
                                "coding": {
                                    "system": "https://mos.esante.gouv.fr/NOS/JDV_J222-NiveauConfidentialite-ROR/FHIR/JDV-J222-NiveauConfidentialite-ROR",
                                    "code": "2",
                                    "display": "Accès restreint"
                                }
                            }
                        },
                        "telecom": {
                            "value": "01.01.01.02.03", 
                            "extension": [
                                {
                                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel"
                                    "valueCodeableConcept": {
                                        "coding": {
                                            "system": "https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR",
                                            "code": "2",
                                            "display": "Téléphone fixe"
                                        }
                                    }
                                },
                                {
                                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-confidentiality-level",
                                    "valueCodeableConcept": {
                                        "coding": {
                                            "system": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level",
                                            "code": "2",
                                            "display": "Accès restreint"
                                        }
                                    }    
                                }
                            ]
                        }
                    }
                }
            ]
        }
    ]
}
```

#### Scénario 3 : Modification d'une organisation interne

**Description du scénario :** Un établissement sanitaire modifie le nom d'un service.

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
                    "valueString": "replace"
                }, 
                {
                    "name": "path",
                    "valueString": "Organization"
                },
                {
                    "name": "name",
                    "valueString": "name"
                },
                {
                    "name": "value",
                    "valueString": "TECOTRO (Tête, cou et tronc)"
                }
            ]
        }
    ]
}
```

#### Scénario 4 : Modification d'informations sur un professionnel

**Description du scénario :** L'annuaire modifie les informations concernant un professionnel, l'adossement ROR national modifie les informations du professionnel.

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
                    "valueString": "replace"
                }, 
                {
                    "name": "path",
                    "valueString": "Practitioner.telecom.where(value='cyndi.chanmet@lifen.mssante.fr')"
                },
                {
                    "name": "value",
                    "valueString": "cyndi.chanmet@SomedNantes.mssante.fr"
                }
            ]
        }
    ]
}
```

#### Scénario 5 : Modification d'informations sur une situation d'exercice

**Description du scénario :** L'annuaire enrichit le savoir faire d'un professionnel de santé, l'adossement du ROR national modifie les informations de la situation opérationnelle.

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
                    "valueString": "add"
                }, 
                {
                    "name": "path",
                    "valueString": "PractitionerRole"
                },
                {
                    "name": "name",
                    "valueString": "specialty"
                },
                {
                    "name": "value",
                    "valueCodeableConcept": {
                        "coding": {
                            "system": "https://mos.esante.gouv.fr/NOS/JDV_J209-TypeSavoirFaire-ROR/FHIR/JDV-J209-TypeSavoirFaire-ROR",
                            "code": "S",
                            "display": "Spécialité ordinale"
                        }
                    }
                }
            ]
        },
        {
            "name": "operation",
            "part": [ 
                {
                    "name": "type",
                    "valueString": "add"
                }, 
                {
                    "name": "path",
                    "valueString": "PractitionerRole"
                },
                {
                    "name": "name",
                    "valueString": "specialty"
                },
                {
                    "name": "value",
                    "valueCodeableConcept": {
                        "coding": {
                            "system": "https://mos.esante.gouv.fr/NOS/JDV_J210-SpecialiteOrdinale-ROR/FHIR/JDV-J210-SpecialiteOrdinale-ROR",
                            "code": "SI02",
                            "display": "Exercice infirmier en pratique avancée oncologie et hémato-oncologie (SI)"
                        }
                    }
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
                    "valueString": "specialty"
                },
                {
                    "name": "value",
                    "valueCodeableConcept": {
                        "coding": {
                            "system": "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                            "code": "040",
                            "display": "Diététique et Nutrition"
                        }
                    }
                }
            ]
        }
    ]
}
```

#### Scénario 8 : Précision sur l'offre d'un cabinet de ville

**Description du scénario :** Un professionnel de santé précise son offre et ajoute des valeurs d'activité opérationnelle et d'acte spécifique.

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
                    "valueString": "specialty"
                },
                {
                    "name": "value",
                    "valueCodeableConcept": {
                        "coding": {
                            "system": "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                            "code": "040",
                            "display": "Diététique et Nutrition"
                        }
                    }
                }
            ]
        },
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
                    "valueString": "specialty"
                },
                {
                    "name": "value",
                    "valueCodeableConcept": {
                        "coding": {
                            "system": "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                            "code": "483",
                            "display": "Médecine générale à orientation Diabétologie"
                        }
                    }
                }
            ]
        },
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
                            "code": "0628",
                            "display": "Education thérapeutique du patient non labellisée ou psychoéducation"
                        },
                        "extension": {
                            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type",
                            "valueCode": "specificAct"
                        }
                    }
                }
            ]
        },
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
                            "code": "1181",
                            "display": "Diagnostic par dermatoscope"
                        },
                        "extension": {
                            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type",
                            "valueCode": "specificAct"
                        }
                    }
                }
            ]
        },
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
                            "code": "1270",
                            "display": "Tamponnement nasal antérieur"
                        },
                        "extension": {
                            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type",
                            "valueCode": "specificAct"
                        }
                    }
                }
            ]
        },
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
                            "code": "1282",
                            "display": "Programme d'ETP labellisée - Diabète"
                        },
                    "extension": {
                            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type",
                            "valueCode": "outsideOfficeAct"
                        }
                    }
                }
            ]
        }
    ]
}
```