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
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure",
                    "code": "40", 
                    "display": "Identifiant national de structure"
                },
            "system": "urn:oid:1.2.250.1.71.4.2.2"
            }
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
	"address": [
        {
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
        }
    ],
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
    "name": "Quiétude BOIS COLOMBES",
    "partOf": {
        "reference": "Organization/idEJ"
    },
    "identifier": [ 
        {
            "value": "392131725800020",
            "type": {
                "coding": {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure",
                    "code": "40", 
                    "display": "Identifiant national de structure"
                },
            "system": "urn:oid:1.2.250.1.71.4.2.2"
            }
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
        },
    ],
    "type": [
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J55-CategorieEG-ROR/FHIR/JDV-J55-CategorieEG-ROR",
                "code": "460",
                "display": "Service autonomie aide (SAA)"
            }
        }
    ],
	"address": [
        {
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
        }
    ],
    "contact": [
        {
            "purpose": {
                "coding": {
                    "system": "https://mos.esante.gouv.fr/NOS/JDV_J221-NatureContact-ROR/FHIR/JDV-J221-NatureContact-ROR",
                    "code": "06",
                    "display": "standard"
                }
            },
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
    ],
	"extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12"
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

#### Scénario 3 : Création d'une offre directement rattachée à l'établissement

**Description du scénario :** Un établissement ajoute une offre couvrant une autre zone d'intervention que les offres précédemment enregistrées.

**Requête :**

```json
POST [BASE]/HealthcareService
{	
	"resourceType": "HealthcareService",
    "name": "Services à domicile quiétude Gennevilliers",
    "providedBy": {
        "reference": "Organization/id"
    },
    "location": [
        {
            "reference": "Location/id"
        }
    ],
    "identifier": {
        "value": "XXX",
    },
    "category": {
        "coding": {
            "system": "https://mos.esante.gouv.fr/NOS",
            "code": "30", 
            "display": "Service d’aide et d’accompagnement à domicile (SAAD)"
        }
    },
    "type": {
        "coding": {
            "system": "https://mos.esante.gouv.fr/NOS/JDV_J20-ChampActivite-ROR/FHIR/JDV-J20-ChampActivite-ROR",
            "code": "04", 
            "display": "Médico-social (MS)"
        }
    },
    "specialty": [
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code": "298", 
                "display": "Accompagnements pour vivre dans un logement"
            }
        },
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J51-FamilleActiviteOperationnelle-ROR/FHIR/JDV-J51-FamilleActiviteOperationnelle-ROR",
                "code": "019", 
                "display": "2.3.2.1 Accompagnements pour vivre dans un logement"
            }
        },
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code": "299", 
                "display": "Accompagnements pour accomplir les activités domestiques"
            }
        },
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J51-FamilleActiviteOperationnelle-ROR/FHIR/JDV-J51-FamilleActiviteOperationnelle-ROR",
                "code": "020", 
                "display": "2.3.2.2 Accompagnements pour accomplir les activités domestiques"
            }
        }
    ],
    "characteristic": [
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J19-ModePriseEnCharge-ROR/FHIR/JDV-J19-ModePriseEnCharge-ROR",
                "code": "59", 
                "display": "Equipe d'intervention mobile"
            }
        },
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J26-ModeGestion-ROR/FHIR/JDV-J26-ModeGestion-ROR",
                "code": "02", 
                "display": "Mandataire"
            }
        },
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code": "0784", 
                "display": "Entretien du logement (ménage, petit bricolage)"
            }
        },
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code": "0785", 
                "display": "Entretien du linge"
            }
        },
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code": "0786", 
                "display": "Accompagnement pour faire des achats (courses)"
            }
        },
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code": "0787", 
                "display": "Accompagnement ou apprentissage à la préparation du repas"
            }
        }
    ],
    "availableTime": {
        "daysOfWeek": ["mon", "tue", "wed", "thu", "fri"],
        "availableStartTime": "09:00:00",
        "availableEndTime": "17:00:00",
        "extension": {
            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time", 
            "valueCodeableConcept": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J41-TypeHoraire-ROR/FHIR/JDV-J41-TypeHoraire-ROR",
                "code": "02",
                "display": "Horaire de fonctionnement"
            }
        }
    },
    "extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12"
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit",
			"valueBoolean": true
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type",
			"extension": [
                {
                    "url": "ageRange",
                    "valueRange": {
                        "low": "60",
                        "high": "120"
                    }
                },
                {
                    "url": "supportedPatientInfo",
                    "valueCodeableConcept": {
                        "system": "https://mos.esante.gouv.fr/NOS/JDV_J29-PublicPrisEnCharge-ROR/FHIR/JDV-J29-PublicPrisEnCharge-ROR",
                        "code": "01", 
                        "display": "Personnes âgées en perte d'autonomie (PA) et aidants"
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
                        "system": "https://mos.esante.gouv.fr/NOS/JDV_J124-Commune/FHIR/JDV-J124-Commune",
                        "code": "92036", 
                        "display": "Gennevilliers (92036)"
                    }
                },
                {
                    "url": "typeTerritorialDivision",
                    "valueCodeableConcept": {
                        "system": "https://mos.esante.gouv.fr/NOS/JDV_J223-TypeDivisionTerritoriale-ROR/FHIR/JDV-J223-TypeDivisionTerritoriale-ROR",
                        "code": "3", 
                        "display": "Commune"
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
                        "system": "https://mos.esante.gouv.fr/NOS/JDV_J221-NatureContact-ROR/FHIR/JDV-J221-NatureContact-ROR",
                        "code": "06",
                        "display": "Standard"
                    }
                },
                {
                    "url": "ror-confidentiality-level",
                    "valueCodeableConcept": {
                        "system": "https://mos.esante.gouv.fr/NOS/JDV_J222-NiveauConfidentialite-ROR/FHIR/JDV-J222-NiveauConfidentialite-ROR",
                        "code": "1",
                        "display": "Accès libre"
                    }
                },
                {
                    "url": "ror-healthcareservice-contact-telecom",
                    "extension": [
                        {
                            "url": "ror-telecom-communication-channel",
                            "valueCodeableConcept": {
                                "system": "https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR",
                                "code": "2",
                                "display": "Téléphone fixe"
                            }
                        },
                        {
                            "url": "telecomAddress",
                            "valueString": "01.01.01.01.01"
                        },
                        {
                            "url": "ror-telecom-confidentiality-level",
                            "valueCodeableConcept": {
                                "system": "https://mos.esante.gouv.fr/NOS/JDV_J222-NiveauConfidentialite-ROR/FHIR/JDV-J222-NiveauConfidentialite-ROR",
                                "code": "1",
                                "display": "Accès libre"
                            }
                        }
                    ]
                }
            ]
        }
    ]
}
```

#### Scénario 4 : Création de l'organisation interne d'un établissement

**Description du scénario :** Afin de décrire son offre, un établissement crée son organisation interne (unité fonctionnelle).

**Requête :**

```json
POST [BASE]/Organization
{	
	"resourceType": "Organization",
    "name": "Viscéral/Vasculaire",
    "partOf": {
        "reference": "Organization/id"
    },
    "identifier": [
        {
            "value": "XXX",
            "type": {
                "coding": {
                    "system": "https://mos.esante.gouv.fr/NOS/TRE_R345-TypeIdentifiantAutre/FHIR/TRE-R345-TypeIdentifiantAutre",
                    "code": "42",
                    "display": "Identifiant fonctionnel de l'OI connu par l'instance ROR"
                },
            "system": "https://oi.esante.gouv.fr"
            }
        }
    ],
    "type": [
        {
            "coding": {
                "system": "http://interopsante.org/fhir/CodeSystem/fr-v2-3307",
                "code": "UF", 
                "display": "Unité fonctionnelle"
            }
        }
    ], 
    "extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12"
		}
    ]
}
```

#### Scénario 5 : Création d'une offre dans une unité fonctionnelle préexistante

**Description du scénario :** Un établissement ajoute une offre de consultation neurochirurgicale dans une unité fonctionnelle de consultation.

**Requête :**

```json
POST [BASE]/HealthcareService
{	
	"resourceType": "HealthcareService",
    "name": "Consultation de Neurochirurgie",
    "providedBy": {
        "reference": "Organization/id"
    },
    "location": [
        {
            "reference": "Location/id"
        }
    ],
    "identifier": {
        "value": "XXX"
    },
    "type": {
        "coding": {
            "system": "https://mos.esante.gouv.fr/NOS/JDV_J20-ChampActivite-ROR/FHIR/JDV-J20-ChampActivite-ROR",
            "code": "01", 
            "display": "Médecine, Chirurgie, Obstétrique (MCO)"
        }
    },
    "specialty": [
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code": "83", 
                "display": "Traitement neurochirurgical de la douleur"
            }
        }
    ],
    "characteristic": [
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J19-ModePriseEnCharge-ROR/FHIR/JDV-J19-ModePriseEnCharge-ROR",
                "code": "32", 
                "display": "Consultation (CS)"
            }
        }
    ],
    "availableTime": {
        "daysOfWeek": ["mon", "tue", "wed", "thu", "fri"],
        "availableStartTime": "09:00:00",
        "availableEndTime": "19:00:00",
        "extension": {
            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time", 
            "valueCodeableConcept": {
                "code": "02",
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J41-TypeHoraire-ROR/FHIR/JDV-J41-TypeHoraire-ROR",
                "display": "Horaire de fonctionnement"
            }
        }
    },
    "extension": [
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
			"valueDateTime": "2023-12"
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit",
			"valueBoolean": true
		},
        {
			"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type",
			"extension": {
                "url": "ageRange",
                "valueRange": {
                    "low": "18",
                    "high": "90"
                }
            }
		},
        { 
            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact",
            "extension": [
                {
                    "url": "purposeContact",
                    "valueCodeableConcept": {
                        "code": "06",
                        "system": "https://mos.esante.gouv.fr/NOS/JDV_J221-NatureContact-ROR/FHIR/JDV-J221-NatureContact-ROR",
                        "display": "Standard"
                    }
                },
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level",
                    "valueCodeableConcept": {
                        "code": "1",
                        "system": "https://mos.esante.gouv.fr/NOS/JDV_J222-NiveauConfidentialite-ROR/FHIR/JDV-J222-NiveauConfidentialite-ROR",
                        "display": "Accès libre"
                    }
                },
                {
                    "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact",
                    "extension": [
                        {
                            "url": "ror-telecom-communication-channel",
                            "valueCodeableConcept": {
                                "code": "2",
                                "system": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel",
                                "display": "Téléphone fixe"
                            }
                        },
                        {
                            "url": "telecomAddress",
                            "valueString": "01.01.01.01.02"
                        },
                        {
                            "url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level",
                            "valueCodeableConcept": {
                                "code": "1",
                                "system": "https://mos.esante.gouv.fr/NOS/JDV_J222-NiveauConfidentialite-ROR/FHIR/JDV-J222-NiveauConfidentialite-ROR",
                                "display": "Accès libre"
                            }
                        }
                    ]
                }
            ]
        }
    ]
}
```

#### Scénario 6 : Création d'un professionnel

**Description du scénario :** Afin de décrire son offre, un établissement ajoute un professionnel.

**Requête :**

```json
POST [BASE]/Practitioner
{	
	"resourceType": "Practitioner",
    "identifier": {
        "value": "XXX",
        "system": "urn:oid:1.2.250.1.71.4.2.1"
    },
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
    "specialty": [
        {
            "coding": {
                "system": "https://mos.esante.gouv.fr/NOS/JDV_J209-TypeSavoirFaire-ROR/FHIR/JDV-J209-TypeSavoirFaire-ROR",
                "code": "",
                "display": ""
            }
        }
    ],
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