<!-- ## Mise à jour de l'offre -->

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

**Description du scénario :** Une entité juridique enregistre un changement d'adresse.

**Prérequis :** L'identifiant technique de l'entité juridique est connu (1234).

**Requête :**

```json
PATCH [BASE]/Organization/1234
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
                    "valueString": "address"
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

**Description du scénario :** Une entité géographique enregistre un changement de numéro de téléphone (passage de 01.01.01.02.01 à 01.01.01.02.02) et ajoute un contact (GREDIN Thierry).

**Prérequis :** L'identifiant technique de l'entité géographique est connu (4569).

**Requête :**

```json
PATCH [BASE]/Organization/4569
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
                    "valueString": "Organization.telecom.extension.where(value='01.01.01.02.01')"
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
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R251-FonctionContact/FHIR/TRE-R251-FonctionContact",
                                "code": "01",
                                "display": "Directeur"
                            }
                        },
                        "extension": {
                            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-confidentiality-level",
                            "valueCodeableConcept": {
                                "coding": {
                                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite",
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
                                            "system": "https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication",
                                            "code": "2",
                                            "display": "Téléphone fixe"
                                        }
                                    }
                                },
                                {
                                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-confidentiality-level",
                                    "valueCodeableConcept": {
                                        "coding": {
                                            "system": "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite",
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

**Prérequis :** L'identifiant technique du service est connu (789).

**Requête :**

```json
PATCH [BASE]/Organization/789
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

**Prérequis :** L'identifiant technique du professionnel est connu (159).

**Requête :**

```json
PATCH [BASE]/Practitioner/159
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

#### Scénario 5 : Modification d'informations sur une situation opérationnelle

**Description du scénario :** L'annuaire enrichit le savoir faire d'un professionnel de santé, l'adossement du ROR national modifie les informations de la situation opérationnelle.

**Prérequis :** L'identifiant technique de la situation opérationnelle est connu (753).

**Requête :**

```json
PATCH [BASE]/PractitionerRole/753
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
                            "system": "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
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
                            "system": "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
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

#### Scénario 6 : Modification d'une offre opérationnelle (Ajout d'un acte spécifique)

**Description du scénario :** Un établissement ajoute un acte spécifique dans une offre opérationnelle déjà décrite au sein d'une structure.

**Prérequis :** L'identifiant technique de l'offre opérationnelle est connu (741).

**Requête :**

```json
PATCH [BASE]/HealthcareService/741
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
                            "system": "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique",
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

#### Scénario 7 : Modification d'une offre opérationnelle (Retrait d'une activité opérationnelle)

**Description du scénario :** Un établissement retire une activité opérationnelle au sein d'une offre opérationnelle déjà décrite au sein d'une structure.

**Prérequis :** L'identifiant technique de l'offre opérationnelle est connu (852).

**Requête :**

```json
PATCH [BASE]/HealthcareService/852
{
    "resourceType": "Parameters",
    "parameter": [
        {
            "name": "operation",
            "part": [ 
                {
                    "name": "type",
                    "valueString": "delete"
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
                            "system": "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle",
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

#### Scénario 8 : Modification d'une offre opérationnelle (Précision sur l'offre opérationnelle d'un cabinet de ville)

**Description du scénario :** Un professionnel de santé précise son offre opérationnelle et ajoute des valeurs d'activité opérationnelle et d'acte spécifique.

**Prérequis :** L'identifiant technique de l'offre opérationnelle est connu (963).

**Requête :**

```json
PATCH [BASE]/HealthcareService/963
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
                            "system": "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle",
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
                            "system": "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle",
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
                            "system": "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique",
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
                    "value": {
                        "coding": {
                            "system": "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique",
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
                    "value": {
                        "coding": {
                            "system": "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique",
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
                            "system": "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique",
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

#### Scénario 9 : Modification d'une offre opérationnelle (Rattachement d'un professionnel de santé)

**Description du scénario :** Pour enregistrer le rattachement d'un professionnel de santé, une maison de santé pluriprofessionnelle crée une situation opérationnelle.

**Requête :** Voir [scénario 10 du cas d'usage saisie de l'offre](specifications_techniques_12.html#spécifique-serveur-scénario-10-création-dune-situation-opérationnelle) (Création d'une situation opérationnelle)