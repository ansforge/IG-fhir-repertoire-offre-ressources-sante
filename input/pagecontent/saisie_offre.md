<!-- ## Saisie de l'offre -->

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
<p><code>POST [base]/[Ressource]{?{&amp;_format=[mime-type]}}</code></p>
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

#### [spécifique serveur] Scénario 1 : Création de l'entité juridique <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Afin de décrire son offre, un établissement crée son entité juridique. 

**Requête :**

N.B.: Exemple de ressource fictif pour illustration, ces ressources ne sont pas validées par le guide d'implémentation et sont donc sujettes aux erreurs. Pour l'implémentation se baser sur les profils.

```json
POST [BASE]/Organization
{	
	"resourceType": "Organization",   
    "meta": {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization"], 
        "lastUpdated": "2023-12-20T10:00:00+01:00"
    },
    "name": "Quiétude",
    "identifier": [ 
        {
            "value": "2921317258",
            "type": {
                "coding": [
                    {
                        "system": "https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure",
                        "code": "40", 
                        "display": "Identifiant national de structure"
                    }
                ]
            },    
            "system": "urn:oid:1.2.250.1.71.4.2.2"
        },
        {
            "value": "921317258",
            "type": {
                "coding": [
                    {
                        "system": "https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure",
                        "code": "2",
                        "display": "SIREN"
                    }
                ]
            },
            "system": "http://sirene.fr"
        }
    ],
    "type": [
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R72-FinessStatutJuridique/FHIR/TRE-R72-FinessStatutJuridique",
                    "code": "72",
                    "display": "Société à responsabilité limitée (SARL)"
                }
            ]
        },
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R69-FinessAgregatStatutJuridiqueNiv2/FHIR/TRE-R69-FinessAgregatStatutJuridiqueNiv2",
                    "code": "2200",
                    "display": "Organisme privé à caractère commercial"
                }
            ]       
        }
    ],
	"address": [
        {
            "city": "BOIS-COLOMBES",
            "postalCode": "92270",
            "line": ["103 rue des Bourguignons, 92270 BOIS-COLOMBES"],
            "_line": [
                {
                    "extension": [
                        {
                            "url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
                            "valueString": "103"
                        },
                        {
                            "url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType",
                            "valueString": "rue"
                    },
                        {
                            "url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
                            "valueString": "des Bourguignons"
                        }
                    ]
                }            
            ]
        }
    ],
	"extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12-09T14:30:00+01:00"
		}
    ]
}
```

#### [spécifique serveur] Scénario 2 : Création de l'entité géographique <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Afin de décrire son offre, un établissement crée son entité géographique.

**Prérequis :** L'entité juridique dont fait partie l'entité géographique à créer existe et son identifiant est connu (1111).

**Requête :**

N.B.: Exemple de ressource fictif pour illustration, ces ressources ne sont pas validées par le guide d'implémentation et sont donc sujettes aux erreurs. Pour l'implémentation se baser sur les profils.

