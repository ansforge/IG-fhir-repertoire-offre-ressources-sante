<!-- ## Mise à jour de l'offre -->

###  Construction de la requête de base

<table>
<tbody>
<tr>
<td width="215">
<p><strong>Interaction FHIR</strong></p>
</td>
<td width="465">
<p>Patch<a href="#_ftn1" name="_ftnref1">[1]</a>, Update<a href="#_ftn2" name="_ftnref2"><sup>[2]</sup></a></p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>M&eacute;thode http associ&eacute;e</strong></p>
</td>
<td width="465">
<p>PATCH, PUT</p>
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
<p><a href="#_ftnref2" name="_ftn2">[2]</a> <a href="https://hl7.org/fhir/R4/http.html#update">https://hl7.org/fhir/R4/http.html#create</a> et <a href="http://hl7.org/fhir/R4/http.html#general">http://hl7.org/fhir/R4/http.html#general</a> &nbsp;</p>

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

#### [spécifique serveur] Scénario 1 : Modification d'une entité juridique

*Cette requête ne pourra être exécutée que par le serveur.*

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

#### [spécifique serveur] Scénario 2 : Modification d'une entité géographique

*Cette requête ne pourra être exécutée que par le serveur.*

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
                    "valueString": "Organization.telecom"
                },
                {
                    "name": "value",
                    "valueContactPoint": [
                        {
                            "system": "phone",
                            "value": "01.01.01.02.02",
                            "extension": [
                                {
                                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel",
                                    "valueCodeableConcept": {
                                        "coding": [
                                            {
                                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication",
                                                "code": "2",
                                                "display": "Téléphone fixe"
                                            }
                                        ]    
                                    }
                                },
                                {
                                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level",
                                    "valueCodeableConcept": {
                                        "coding": [
                                            {
                                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite",
                                                "code": "1",
                                                "display": "Accès libre"
                                            }
                                        ]    
                                    }    
                                }
                            ]
                        }
                    ]
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

#### [spécifique serveur] Scénario 3 : Modification d'une organisation interne

*Cette requête ne pourra être exécutée que par le serveur.*

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

#### [spécifique serveur] Scénario 4 : Modification d'informations sur un professionnel

*Cette requête ne pourra être exécutée que par le serveur.*

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
                    "valueString": "Practitioner.telecom"
                },
                {
                    "name": "value",
                    "valueContactPoint": [
                        {
                            "system": "email",
                            "value": "cyndi.chanmet@SomedNantes.mssante.fr",
                            "extension": [
                                {
                                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel",
                                    "valueCodeableConcept": {
                                        "coding": [
                                            {
                                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication",
                                                "code": "3",
                                                "display": "Courrier électronique"
                                            }
                                        ]    
                                    }
                                },
                                {
                                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level",
                                    "valueCodeableConcept": {
                                        "coding": [
                                            {
                                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite",
                                                "code": "2",
                                                "display": "Accès restreint"
                                            }
                                        ]    
                                    }    
                                }
                            ]
                        }, 
                        {
                            "system": "phone",
                            "value": "01.01.01.01.01",
                            "extension": [
                                {
                                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel",
                                    "valueCodeableConcept": {
                                        "coding": [
                                            {
                                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication",
                                                "code": "2",
                                                "display": "Téléphone fixe"
                                            }
                                        ]    
                                    }
                                },
                                {
                                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level",
                                    "valueCodeableConcept": {
                                        "coding": [
                                            {
                                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite",
                                                "code": "1",
                                                "display": "Accès libre"
                                            }
                                        ]    
                                    }    
                                }
                            ]
                        }
                    ]
                }
            ]
        }
    ]
}
```

#### [spécifique serveur] Scénario 5 : Modification d'informations sur une situation opérationnelle

*Cette requête ne pourra être exécutée que par le serveur.*

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

#### [spécifique serveur] Scénario 6 : Modification d'une offre opérationnelle (Ajout d'un acte spécifique)

*Cette requête ne pourra être exécutée que par le serveur.*

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

#### [spécifique serveur] Scénario 7 : Modification d'une offre opérationnelle (Retrait d'une activité opérationnelle)

*Cette requête ne pourra être exécutée que par le serveur.*

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

#### [spécifique serveur] Scénario 8 : Modification d'une offre opérationnelle (Précision sur l'offre opérationnelle d'un cabinet de ville)

*Cette requête ne pourra être exécutée que par le serveur.*

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

#### [spécifique serveur] Scénario 9 : Modification d'une offre opérationnelle (Rattachement d'un professionnel de santé)

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Pour enregistrer le rattachement d'un professionnel de santé, une maison de santé pluriprofessionnelle crée une situation opérationnelle.

**Requête :** Voir [scénario 10 du cas d'usage saisie de l'offre](specifications_techniques_12.html#spécifique-serveur-scénario-10-création-dune-situation-opérationnelle) (Création d'une situation opérationnelle)

#### [spécifique serveur] Scénario 10 : Modification de multiples informations sur une offre

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Un utilisateur ajoute une activité opérationnelle, un acte spécifique, un contact avec son numéro et modifie ses horaires.

**Prérequis :** L'identifiant technique de l'offre opérationnelle est connu (963).

**Requête :**

```json
PUT [BASE]/HealthcareService/964
{	
	"resourceType": "HealthcareService",
    "meta": {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice"], 
        "lastUpdated": "2023-12-20T10:00:00+01:00"
    },
    "name": "Services à domicile quiétude Bois Colombes",
    "providedBy": {
        "reference": "Organization/2424"
    },
    "location": [
        {
            "reference": "Location/654"
        }
    ],
    "identifier": {
        "value": "ZZZ"
    },
    "category": {
        "coding": [
            {
                "system": "https://mos.esante.gouv.fr/NOS",
                "code": "30", 
                "display": "Service d’aide et d’accompagnement à domicile (SAAD)"
            }
        ]    
    },
    "type": {
        "coding": [
            {
                "system": "https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite",
                "code": "04", 
                "display": "Médico-social (MS)"
            }
        ]
    },
    "specialty": [
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle",
                    "code": "298", 
                    "display": "Accompagnements pour vivre dans un logement"
                }
            ]
        },
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R265-PrestationPilotageSerafin/FHIR/TRE-R265-PrestationPilotageSerafin",
                    "code": "019", 
                    "display": "2.3.2.1 Accompagnements pour vivre dans un logement"
                }
            ]
        },
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle",
                    "code": "299", 
                    "display": "Accompagnements pour accomplir les activités domestiques"
                }
            ]    
        },
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R265-PrestationPilotageSerafin/FHIR/TRE-R265-PrestationPilotageSerafin",
                    "code": "020", 
                    "display": "2.3.2.2 Accompagnements pour accomplir les activités domestiques"
                }
            ]
        },
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle",
                    "code": "302", 
                    "display": "Accompagnements pour préparer sa vie professionnelle"
                }
            ]    
        },
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R265-PrestationPilotageSerafin/FHIR/TRE-R265-PrestationPilotageSerafin",
                    "code": "023", 
                    "display": "2.3.3.2 Accompagnements pour préparer sa vie professionnelle"
                }
            ]
        }
    ],
    "characteristic": [
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge",
                    "code": "59", 
                    "display": "Equipe d'intervention mobile"
                }
            ]
        },
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R236-ModeGestion/FHIR/TRE-R236-ModeGestion",
                    "code": "02", 
                    "display": "Mandataire"
                }
            ]    
        },
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique",
                    "code": "0784", 
                    "display": "Entretien du logement (ménage, petit bricolage)"
                }
            ]
        },
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique",
                    "code": "0785", 
                    "display": "Entretien du linge"
                }
            ]    
        },
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique",
                    "code": "0786", 
                    "display": "Accompagnement pour faire des achats (courses)"
                }
            ]
        },
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique",
                    "code": "0787", 
                    "display": "Accompagnement ou apprentissage à la préparation du repas"
                }
            ]    
        }, 
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique",
                    "code": "0788", 
                    "display": "Conduite du véhicule de la personne"
                }
            ]    
        }
    ],
    "availableTime": {
        "daysOfWeek": ["mon", "tue", "thu", "fri"],
        "availableStartTime": "09:00:00",
        "availableEndTime": "18:00:00",
        "extension": [
            {
                "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time", 
                "valueCodeableConcept": {
                    "coding": [
                        {
                            "system": "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire",
                            "code": "02",
                            "display": "Horaire de fonctionnement"
                        }
                    ]
                }        
            }
        ]    
    },
    "extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12-09T14:30:00+01:00"
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit",
			"valueBoolean": false
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type",
			"extension": [
                {
                    "url": "ageRange",
                    "valueRange": {
                        "low": {
                            "value": 60
                        },
                        "high": {
                            "value": 120
                        }
                    }
                },
                {
                    "url": "supportedPatientInfo",
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R239-PublicPrisEnCharge/FHIR/TRE-R239-PublicPrisEnCharge",
                                "code": "01", 
                                "display": "Personnes âgées en perte d'autonomie (PA) et aidants"
                            }
                        ]    
                    }
                }    
            ]
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division",
			"extension": [
                {
                    "url": "codeTerritorialDivision",
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune",
                                "code": "92036", 
                                "display": "Bois-Colombes (92009)"
                            }
                        ] 
                    }
                },  
                {
                    "url": "typeTerritorialDivision",
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R201-TypeDivisionTerritoriale/FHIR/TRE-R201-TypeDivisionTerritoriale",
                                "code": "3", 
                                "display": "Commune"
                            }
                        ]
                    }        
                }
            ]
		},
        { 
            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact",
            "extension": [
                {
                    "url": "purposeContact",
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R287-NatureContact/FHIR/TRE-R287-NatureContact",
                                "code": "06",
                                "display": "Standard"
                            }
                        ] 
                    }       
                },
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level",
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite",
                                "code": "1",
                                "display": "Accès libre"
                            }
                        ]
                    }        
                },
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom",
                    "extension": [
                        {
                            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication",
                                        "code": "2",
                                        "display": "Téléphone fixe"
                                    }
                                ]
                            }
                        },
                        {
                            "url": "telecomAddress",
                            "valueString": "01.01.01.01.01"
                        },
                        {
                            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite",
                                        "code": "1",
                                        "display": "Accès libre"
                                    }
                                ]
                            }
                        }
                    ]
                }
            ]
        },
        { 
            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact",
            "extension": [
                {
                    "url": "purposeContact",
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R287-NatureContact/FHIR/TRE-R287-NatureContact",
                                "code": "01",
                                "display": "Accueil"
                            }
                        ] 
                    }       
                },
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level",
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite",
                                "code": "1",
                                "display": "Accès libre"
                            }
                        ]
                    }        
                },
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom",
                    "extension": [
                        {
                            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication",
                                        "code": "2",
                                        "display": "Téléphone fixe"
                                    }
                                ]
                            }
                        },
                        {
                            "url": "telecomAddress",
                            "valueString": "01.01.01.01.03"
                        },
                        {
                            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite",
                                        "code": "1",
                                        "display": "Accès libre"
                                    }
                                ]
                            }
                        }
                    ]
                }
            ]
        }
    ]
}
```
