<!-- ## 3.9	Création et Mise à jour du lieu de réalisation de l’offre
<code><span style="background-color: #58D68D;color:white;font-weight:bold;font-size: x-large;">ROR 2.3</span></code>-->
<code><span style="color: #ff0000;font-weight:bold;font-size: x-large;">draft</span></code>
<p style="background-color: #ffcccc; border:1px solid grey; padding: 5px; max-width: 790px;">
Cette partie de la spécification est en cours de construction et n'est pas implémentée. Elle est disponible, à titre d'information sur les travaux en cours au niveau du ROR National.
</p>

###  Construction de la requête de base
<table>
<tbody>
<tr>
<td width="215">
<p><strong>Interaction FHIR</strong></p>
</td>
<td width="465">
<p>Patch<a href="#_ftn1" name="_ftnref1">[1]</a> (limitée aux attributs de 'premier niveau'), Create<a href="#_ftn2" name="_ftnref2"><sup>[2]</sup></a></p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>M&eacute;thode http associ&eacute;e</strong></p>
</td>
<td width="465">
<p>PATCH, POST</p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>Ressource recherch&eacute;e</strong></p>
</td>
<td width="465">
<p>Location, HealthcareService</p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>Construction requ&ecirc;te de base</strong></p>
</td>
<td width="465">
<p><code>POST [base]/[type] {?_format=[mime-type]}</code></p>
<p><code>PATCH [base]/Location/[id]{&amp;_format=[mime-type]}</code></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://hl7.org/fhir/R4/http.html#patch">https://hl7.org/fhir/R4/http.html#patch</a> et <a href="http://hl7.org/fhir/R4/http.html#general">http://hl7.org/fhir/R4/http.html#general</a></p>
<p><a href="#_ftnref2" name="_ftn2">[2]</a> <a href="https://hl7.org/fhir/R4/http.html#create">https://hl7.org/fhir/R4/http.html#create</a> et <a href="http://hl7.org/fhir/R4/http.html#general">http://hl7.org/fhir/R4/http.html#general</a> &nbsp;</p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <http://hl7.org/fhir/R4/http.html>

Si la mise à jour est un succès, le serveur répond en renvoyant a minima :

-   Un header avec un code 200 OK HTTP.

-   Un header Last-Modified contenant la dernière date de mise à jour de la ressource mise à jour.

-   Un header ETag contenant le nouvel identifiant de version de la ressource mise à jour.

-   L'identifiant fonctionnel de la ressource mise à jour.

#### Réponse de base -- Echec

Lien vers la spécification FHIR : <http://hl7.org/fhir/R4/operationoutcome.html>

Si la mise à jour échoue, le serveur doit répondre :

-   Un header avec un un code erreur HTTP 4XX ou 5XX

-   Un body contenant une ressource [OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html) qui donne les détails sur la raison de l'échec

### Exemple de requêtes

#### [spécifique serveur] Scénario 1 : Ajout d'un lieu de réalisation de l'offre <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Un établissement ajoute dans un établissement (EG) existant, un lieu de réalisation de l\'offre de fonction \"001 \| hébergement\", associé à une offre opérationnelle existante dont l'identifiant est XXX, dans la communeCog de Versailles, avec une adresse 7 rue porte de Buc, 78000 Versailles.

**Requête :**

-   Création du nouveau lieu de réalisation de l'offre

```json
POST [BASE]/Location 
```
  {%include Location-ror-location-exemple.json.xhtml%}