```json
POST [BASE]/Organization
{	
	"resourceType": "Organization",
    "meta": {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization"], 
        "lastUpdated": "2023-12-20T10:00:00+01:00"
    },
    "name": "Quiétude BOIS COLOMBES",
    "partOf": {
        "reference": "Organization/1111"
    },
    "identifier": [ 
        {
            "value": "392131725800020",
            "type": {
                "coding": [
                    {
                        "system": "https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure",
                        "code": "40", 
                        "display": "Identifiant national de structure"
                    }
                ]
            },
            "system": "urn:oid:1.2.250.1.71.4.2.2"
        },
        {
            "value": "92131725800020",
            "type": {
                "coding": [
                    {
                        "system": "https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure",
                        "code": "3",
                        "display": "SIRET"
                    }
                ]
            }, 
            "system": "http://sirene.fr"
        }
    ],
    "type": [
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement",
                    "code": "460",
                    "display": "Service autonomie aide (SAA)"
                }
            ]    
        }
    ],
	"address": [
        {
            "city": "BOIS-COLOMBES",
            "postalCode": "92270",
            "line": ["45 rue du général Leclerc, 92270 BOIS-COLOMBES"],
            "_line": [
                {
                    "extension": [
                        {
                            "id": "Location.address.line.extension:houseNumber",
                            "url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
                            "valueString": "45"
                        },
                        {
                            "id": "Location.address.line.extension:streetNameType",
                            "url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType",
                            "valueString": "rue"
                        },
                        {
                            "id": "Location.address.line.extension:streetNameBase",
                            "url": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
                            "valueString": "du général Leclerc"
                        }
                    ]
                }
            ]
        }
    ],
    "contact": [
        {
            "purpose": {
                "coding": [
                    {
                        "system": "https://mos.esante.gouv.fr/NOS/TRE_R287-NatureContact/FHIR/TRE-R287-NatureContact",
                        "code": "06",
                        "display": "standard"
                    }
                ]       
            },
            "extension": [
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-confidentiality-level",
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
            ],
            "telecom": [
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
    ],
	"extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12-09T14:30:00+01:00"
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-financial-help-type",
			"valueCodeableConcept": {
                "coding": [
                    {
                        "system": "https://mos.esante.gouv.fr/NOS/TRE_R241-AideFinanciere/FHIR/TRE-R241-AideFinanciere",
                        "code": "02",
                        "display": "Habilité Aide Sociale"
                    }
                ]    
            }
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization-accomodation-family",
			"valueBoolean": false
		}
    ]
}
```

#### [spécifique serveur] Scénario 3 : Création d'une offre opérationnelle directement rattachée à l'établissement <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Un établissement ajoute une offre opérationnelle couvrant une autre zone d'intervention que les offres opérationnelles précédemment enregistrées.

**Prérequis :** L'établissement dont fait partie l'offre opérationnelle à créer et son lieu de réalisation existent et leurs identifiants respectifs sont connus (2424 et 654).

**Requête :**

N.B.: Exemple de ressource fictif pour illustration, ces ressources ne sont pas validées par le guide d'implémentation et sont donc sujettes aux erreurs. Pour l'implémentation se baser sur les profils.

```json
POST [BASE]/HealthcareService
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
        }
    ],
    "availableTime": [
        {
            "availableStartTime": "09:00:00",
            "availableEndTime": "17:00:00",
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
                }, 
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "1"
                }
            ]    
        },
        {
            "availableStartTime": "09:00:00",
            "availableEndTime": "17:00:00",
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
                }, 
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "2"
                }
            ]    
        },
        {
            "availableStartTime": "09:00:00",
            "availableEndTime": "17:00:00",
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
                }, 
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "3"
                }
            ]    
        },
        {
            "availableStartTime": "09:00:00",
            "availableEndTime": "17:00:00",
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
                }, 
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "4"
                }
            ]    
        },
        {
            "availableStartTime": "09:00:00",
            "availableEndTime": "17:00:00",
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
                }, 
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "5"
                }
            ]    
        }
    ],
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
        }
    ]
}
```

#### [spécifique serveur] Scénario 4 : Création d'un pôle <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Afin de décrire son offre, un établissement crée un pôle.

**Prérequis :** L'entité géograpghique dont fait partie le pôle à créer existe et son identifiant est connu (3536).

**Requête :**

N.B.: Exemple de ressource fictif pour illustration, ces ressources ne sont pas validées par le guide d'implémentation et sont donc sujettes aux erreurs. Pour l'implémentation se baser sur les profils.

```json
POST [BASE]/Organization
{	
	"resourceType": "Organization",
    "meta": {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization"], 
        "lastUpdated": "2023-12-20T10:00:00+01:00"
    },
    "name": "Pôle Chirurgical B",
    "partOf": {
        "reference": "Organization/3536"
    },
    "identifier": [
        {
            "value": "ZZZ",
            "type": {
                "coding": [
                    {
                        "system": "https://mos.esante.gouv.fr/NOS/TRE_R345-TypeIdentifiantAutre/FHIR/TRE-R345-TypeIdentifiantAutre",
                        "code": "42",
                        "display": "Identifiant fonctionnel de l'OI connu par l'instance ROR"
                    }
                ]
            },
            "system": "https://oi.esante.gouv.fr"
        }
    ],
    "type": [
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R207-TypeOrganisationInterne/FHIR/TRE-R207-TypeOrganisationInterne",
                    "code": "1", 
                    "display": "Pôle"
                }
            ]    
        }
    ], 
    "extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12-09T14:30:00+01:00"
		}
    ]
}
```

