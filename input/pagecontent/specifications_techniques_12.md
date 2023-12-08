<!-- ## Saisie de l'offre -->

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
<p>Create<a href="#_ftn1" name="_ftnref1">[1]</a></p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>M&eacute;thode http associ&eacute;e</strong></p>
</td>
<td width="465">
<p>POST</p>
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
<p>POST [base]/[Ressource]{?{&amp;_format=[mime-type]}}</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/R4/http.html#create">https://www.hl7.org/fhir/R4/http.html#create</a> et <a href="https://www.hl7.org/fhir/R4/http.html#general">https://www.hl7.org/fhir/R4/http.html#general</a></p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/R4/http.html >

Si la création est un succès, le serveur répond en renvoyant a minima:
-	Un header avec un code 201 Created HTTP.
-	Un header Location contenant le nouvel identifiant technique et l’identifiant de version de la ressource créée.
-	L’identifiant fonctionnel de la ressouce créée.

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
[https://www.hl7.org/fhir/R4/operationoutcome.html](https://www.hl7.org/fhir/R4/operationoutcome.html)

Si la création échoue, le serveur doit répondre :

Un header avec un un code erreur HTTP 4XX ou 5XX

Un body contenant une ressource OperationOutcome qui donne les
détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
[https://www.hl7.org/fhir/R4/http.html](https://www.hl7.org/fhir/R4/http.html)

### Exemple de requêtes

#### Scénario 1 : Création de l'entité juridique d'un établissement

**Description du scénario :** Afin de décrire son offre, un établissement crée son entité juridique. 

**Requête :**

```json
POST [BASE]/Organization
{	
	"resourceType": "Organization",
    "name": "Quiétude",
    "identifier": [ 
        {
            "value": "2921317258",
            "type": {
                "coding": {
                    "code": "40", 
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure",
                },
            "system": "urn:oid:1.2.250.1.71.4.2.2"
            }
        },
        {
            "value": "921317258",
            "type": {
                "coding": [
                    {
                        "code": "2",
                        "system": "https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure",
                    }
                ]
            },
            "system": "http://sirene.fr"
        },
    ],
    "type": [
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J199-StatutJuridique-ROR/FHIR/JDV-J199-StatutJuridique-ROR",
                "code": "72",
                "display": "Société à responsabilité limitée (SARL)"
            }
        },
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J200-SousEnsembleAgregatStatutJuridique-ROR/FHIR/JDV-J200-SousEnsembleAgregatStatutJuridique-ROR",
                "code": "2200",
                "display": "Organisme privé à caractère commercial"
            }
        }
    ],
	"address": {
        "city": "BOIS-COLOMBES",
        "postalCode": "92270",
        "line": [
			"103 rue des Bourguignons",
			"92270 BOIS-COLOMBES"
        ],
        "_line": [
			{
            	"extension": [
					{
						"id": "Location.address.line.extension:houseNumber",
						"url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
						"valueString": "103"
					}
				]
			}, 
			{
				"extension": [
					{
						"id": "Location.address.line.extension:streetNameType",
						"url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType",
						"valueString": "rue"
					}
				]
			},
                        {
				"extension": [
					{
						"id": "Location.address.line.extension:streetNameBase",
						"url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
						"valueString": "des Bourguignons"
					}
				]
			}
		]
	},
	"extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12"
		}
    ]
}
```

#### Scénario 2 : Création de l'entité géographique d'un établissement

**Description du scénario :** Afin de décrire son offre, un établissement crée son entité géographique.

**Requête :**

```json
POST [BASE]/Organization
{	
	"resourceType": "Organization",
    "partOf": {
        "reference": "Organization/idEJ"
    },
    "identifier": [ 
        {
            "value": "392131725800020",
            "type": {
                "coding": {
                    "code": "40", 
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure",
                },
            "system": "urn:oid:1.2.250.1.71.4.2.2"
            }
        },
        {
            "value": "92131725800020",
            "type": {
                "coding": [
                    {
                    "code": "3", 
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure",
                    }
                ]
            }, 
            "system": "http://sirene.fr"
        },
    ],
    "type": {
        "coding": {
            "system": "https://mos.esante.gouv.fr/NOS/JDV_J55-CategorieEG-ROR/FHIR/JDV-J55-CategorieEG-ROR",
            "code": "460",
            "display": "Service autonomie aide (SAA)"
        }
    },
	"address": {
        "city": "BOIS-COLOMBES",
        "postalCode": "92270",
        "line": [
			"45 rue du général Leclerc",
			"92270 BOIS-COLOMBES"
        ],
        "_line": [
			{
            	"extension": [
					{
						"id": "Location.address.line.extension:houseNumber",
						"url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
						"valueString": "45"
					}
				]
			}, 
			{
				"extension": [
					{
						"id": "Location.address.line.extension:streetNameType",
						"url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType",
						"valueString": "rue"
					}
				]
			},
                        {
				"extension": [
					{
						"id": "Location.address.line.extension:streetNameBase",
						"url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
						"valueString": "du général Leclerc"
					}
				]
			}
		]
	},
    "contact": {
        "purpose": {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J221-NatureContact-ROR/FHIR/JDV-J221-NatureContact-ROR",
                "code": "06",
                "display": "standard"
            }
        }
        "extension": {
            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-confidentiality-level",
            "valueCodeableConcept": {
                "coding": {
                    "system": "https://mos.esante.gouv.fr/NOS/JDV_J222-NiveauConfidentialite-ROR/FHIR/JDV-J222-NiveauConfidentialite-ROR",
                    "code": "1",
                    "display": "Accès libre"
                }
            }
        },
        "telecom": {
            "value": " 01.01.01.01.01", 
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
                            "code": "1",
                            "display": "Accès libre"
                        }
                    }    
                }
            ]
        }
    }
	"extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12"
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-additional-name",
			"valueString": "Quiétude BOIS COLOMBES"
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-financial-help-type",
			"valueCodeableConcept": {
                "coding": {
                    "system": "https://mos.esante.gouv.fr/NOS/JDV_J31-AideFinanciere-ROR/FHIR/JDV-J31-AideFinanciere-ROR",
                    "code": "02",
                    "display": "Habilité Aide Sociale"
                }
            }
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-accomodation-family",
			"valueBoolean": true
		}
    ]
}
```

#### Scénario 3 : Création de l'organisation interne d'un établissement

**Description du scénario :** Afin de décrire son offre, un établissement crée son organisation interne (pôle).

**Requête :**

```json
POST [BASE]/Organization
{	
	"resourceType": "Organization",
    "name": "Pôle Chirurgical B",
    "partOf": {
        "reference": "Organization/id"
    }
    "type": {
        "coding": {
            "system": "http://interopsante.org/fhir/CodeSystem/fr-v2-3307",
            "code": "POLE"
        }
    },
    "identifier": {
        "value": "XXX",
        "type": {
            "coding": {
                "code": "42", 
                "system": "https://mos.esante.gouv.fr/NOS/TRE_R345-TypeIdentifiantAutre/FHIR/TRE_R345-TypeIdentifiantAutre"
            },
        "system": "https://oi.esante.gouv.fr"
        }
    },
    "extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12"
		}
    ]
}
```

#### Scénario 4 : Création d'une offre dans une unité fonctionnelle préexistante

**Description du scénario :** Un établissement ajoute une offre de consultation neurochirurgicale dans une unité fonctionnelle de consultation.

**Requête :**

```json
POST [BASE]/HealthcareService
```

#### Scénario 5 : Création d'une offre directement rattachée à l'établissement

**Description du scénario :** Un établissement ajoute une offre couvrant une autre zone d'intervention que les offres précédemment enregistrées.

**Requête :**

```json
POST [BASE]/HealthcareService
```

#### Scénario 6 : Création d'un professionnel

**Description du scénario :** Afin de décrire son offre, un établissement ajoute un professionnel.

**Requête :**

```json
POST [BASE]/Practitioner
{	
	"resourceType": "Practitioner",
    "identifier": {},
    "extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12"
		}
    ]
}
```

#### Scénario 7 : Création d'une situation opérationnelle

**Description du scénario :** Afin de décrire son offre, un établissement ajoute une situation opérationnelle.

**Requête :**

```json
POST [BASE]/PractitionerRole
{	
	"resourceType": "PractitionerRole",
    "identifier": {},
    "practitioner": {
        "reference": "Practitioner/id"
    },
    "healthcareService": {
        "reference": "HealthcareService/id"
    },
    "code": {
        "coding": {
            "system": "https://mos.esante.gouv.fr/NOS/JDV_J229-ProfessionSante-ROR/FHIR/JDV-J229-ProfessionSante-ROR",
            "code": "",
            "display": ""
        }
    },
    "specialty": {
        "coding": {
            "system": "https://mos.esante.gouv.fr/NOS/JDV_J209-TypeSavoirFaire-ROR/FHIR/JDV-J209-TypeSavoirFaire-ROR",
            "code": "",
            "display": ""
        }
    },
    "extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12"
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole-unit-exercise-mode",
			"valueCodeableConcept": {
                "coding": {
                    "system": "https://mos.esante.gouv.fr/NOS/JDV_J217-ModeExercice-ROR/FHIR/JDV-J217-ModeExercice-ROR",
                    "code": "",
                    "display": ""
                }
            }
		}
    ]
}
```