-   Ajout de la référence au nouveau lieu créé (dont l'identifiant est YYY) dans la ressource de l'offre opérationnelle concernée

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
                    "valueString": "location"
                },
                {
                    "name": "value",
                    "part": [
                        {
                            "name": "reference",
                            "valueString": "Location/YYY" 
                        }
                    ]
                }
            ]
        }
    ]
}
```

#### [spécifique serveur] Scénario 2 : Ajout d'une capacité de prise en charge <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Un établissement (via bed management, \...) ajoute dans un lieu de réalisation de l\'offre existant dont l'identifiant est XXX, des données capacitaires pour une affectation temporaire : une affectation temporaire \"Covid +\", 2 lits disponibles (sexe indifférencié), à t0.

**Requête :**
```json
PATCH [BASE]/Location/XXX
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
                    "valueString": "Location"
                }, 
                {
                    "name": "extension",
                    "part": [ 
                        {
                            "name": "url",
                            "valueUri": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-location-supported-capacity"
                        },
                        {
                            "name": "extension",
                            "part": [
                                {
									"name": "url",
									"valueString": "temporaryAssignement"
								},
                                {
									"name": "value",
                                    "valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J195-AffectationTemporaire-ROR/FHIR/JDV-J195-AffectationTemporaire-ROR/",
												"code": "02",
												"display": "Covid+"
											}
										]
									}
                                },
                                {
									"name": "url",
									"valueString": "capacityType"
								},
								{
									"name": "value",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J187-NatureCapacite-ROR/FHIR/JDV-J187-NatureCapacite-ROR/",
												"code": "01",
												"display": "Lit"
											}
										]
									}
								},
                                {
									"name": "url",
									"valueString": "capacityStatus"
								},
								{
									"name": "value",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J188-TypeStatutCapacite-ROR/FHIR/JDV-J188-TypeStatutCapacite-ROR/",
												"code": "02",
												"display": "Disponible"
											}
										]
									}
								},
                                {
									"name": "url",
									"valueString": "temporalityCapacity"
								},
								{
									"name": "value",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J189-TemporaliteCapacite-ROR/FHIR/JDV-J189-TemporaliteCapacite-ROR/",
												"code": "01",
												"display": "Courant"
											}
										]
									}
								},
								{
									"name": "url",
									"valueString": "nbCapacity"
								},
								{
									"name": "value",
									"valueInt": "2"
								},
								{
									"name": "url",
									"valueString": "genderCapacityAvailable"
								},
								{
									"name": "value",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J190-GenreCapacite-ROR/FHIR/JDV-J190-GenreCapacite-ROR/",
												"code": "02",
												"display": "Indifférencié"
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

#### [spécifique serveur] Scénario 3 : Suppression d'une capacité d'accueil opérationnelle <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Un établissement (via bed management, ...) supprime dans un lieu de réalisation de l\'offre existant dont l'identifiant est XXX tous les enregistrements liés à l\'affectation temporaire \"Covid-\".

**Requête :**
```json
PATCH [BASE]/Location/XXX
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
                    "valueString": "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity' and extension.where(url='temporaryAssignement' and valueCodeableConcept.coding[0].code='02')).extension.where(url='nbCapacity')"
                },
                {
                    "name": "valueInteger",
                    "value": 0
                }
            ]
        }
    ]
}
```

#### [spécifique serveur] Scénario 4 : Mise à jour de l'adresse du lieu de réalisation de l'offre <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Un établissement modifie le numéro de voie de l'adresse (nouvelle valeur : YYY) du lieu de réalisation de l'offre dont l'identifiant est XXX.

**Requête :**
```json
PATCH [BASE]/Location/XXX
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
          				"valueString": "Location"
        			},	
		   		{
					"name": "extension",
					"part": [
			   			{
				   			"name": "url",
				   			"valueUri": "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
			   			},
					  	{
							"name": "value",
							"valueString": "YYY"
						}
					]
				}
			]
		 }
	]
}
```

#### [spécifique serveur] Scénario 5 : Ajout d'un équipement spécifique dans un lieu de réalisation de l'offre <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Ajout d'un équipement spécifique dans un lieu de réalisation de l'offre dont l'identifiant est XXX : 089 \| lit d\'hospitalisation obésité (poids entre 250 et 350 kg) - bariatrique, nb en service : 2, limite caractéristique équipement : 001 \| poids maximum, valeur limite = 300 kg.

**Requête :**
```json
PATCH [BASE]/Location/XXX
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
                    "valueString": "Location"
                }, 
                {
                    "name": "extension",
                    "part": [ 
                        {
                            "name": "url",
                            "valueUri": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-location-equipment"
                        },
                        {
                            "name": "extension",
                            "part": [
                                {
                                    "name": "url",
                                    "valueString": "equipmentType"
                                },
                                {
									"name": "value",
                                    "valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J18-EquipementSpecifique-ROR/FHIR/JDV-J18-EquipementSpecifique-ROR",
												"code": "089",
												"display": "Lit d'hospitalisation obésité (poids entre 250 et 350 kg) - bariatrique"
											}
										]
									}
                                },
                                {
									"name": "url",
									"valueString": "nbInService"
								},
								{
									"name": "value",
									"valueInteger": "2"
								}
                            ]	
						}		
					]
				},
                {
                    "name": "extension",
                    "part": [ 
                        {
                            "name": "url",
                            "valueUri": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-location-equipment-limit"
                        },
                        {
                            "name": "extension",
                            "part": [
                                {
									"name": "url",
									"valueString": "equipmentFeature"
								},
                                {
									"name": "value",
                                    "valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J228-TypeCaracteristiqueEquipement-ROR/FHIR/JDV-J228-TypeCaracteristiqueEquipement-ROR",
												"code": "001",
												"display": "Poids maximum"
											}
										]
									}
                                },
                                {
									"name": "url",
									"valueString": "limitValue"
								},
								{
									"name": "value",
									"quantity":  [
                                        {
                                            "value": "300",
                                            "unit": "kg"

                                        }
                                    ]
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

#### [spécifique serveur] Scénario 6 : Modification de la quantité d'équipements spécifiques dans un lieu de réalisation de l'offre <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Modification de la quantité d'équipements spécifiques dans un lieu de réalisation de l'offre dont l'identifiant est XXX : 089 \| lit d\'hospitalisation obésité (poids entre 250 et 350 kg) - bariatrique, nb en service : 3, limite caractéristique équipement : 001 \| poids maximum, valeur limite = 300 kg.

**Requête :**
```json
PATCH [BASE]/Location/XXX
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
                    "valueString": "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment' and extension.where(url='equipmentType' and valueCodeableConcept.coding[0].code='089') and extension.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit' and extension.where(url='limitValue' and valueQuantity.value=300 and valueQuantity.unit='kg') and extension.where(url='equipmentFeature' and valueCodeableConcept.coding[0].code='001'))).extension.where(url='nbInService')"
                },
                {
                    "name": "value",
                    "value": 3
                }
            ]
        }
    ]
}
```

#### [spécifique serveur] Scénario 7 : Suppression d'un équipement spécifique dans un lieu de réalisation de l'offre <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Un établissement indique qu'il ne dispose plus de l'échographe 3D, il modifie le nombre d'équipement en service : 030 \| Echographe 3D, nb en service : 0, aucune limite équipement associée.

**Requête :**
```json
PATCH [BASE]/Location/XXX
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
                    "valueString": "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment' and extension.where(url='equipmentType' and valueCodeableConcept.coding[0].code='030')).extension.where(url='nbInService')"
                },
                {
                    "name": "value",
                    "value": 0
                }
            ]
        }
    ]
}
```

#### [spécifique serveur] Scénario 8 : Modification de la valeur limite d'un équipement spécifique dans un lieu de réalisation de l'offre <code><span style="color: #ff0000;">draft</span></code>

*Cette requête ne pourra être exécutée que par le serveur.*

**Description du scénario :** Un établissement modifie la valeur limite d'un équipement spécifique dans un lieu de réalisation de l'offre dont l'identifiant est XXX : 089 \| lit d\'hospitalisation obésité (poids entre 250 et 350 kg) - bariatrique, nb en service : 2, limite caractéristique équipement : 001 \| poids maximum, valeur limite = 280 kg.

**Requête :**
```json
PATCH [BASE]/Location/XXX

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
                    "valueString": "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment' and extension.where(url='equipmentType' and valueCodeableConcept.coding[0].code='089') and extension.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit' and extension.where(url='equipmentFeature' and valueCodeableConcept.coding[0].code='001') and and extension.where(url='limitValue' and valueQuantity.value=300 and valueQuantity.unit='kg'))).extension.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit').extension.where(url='limitValue').valueQuantity.value"
                },
                {
                    "name": "value",
                    "part": [
				{
					"name": "value",
					"value": 280
				}
			]
                }
            ]
        }
    ]
}
```

#### [Bed Management] Scénario 9 : Remplacement de toutes les données capacitaires <code><span style="color: #ff0000;">draft</span></code>

*Ce scenario cible les éditeurs de solutions de bedmanagement.*

**Description du scénario :** Un établissement remplace toutes les données capacitaires (les anciennes données sont écrasées par les nouvelles).

**Exemple :**

<table align="center">
    <tr>
		<td align ="center">
            <b>Avant</b>
        </td>
        <td align ="center">
            <div class="figure">
				<img src="creation-maj-offre_scenario9_avant.png" title="Avant" width="1000">
            </div>
        </td>   
    </tr>
	    <tr>
		<td align ="center">
            <b>Après</b>
        </td>
        <td align ="center">
            <div class="figure">
				<img src="creation-maj-offre_scenario9_apres.png" title="Après" width="1000">
            </div>
        </td>    
    </tr>
</table>

**Requête recommandée (via id technique) :**
```json
PATCH [BASE]/Location/XXX

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
                    "valueString": "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity')"
                },
                {
                    "name": "value",
                    "part": [
						{
							"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity",
							"extension": [
								{
									"url": "temporaryAssignement",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J195-AffectationTemporaire-ROR/FHIR/JDV-J195-AffectationTemporaire-ROR/",
												"code": "01",
												"display": "Aucune"
											}
										]
									}
								},
								{
									"url": "capacityType",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J187-NatureCapacite-ROR/FHIR/JDV-J187-NatureCapacite-ROR/",
												"code": "01",
												"display": "Lit"
											}
										]
									}
								},
								{
									"url": "capacityStatus",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J188-TypeStatutCapacite-ROR/FHIR/JDV-J188-TypeStatutCapacite-ROR/",
												"code": "01",
												"display": "Installé"
											}
										]
									}
								},
								{
									"url": "temporalityCapacity",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J189-TemporaliteCapacite-ROR/FHIR/JDV-J189-TemporaliteCapacite-ROR/",
												"code": "01",
												"display": "Courant"
											}
										]
									}
								},
								{
									"url": "nbCapacity",
									"valueInt": "10"
								},
								{
									"url": "capacitySourceType",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J193-TypeSourceCapacite-ROR/FHIR/JDV-J193-TypeSourceCapacite-ROR/",
												"code": "02",
												"display": "Bed management"
											}
										]
									}
								},
								{
									"url": "capacityUpdateDate",
									"valueDateTime": "2023-09-25T15:20:00+01:00"
								}
							]
						},
						{
							"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity",
							"extension": [
								{
									"url": "temporaryAssignement",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J195-AffectationTemporaire-ROR/FHIR/JDV-J195-AffectationTemporaire-ROR/",
												"code": "01",
												"display": "Aucune"
											}
										]
									}
								},
								{
									"url": "capacityType",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J187-NatureCapacite-ROR/FHIR/JDV-J187-NatureCapacite-ROR/",
												"code": "01",
												"display": "Lit"
											}
										]
									}
								},
								{
									"url": "capacityStatus",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J188-TypeStatutCapacite-ROR/FHIR/JDV-J188-TypeStatutCapacite-ROR/",
												"code": "02",
												"display": "Disponible"
											}
										]
									}
								},
								{
									"url": "temporalityCapacity",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J189-TemporaliteCapacite-ROR/FHIR/JDV-J189-TemporaliteCapacite-ROR/",
												"code": "01",
												"display": "Courant"
											}
										]
									}
								},
								{
									"url": "nbCapacity",
									"valueInt": "6"
								},
								{
									"url": "capacitySourceType",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J193-TypeSourceCapacite-ROR/FHIR/JDV-J193-TypeSourceCapacite-ROR/",
												"code": "02",
												"display": "Bed management"
											}
										]
									}
								},
								{
									"url": "capacityUpdateDate",
									"valueDateTime": "2023-09-25T15:20:00+01:00"
								},
								{
									"url": "genderCapacityAvailable",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J190-GenreCapacite-ROR/FHIR/JDV-J190-GenreCapacite-ROR/",
												"code": "02",
												"display": "Homme"
											}
										]
									}
								}
							]
						}
						{
							"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity",
							"extension": [
								{
									"url": "temporaryAssignement",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J195-AffectationTemporaire-ROR/FHIR/JDV-J195-AffectationTemporaire-ROR/",
												"code": "01",
												"display": "Aucune"
											}
										]
									}
								},
								{
									"url": "capacityType",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J187-NatureCapacite-ROR/FHIR/JDV-J187-NatureCapacite-ROR/",
												"code": "01",
												"display": "Lit"
											}
										]
									}
								},
								{
									"url": "capacityStatus",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J188-TypeStatutCapacite-ROR/FHIR/JDV-J188-TypeStatutCapacite-ROR/",
												"code": "02",
												"display": "Disponible"
											}
										]
									}
								},
								{
									"url": "temporalityCapacity",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J189-TemporaliteCapacite-ROR/FHIR/JDV-J189-TemporaliteCapacite-ROR/",
												"code": "01",
												"display": "Courant"
											}
										]
									}
								},
								{
									"url": "nbCapacity",
									"valueInt": "4"
								},
								{
									"url": "capacitySourceType",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J193-TypeSourceCapacite-ROR/FHIR/JDV-J193-TypeSourceCapacite-ROR/",
												"code": "02",
												"display": "Bed management"
											}
										]
									}
								},
								{
									"url": "capacityUpdateDate",
									"valueDateTime": "2024-02-02T11:30:00+01:00"
								},
								{
									"url": "genderCapacityAvailable",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J190-GenreCapacite-ROR/FHIR/JDV-J190-GenreCapacite-ROR/",
												"code": "03",
												"display": "Indifférencié"
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


**Requête (via identifiant fonctionnel) :**
*Nous déconseillons l'utilisation du PATCH conditionnel en effet sa maturité en FHIR R4 est "trial use".*  
```json
PATCH [BASE]/Location?identifier=YYY

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
                    "valueString": "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity')"
                },
                {
                    "name": "value",
                    "part": [
						{
							"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity",
							"extension": [
								{
									"url": "temporaryAssignement",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J195-AffectationTemporaire-ROR/FHIR/JDV-J195-AffectationTemporaire-ROR/",
												"code": "01",
												"display": "Aucune"
											}
										]
									}
								},
								{
									"url": "capacityType",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J187-NatureCapacite-ROR/FHIR/JDV-J187-NatureCapacite-ROR/",
												"code": "01",
												"display": "Lit"
											}
										]
									}
								},
								{
									"url": "capacityStatus",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J188-TypeStatutCapacite-ROR/FHIR/JDV-J188-TypeStatutCapacite-ROR/",
												"code": "01",
												"display": "Installé"
											}
										]
									}
								},
								{
									"url": "temporalityCapacity",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J189-TemporaliteCapacite-ROR/FHIR/JDV-J189-TemporaliteCapacite-ROR/",
												"code": "01",
												"display": "Courant"
											}
										]
									}
								},
								{
									"url": "nbCapacity",
									"valueInt": "10"
								},
								{
									"url": "capacitySourceType",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J193-TypeSourceCapacite-ROR/FHIR/JDV-J193-TypeSourceCapacite-ROR/",
												"code": "02",
												"display": "Bed management"
											}
										]
									}
								},
								{
									"url": "capacityUpdateDate",
									"valueDateTime": "2023-09-25T15:20:00+01:00"
								}
							]
						},
						{
							"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity",
							"extension": [
								{
									"url": "temporaryAssignement",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J195-AffectationTemporaire-ROR/FHIR/JDV-J195-AffectationTemporaire-ROR/",
												"code": "01",
												"display": "Aucune"
											}
										]
									}
								},
								{
									"url": "capacityType",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J187-NatureCapacite-ROR/FHIR/JDV-J187-NatureCapacite-ROR/",
												"code": "01",
												"display": "Lit"
											}
										]
									}
								},
								{
									"url": "capacityStatus",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J188-TypeStatutCapacite-ROR/FHIR/JDV-J188-TypeStatutCapacite-ROR/",
												"code": "02",
												"display": "Disponible"
											}
										]
									}
								},
								{
									"url": "temporalityCapacity",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J189-TemporaliteCapacite-ROR/FHIR/JDV-J189-TemporaliteCapacite-ROR/",
												"code": "01",
												"display": "Courant"
											}
										]
									}
								},
								{
									"url": "nbCapacity",
									"valueInt": "6"
								},
								{
									"url": "capacitySourceType",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J193-TypeSourceCapacite-ROR/FHIR/JDV-J193-TypeSourceCapacite-ROR/",
												"code": "02",
												"display": "Bed management"
											}
										]
									}
								},
								{
									"url": "capacityUpdateDate",
									"valueDateTime": "2023-09-25T15:20:00+01:00"
								},
								{
									"url": "genderCapacityAvailable",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J190-GenreCapacite-ROR/FHIR/JDV-J190-GenreCapacite-ROR/",
												"code": "02",
												"display": "Homme"
											}
										]
									}
								}
							]
						}
						{
							"url": "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-supported-capacity",
							"extension": [
								{
									"url": "temporaryAssignement",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J195-AffectationTemporaire-ROR/FHIR/JDV-J195-AffectationTemporaire-ROR/",
												"code": "01",
												"display": "Aucune"
											}
										]
									}
								},
								{
									"url": "capacityType",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J187-NatureCapacite-ROR/FHIR/JDV-J187-NatureCapacite-ROR/",
												"code": "01",
												"display": "Lit"
											}
										]
									}
								},
								{
									"url": "capacityStatus",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J188-TypeStatutCapacite-ROR/FHIR/JDV-J188-TypeStatutCapacite-ROR/",
												"code": "02",
												"display": "Disponible"
											}
										]
									}
								},
								{
									"url": "temporalityCapacity",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J189-TemporaliteCapacite-ROR/FHIR/JDV-J189-TemporaliteCapacite-ROR/",
												"code": "01",
												"display": "Courant"
											}
										]
									}
								},
								{
									"url": "nbCapacity",
									"valueInt": "4"
								},
								{
									"url": "capacitySourceType",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J193-TypeSourceCapacite-ROR/FHIR/JDV-J193-TypeSourceCapacite-ROR/",
												"code": "02",
												"display": "Bed management"
											}
										]
									}
								},
								{
									"url": "capacityUpdateDate",
									"valueDateTime": "2024-02-02T11:30:00+01:00"
								},
								{
									"url": "genderCapacityAvailable",
									"valueCodeableConcept": {
										"coding": [
											{
												"system": "https://mos.esante.gouv.fr/NOS/JDV_J190-GenreCapacite-ROR/FHIR/JDV-J190-GenreCapacite-ROR/",
												"code": "03",
												"display": "Indifférencié"
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