#### [spécifique serveur] Scénario 5 : Création d'un service <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Afin de décrire son offre, un établissement crée un service.

**Prérequis :** L'établissement dont fait partie le service à créer existe et son identifiant est connu (3537).

**Requête :**

N.B.: Exemple de ressource fictif pour illustration, ces ressources ne sont pas validées par le guide d'implémentation et sont donc sujettes aux erreurs. Pour l'implémentation se baser sur les profils.

```json
POST [BASE]/Organization
{	
	"resourceType": "Organization",
    "meta": {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization"], 
        "lastUpdated": "2023-12-20T10:00:00+01:00"
    },
    "name": "Tête et Cou",
    "partOf": {
        "reference": "Organization/3537"
    },
    "identifier": [
        {
            "value": "ZZZ",
            "type": {
                "coding": [
                    {
                        "system": "https://mos.esante.gouv.fr/NOS/TRE_R345-TypeIdentifiantAutre/FHIR/TRE-R345-TypeIdentifiantAutre",
                        "code": "42",
                        "display": "Identifiant fonctionnel de l'OI connu par l'instance ROR"
                    }
                ]
            },       
            "system": "https://oi.esante.gouv.fr"
        }
    ],
    "type": [
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R207-TypeOrganisationInterne/FHIR/TRE-R207-TypeOrganisationInterne",
                    "code": "2", 
                    "display": "Structure interne ou Service"
                }
            ]
        }
    ], 
    "extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12-09T14:30:00+01:00"
		}
    ]
}
```

#### [spécifique serveur] Scénario 6 : Création d'une unité fonctionnelle <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Afin de décrire son offre, un établissement crée une unité fonctionnelle.

**Prérequis :** L'établissement dont fait partie l'unité fonctionnelle à créer existe et son identifiant est connu (6963).

**Requête :**

N.B.: Exemple de ressource fictif pour illustration, ces ressources ne sont pas validées par le guide d'implémentation et sont donc sujettes aux erreurs. Pour l'implémentation se baser sur les profils.

```json
POST [BASE]/Organization
{	
	"resourceType": "Organization",
    "meta": {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization"], 
        "lastUpdated": "2023-12-20T10:00:00+01:00"
    },
    "name": "Neurochirurgie",
    "partOf": {
        "reference": "Organization/6963"
    },
    "identifier": [
        {
            "value": "ZZZ",
            "type": {
                "coding": [
                    {
                        "system": "https://mos.esante.gouv.fr/NOS/TRE_R345-TypeIdentifiantAutre/FHIR/TRE-R345-TypeIdentifiantAutre",
                        "code": "42",
                        "display": "Identifiant fonctionnel de l'OI connu par l'instance ROR"
                    }
                ]
            },
            "system": "https://oi.esante.gouv.fr"
        }
    ],
    "type": [
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R207-TypeOrganisationInterne/FHIR/TRE-R207-TypeOrganisationInterne",
                    "code": "3", 
                    "display": "Unité fonctionnelle"
                }
            ]    
        }
    ], 
    "extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12-09T14:30:00+01:00"
		}
    ]
}
```

#### [spécifique serveur] Scénario 7 : Création d'une offre opérationnelle dans une unité fonctionnelle préexistante <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Un établissement ajoute une offre opérationnelle de consultation neurochirurgicale dans une unité fonctionnelle de consultation.

**Prérequis :** L'établissement dont fait partie l'offre opéréationnelle à créer et son lieu de réalisation existent et leurs identifiants respectifs sont connus (5958 et 5253).

**Requête :**

N.B.: Exemple de ressource fictif pour illustration, ces ressources ne sont pas validées par le guide d'implémentation et sont donc sujettes aux erreurs. Pour l'implémentation se baser sur les profils.

```json
POST [BASE]/HealthcareService
{	
	"resourceType": "HealthcareService",
    "meta": {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice"], 
        "lastUpdated": "2023-12-20T10:00:00+01:00"
    },
    "name": "Hospitalisation complète de Neurochirurgie",
    "providedBy": {
        "reference": "Organization/5958"
    },
    "location": [
        {
            "reference": "Location/5253"
        }
    ],
    "identifier": {
        "value": "ZZZ"
    },
    "type": {
        "coding": [
            {
                "system": "https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite",
                "code": "01", 
                "display": "Médecine, Chirurgie, Obstétrique (MCO)"
            }
        ]    
    },
    "specialty": [
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle",
                    "code": "183", 
                    "display": "Traitement neurochirurgical de la douleur"
                }
            ]    
        },
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle",
                    "code": "440", 
                    "display": "Chirurgie intracrânienne"
                }
            ]    
        }
    ],
    "characteristic": [
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge",
                    "code": "28", 
                    "display": "Hospitalisation complète (HC)"
                }
            ]    
        },
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique",
                    "code": "0320", 
                    "display": "Neuromodulation sacrée"
                }   
            ]
        }       
    ],
    "availableTime": [
        {
            "allDay": true,
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
                },
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "1"
                }
            ]
        },
        {
            "allDay": true,
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
                },
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "2"
                }
            ]
        },
        {
            "allDay": true,
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
                },
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "3"
                }
            ]
        },
        {
            "allDay": true,
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
                },
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "4"
                }
            ]
        },
        {
            "allDay": true,
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
                },
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "5"
                }
            ]
        },
        {
            "allDay": true,
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
                },
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "6"
                }
            ]
        },
        {
            "allDay": true,
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
                },
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "7"
                }
            ]
        }
    ],
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
                            "value": 18
                        },
                        "high": {
                            "value": 90
                        }
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
                                "code": "06",
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R287-NatureContact/FHIR/TRE-R287-NatureContact",
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
                                "code": "1",
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite",
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
                                        "system": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel",
                                        "code": "2",
                                        "display": "Téléphone fixe"
                                    }
                                ]
                            }        
                        },
                        {
                            "url": "telecomAddress",
                            "valueString": "01.01.01.01.02"
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

#### [spécifique serveur] Scénario 8 : Création d'une offre opérationnelle de ville <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** A la suite d'un adossement à l'annuaire, le ROR national crée l'offre opérationnelle d'un cabinet de ville.

**Prérequis :** L'établissement dont fait partie l'offre opéréationnelle à créer et son lieu de réalisation existent et leurs identifiants respectifs sont connus (4947 et 1215).

**Requête :**

N.B.: Exemple de ressource fictif pour illustration, ces ressources ne sont pas validées par le guide d'implémentation et sont donc sujettes aux erreurs. Pour l'implémentation se baser sur les profils.

```json
POST [BASE]/HealthcareService
{	
	"resourceType": "HealthcareService",
    "meta": {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice"], 
        "lastUpdated": "2023-12-20T10:00:00+01:00"
    },
    "name": "Cabinet du Dr Julie JOURDIN",
    "providedBy": {
        "reference": "Organization/4947"
    },
    "location": [
        {
            "reference": "Location/1215"
        }
    ],
    "identifier": {
        "value": "ZZZ"
    },
    "type": {
        "coding": [
            {
            "system": "https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite",
            "code": "05", 
            "display": "Ville"
            }
        ]    
    },
    "specialty": [
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle",
                    "code": "437", 
                    "display": "Médecine générale"
                }
            ]          
        }
    ],
    "characteristic": [
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge",
                    "code": "32", 
                    "display": "Consultation (CS)"
                }
            ]
        }
    ],
    "availableTime": [
        {
            "availableStartTime": "09:00:00",
            "availableEndTime": "19:00:00",
            "extension": [
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time", 
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire",
                                "code": "07",
                                "display": "Horaire de consultation sur RDV"
                            }
                        ]        
                    }
                }, 
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "1"
                }
            ]    
        },
        {
            "availableStartTime": "09:00:00",
            "availableEndTime": "19:00:00",
            "extension": [
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time", 
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire",
                                "code": "07",
                                "display": "Horaire de consultation sur RDV"
                            }
                        ]        
                    }
                }, 
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "2"
                }
            ]    
        },
        {
            "availableStartTime": "09:00:00",
            "availableEndTime": "19:00:00",
            "extension": [
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time", 
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire",
                                "code": "07",
                                "display": "Horaire de consultation sur RDV"
                            }
                        ]        
                    }
                }, 
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "3"
                }
            ]    
        },
        {
            "availableStartTime": "09:00:00",
            "availableEndTime": "19:00:00",
            "extension": [
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time", 
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire",
                                "code": "07",
                                "display": "Horaire de consultation sur RDV"
                            }
                        ]        
                    }
                }, 
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "4"
                }
            ]    
        },
        {
            "availableStartTime": "14:00:00",
            "availableEndTime": "19:00:00",
            "extension": [
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time", 
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire",
                                "code": "07",
                                "display": "Horaire de consultation sur RDV"
                            }
                        ]        
                    }
                }, 
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "5"
                }
            ]    
        },
        {
            "availableStartTime": "09:00:00",
            "availableEndTime": "12:00:00",
            "extension": [
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time", 
                    "valueCodeableConcept": {
                        "coding": [
                            {
                                "system": "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire",
                                "code": "06",
                                "display": "Horaire de consultation sans RDV"
                            }
                        ]        
                    }
                }, 
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
                    "valueInteger": "5"
                }
            ]    
        }
    ],
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
                            "value": 0
                        },
                        "high": {
                            "value": 120
                        }
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
                                "code": "02",
                                "display": "Prise de rendez-vous"
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
                                        "system": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel",
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
        }
    ]
}
```

#### [spécifique serveur] Scénario 9 : Création d'un professionnel <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Afin de décrire son offre, un établissement ajoute un professionnel.

**Requête :**

N.B.: Exemple de ressource fictif pour illustration, ces ressources ne sont pas validées par le guide d'implémentation et sont donc sujettes aux erreurs. Pour l'implémentation se baser sur les profils.

```json
POST [BASE]/Practitioner
{	
	"resourceType": "Practitioner",
    "meta": {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner"], 
        "lastUpdated": "2023-12-20T10:00:00+01:00"
    },
    "name": [
        {
            "family": "CHANMET",
            "given": ["Cyndi"]
        }
    ],
    "identifier": [
        {
            "value": "11111573474",
            "system": "urn:oid:1.2.250.1.71.4.2.1"
        }
    ],
    "gender": "female",
    "telecom": [
        {
            "system": "email",
            "value": "cyndi.chanmet@lifen.mssante.fr",
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
        }
    ],
    "extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12-09T14:30:00+01:00"
		}
    ]
}
```

#### [spécifique serveur] Scénario 10 : Création d'une situation opérationnelle <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Afin de décrire son offre, un établissement ajoute une situation opérationnelle.

**Prérequis :** Le professionnel et l'offre opérationnelle liés à la siutation opérationnelle à créer existent et leurs identifiants respectifs sont connus (2524 et 9597).

**Requête :**

N.B.: Exemple de ressource fictif pour illustration, ces ressources ne sont pas validées par le guide d'implémentation et sont donc sujettes aux erreurs. Pour l'implémentation se baser sur les profils.

```json
POST [BASE]/PractitionerRole
{	
	"resourceType": "PractitionerRole",
    "meta": {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole"], 
        "lastUpdated": "2023-12-20T10:00:00+01:00"
    },
    "practitioner": {
        "reference": "Practitioner/2524"
    },
    "healthcareService": [
        {
            "reference": "HealthcareService/9597"
        }
    ],    
    "identifier": [
        {
            "value": "11102379616"
        }
    ],
    "code": [
        {
            "coding": [
                {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
                    "code": "60",
                    "display": "Infirmier"
                }
            ]
        }
    ],
    "extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12-09T14:30:00+01:00"
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/RORPractitionerRoleName",
			"extension": [
                {
                    "url": "exerciseFirstName", 
                    "valueString": "Mylène"
                },
                {
                    "url": "exerciseLastName", 
                    "valueString": "Tenor"
                }
            ]
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole-unit-exercise-mode",
			"valueCodeableConcept": {
                "coding": [
                    {
                        "system": "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice",
                        "code": "L",
                        "display": "Libéral, indépendant, artisan, commerçant"
                    }
                ]    
            }
		}
    ]
}
```