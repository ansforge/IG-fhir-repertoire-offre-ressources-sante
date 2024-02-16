<!-- ## Recherche d'offre sur critères principaux
<code><span style="background-color: #A6ACAF;color:white;font-weight:bold;font-size: x-large;">ROR 2.1</span></code> -->
### Construction de la requête de base

<table>
<tbody>
<tr>
<td width="141">
<p>Interaction FHIR</p>
</td>
<td width="538">
<p>Search<a href="#_ftn1" name="_ftnref1"><sup>[1]</sup></a></p>
</td>
</tr>
<tr>
<td width="141">
<p>M&eacute;thode http associ&eacute;e</p>
</td>
<td width="538">
<p>GET</p>
</td>
</tr>
<tr>
<td width="141">
<p>Ressource recherch&eacute;e</p>
</td>
<td width="538">
<p>HealthcareService</p>
</td>
</tr>
<tr>
<td width="141">
<p>Construction requ&ecirc;te de base</p>
</td>
<td width="538">
<p><code>GET [base]/HealthcareService{?[parameters]{&amp;_format=[mime-type]}}</code></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/R4/http.html#search">https://www.hl7.org/fhir/R4/http.html#search</a> et <a href="https://www.hl7.org/fhir/R4/http.html#general">https://www.hl7.org/fhir/R4/http.html#general</a></p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR :
[https://www.hl7.org/fhir/R4/bundle.html](https://www.hl7.org/fhir/R4/bundle.html)

Si la recherche est un succès, le serveur répond :

Un header avec un code 200 OK HTTP

Un body contenant une ressource [Bundle](https://www.hl7.org/fhir/R4/bundle.html) dont le type = searchset.
Le bundle encapsule 0 à n ressources HealthcareService corespondant aux
critères de recherche plus les ressources incluses correspondant aux
critères de recherche.
Le service développé renvoie les 200 premiers résultats et indique le
total trouvé dans une balise `total`. Dans le cas où il n'y a pas de
résultat le service renvoie `total`: 0.

Remarque : la recherche est un succès à partir du moment où la requête
peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR :
https://www.hl7.org/fhir/R4/http.html

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
[https://www.hl7.org/fhir/R4/operationoutcome.html](https://www.hl7.org/fhir/R4/operationoutcome.html)

Si la recherche échoue, le serveur doit répondre :

Un header avec un un code erreur HTTP 4XX ou 5XX

Un body contenant une ressource [OperationOutcome](https://www.hl7.org/fhir/R4/operationoutcome.html) qui donne les
détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
[https://www.hl7.org/fhir/R4/http.html]](https://www.hl7.org/fhir/R4/http.html)

### Critères de recherche

  Les critères de recherche applicables sont définis sur la page dédiée pour :
-    [StructureDefinition-ror-healthcareservice](search_param.html#structuredefinition-ror-healthcareservice)
-    [Structuredefinition-ror-organization](search_param.html#structuredefinition-ror-organization) (critères de recherche applicables à la ressource HealthcareService, grâce au [chainage](https://www.hl7.org/fhir/R4/search.html#chaining). Pour cela utiliser la syntaxesuivante : `organization.[NOM CRITERE]`)
-    [StructureDefinition-ror-location](search_param.html#structuredefinition-ror-location) (critères de recherche applicables à la ressource HealthcareService, grâce au [chainage](https://www.hl7.org/fhir/R4/search.html#chaining). Pour cela utiliser la syntaxesuivante : `location.[NOM CRITERE]`)
-    [StructureDefinition-ror-practioner](search_param.html#structuredefinition-ror-practioner) (critères de recherche applicables à la ressource HealthcareService, grâce au [chainage](https://www.hl7.org/fhir/R4/search.html#has). Pour cela utiliser la syntaxe suivante : `_has:PractitionerRole:service:_has:PractitionerRole:practitioner:[NOM CRITERE]`)
-    [StructureDefinition-ror-practionerrole](search_param.html#structuredefinition-ror-practionerrole) (critères de recherche applicables à la ressource HealthcareService, grâce au [chainage](https://www.hl7.org/fhir/R4/search.html#has). Pour cela utiliser la syntaxe suivante : `_has:PractitionerRole:service:[NOM CRITERE]`)
-    [StructureDefinition-ror-task](search_param.html#structuredefinition-ror-task) (critères de recherche applicables à la ressource HealthcareService, grâce au [chainage inversé](https://www.hl7.org/fhir/R4/search.html#has). Pour cela utiliser la syntaxe suivante : `_has:HealthcareService:focus:[NOM CRITERE]`)

**En complément, vous pouvez accéder aux Capability Statements [ici](artifacts.html#behavior-capability-statements)**

### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes sont décrits [ici](modifiers.html).

### Exemple de requêtes

#### Scénario 1 : Recherche sur un critère en saisissant une valeur

**Description du scénario :** Un consommateur cherche les offres ayant une activité opérationnelle qui correspond à l’unique valeur recherchée par le consommateur.

**Exemple :** Recherche des offres caractérisées par l’activité opérationnelle « 227 - Pédopsychiatrie infanto-juvénile »

**Requête :**

```
GET [BASE]/HealthcareService?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|227&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|227 #critère de recherche sur l’activité opérationnelle
&_include=HealthcareService:organization #inclus les Organization référencées par HealthcareService 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par HealthcareService
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 2 : Recherche sur un critère en saisissant une liste de valeur

**Description du scénario :** Un consommateur cherche les offres ayant une activité opérationnelle qui correspond à l’une des valeurs recherchées par le consommateur.

**Exemple :** Recherche des offres caractérisées par l’activité opérationnelle « 005 – Allergologie » ou l’activité opérationnelle « 481 - Médecine générale à orientation Allergologie ».

**Requête :**

```
GET [BASE]/HealthcareService?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|005,481&__include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|005,481 #critère de recherche sur l’activité opérationnelle
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Servicen
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole

```
#### Scénario 3 : Recherche multicritères #1 - ET

**Description du scénario :** Un consommateur cherche les offres ayant un type d’offre ET une modalité d’accueil qu’il indique.

**Exemple :** Recherche des offres caractérisées par un type d’offre « 50 – Institut thérapeutique éducatif et pédagogique (ITEP)» et une modalité d’accueil « 01 – Accueil séquentiel accepté »

**Requête :**

```
GET [BASE]/HealthcareService?service-category=https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|50&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil|01&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**
```sh
GET [BASE]/HealthcareService?service-category=https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|50 #critère de recherche sur le type d’offre
& characteristic=https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil|01 #critère de recherche sur la modalité d’accueil
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 4 : Recherche multicritères #2 - OU

**Description du scénario :** Un consommateur cherche les offres ayant un type d’offre OU une activité opérationnelle qu’il indique pour un patient d'âge donné.

**Exemple :** Recherche des offres caractérisées par le type d’offre « 102 - Soins Médicaux et de Réadaptation (SMR) locomoteur » OU une activité opérationnelle « 233 - Réadaptation des affections de l'appareil locomoteur » pour un patient de 35 ans.(age-range-low <=35 et age-range-high >=35)

**Requête :**

```
GET [BASE]/HealthcareService?_filter=(((service-category eq https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|102) or (specialty eq https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|233)) and (age-range-low le 35|https://unitsofmeasure.org|a and age-range-high ge 35|https://unitsofmeasure.org|a))&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?_filter=(((service-category eq https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|102) or (specialty eq https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|233)) #critère de recherche sur l’activité opérationnelle OU (or) sur la catégorie d’organisation
and (age-range-low le 35|https://unitsofmeasure.org|a and age-range-high ge 35|https://unitsofmeasure.org|a)) #critère de recherche sur l'age du patient
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 5 : Recherche multicritère #3 -- ET/OU

**Description du scénario :** un consommateur recherche les offres ayant **(** une catégorie d'établissement = XXX de TRE-R66-CategorieEtablissement **OU** type d'offre = YYY de TRE_R244-CategorieOrganisation **)** **ET** un acte spécifique = ZZZ (TRE-R210-ActeSpecifique).

**Requête :**

```
GET [BASE]/HealthcareService?_filter=((organization.type eq https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement|XXX) or (service-category eq https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|YYY))&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique|ZZZ&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?_filter=((organization.type eq https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement|XXX) or (service-category eq https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|YYY)) #critère de recherche sur l’acte spécifique OU sur la catégorie d’organisation
&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique|ZZZ #critère sur l’acte spécifique
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 6 : Recherche à proximité géographique

**Description du scénario :** Un consommateur cherche les offres ayant une activité opérationnelle particulière, dans un périmètre géographique proche du lieu de résidence d'un patient.

**Exemple :** Recherche des offres caractérisées par l’activité opérationnelle « 013 – Cardiologie générale », située dans un rayon de 15 kilomètres autour de Saint-Herblain (code commune 44162)

**Requête 1 (near-insee-code) :**

```
GET [BASE]/HealthcareService?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|013&location.near-insee-code=44162|15|km&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête 1 expliquée (near_insee_code) :**

```sh
GET [BASE]/HealthcareService?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|013 #critère de recherche sur l’activité opérationnelle
&location.near-insee-code=44162|15|km #critère de périmètre géographique – paramètre chainé – exemple : YY km autour du point de référence latitude et longitude dont le système de référence est WGS84 
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
<blockquote class="stu-note">
<p>
  <b>Particularité sur "Calculated Distance"</b>
  <br>
L'extension <a href="https://www.hl7.org/fhir/R4/extension-location-distance.html" target="_blank">https://www.hl7.org/fhir/R4/extension-location-distance.html</a> de <code>Bundle.entry.search</code> est utilisée dans l'implémentation du ROR, afin de remonter cette information.
<br>
Exemple :
</p>
</blockquote>

```json
{
  "resourceType": "Bundle",
  "id": "ce99d34c-667f-4c6e-a116-49e69bb5f7b0",
  "type": "searchset",
  "total": 1,
  "entry": [
    {
      "fullUrl": "https://api.rordev.esante.gouv.fr/ws-diffusion-fhir/HealthcareService/508875",
      "resource": {
        "resourceType": "HealthcareService",
        "id": "508875",
        "location": [
          {
            "reference": "Location/252467"
          },
          ...
        ]
      },
      "search": {
        "mode": "match"
      }
    },
    {
      "fullUrl": "https://api.rordev.esante.gouv.fr/ws-diffusion-fhir/Location/252467",
      "resource": {
        "resourceType": "Location",
        "id": "252467",
        ...
      },
      "search": {
        "mode": "include",
        "extension": [
          {
            "url": "http://hl7.org/fhir/StructureDefinition/location-distance",
            "valueDistance": {
              "value": 10.5,
              "unit": "km"
            }
          }
        ]
      }
    }
  ]
}
```


**Requête 2 (near) :**

```
GET [BASE]/HealthcareService?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|013&location.near=47.21827323906432|-1.6369631507460436|15|km&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête 2 expliquée (near):**
```sh
GET [BASE]/HealthcareService?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|013 #critère de recherche sur l’activité opérationnelle
&location.near=47.21827323906432|-1.6369631507460436|15|km #critère de périmètre géographique – paramètre chainé – exemple : YY km autour du point de référence latitude et longitude dont le système de référence est WGS84 
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```


#### Scénario 7 : Recherche sur une zone d'intervention <code><span style="color: #ff0000;">draft</span></code>

**Description du scénario :** Un consommateur cherche les offres ayant un type d'offre particulier et une activité opérationnelle particulière, dans une commune faisant partie d'une zone d'intervention.

**Exemple :** Recherche des offres caractérisées par le type d'offre « 30 – Service d’aide et d’accompagnement à domicile (SAAD) », proposant une activité opérationnelle de type « 293 - Accompagnements pour accomplir les activités domestiques » et ayant la commune 29151 dans la zone d’intervention. 


**Requête :**

```
GET [BASE]/HealthcareService?intervention-zone=https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM|29151&specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|293&service-category=https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|30&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?intervention-zone=https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM|29151 #critère de recherche sur la commune faisant partie d’une zone d’intervention
&service-category=https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|30 #critère sur le type d'offre
&specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|293 #critère de recherche sur l’activité opérationnelle
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 8 : Recherche sur un département

**Description du scénario :** Un consommateur recherche les offres ayant un type d'offre, un mode de prise en charge et une spécialisation de prise en charge, sur un département, ou un ensemble de département (code postal).

**Exemple :** Recherche des offres caractérisées par le type d'offre "21 - Accueil ou hébergement pour personnes âgées dépendantes, sans spécificité » proposant un mode de prise en charge « 46 – Accueil de jour » et une spécialisation de prise en charge « 24 - Handicap à prédominance cognitive avec trouble du comportement (dont traumatisé crânien, syndrome de Korsakoff,...)» et située dans le département 71.



**Requête :**

```
GET [BASE]/HealthcareService?location.address-postalcode=71&service-category=https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|21&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge|46&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R245-SpecialisationDePriseEnCharge/FHIR/TRE-R245-SpecialisationDePriseEnCharge|24&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?location.address-postalcode=71 # critère de recherche sur un département ou un ensemble de département (2 premier chiffres du code postal)
&service-category=https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|21 #critère sur le type d'offre
&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge|46 #critère de recherche sur le mode de prise en charge
&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R245-SpecialisationDePriseEnCharge/FHIR/TRE-R245-SpecialisationDePriseEnCharge|24 #critère de recherche sur la spécialisation de prise en charge
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```

#### Scénario 9 : Recherche sur une ville #1 -- Code Postal

**Description du scénario :** Un consommateur recherche les offres proposant une activité opérationnelle particulière et un acte spécifique particulier sur une ville, ou un ensemble de villes (code postal).

**Exemple :** Recherche des offres caractérisées par l’activité opérationnelle «017 – Chirurgie de l'obésité (bariatrique) » et proposant l’acte spécifique «0529 - Pose d'anneau gastrique » sur les communes dont le code postal est 60000 (Frocourt) ou 76620 (Le Havre). 

**Requête :**

```
GET [BASE]/HealthcareService?location.address-postalcode=60000,76620&specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|017&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique|0529&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?location.address-postalcode=60000,76620 #critère de recherche sur une ville ou un ensemble de ville en rentrant le code postal 
&specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|017 #critère de recherche sur l'activité opérationnelle
&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique|0529 #critère de recherche sur l'acte spécifique
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 10 : Recherche sur une ville #2 -- Code commune

**Description du scénario :** Un consommateur recherche les offres proposant une activité opérationnelle particulière et un mode de prise en charge particulier, sur une ville, ou un ensemble de villes (code commune).

**Exemple :** Recherche des offres caractérisées par l’activité opérationnelle « 437 – médecine générale » et un mode de prise en charge « 032 – Consultation », sur les communes 18000 (Bourges) ou 13013 (Belcodène)

**Requête 1 (_filter):**

```
GET [BASE]/HealthcareService?_filter=(location.commune-cog eq https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM|18000 OR location.commune-cog eq https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM|13013)&specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|437&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge|032&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```


**Requête 1 expliquée (_filter) :**

```sh
GET [BASE]/HealthcareService?_filter=(location.commune-cog eq https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM|18000 OR location.commune-cog eq https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM|13013) #critere de recherche sur une ville ou un ensemble de ville via le code commune
&specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|437  #critère de recherche sur l'activité opérationnelle
&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge|032  #critère de recherche sur le mode de prise en charge
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```

**Requête 2 :**
```
GET [BASE]/HealthcareService?location.commune-cog=https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM|18000,13013&specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|437&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge|032&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner&_include=HealthcareService:organization&_include:iterate=Organization:partof
```

**Requête 2 expliquée :**
```sh
GET [BASE]/HealthcareService?location.commune-cog=https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM|18000,13013 #critere de recherche sur une ville ou un ensemble de ville via le code commune
&specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|437  #critère de recherche sur l'activité opérationnelle
&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge|032  #critère de recherche sur le mode de prise en charge
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```


#### Scénario 11 : Recherche sur un critère du modèle d'exposition 3.0 du ROR

**Description du scénario :** un consommateur recherche les offres proposant une modalité d\'accueil = XX (TRE-R338-ModaliteAccueil) et un niveau d\'expertise (critères modèle 3.0) = YY (TRE_R253-TypeMaternite).

**Requête :**

```
GET [BASE]/HealthcareService?characteristic=https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil|XX&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R253-TypeMaternite/FHIR/TRE-R253-TypeMaternite|YY&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?characteristic=https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil|XX #critère de recherche sur la modalité d’accueil
& characteristic= https://mos.esante.gouv.fr/NOS/TRE_R253-TypeMaternite/FHIR/TRE-R253-TypeMaternite|YY #critère de recherche sur le niveau d’expertise
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```

#### Scénario 12 : Recherche d’offre en anomalie sur une région avec un statut à traiter ou à vérifier <code><span style="color: #ff0000;">draft</span></code>

<p style="background-color: #ffcccc; border:1px solid grey; padding: 5px; max-width: 790px;">
Cette partie de la spécification est en cours de construction.
</p>

**Description du scénario :** un responsable qualité recherche les offres en anomalie (c’est-à-dire des anomalies dont le businessStatus = 2 ou 10) de sa région = XX et ses données associées (organisation, professionnels, etc).

**Requête :**

```
GET [BASE]/HealthcareService?_tag=https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM|XX&_has:Task:focus:business-status=https://mos.esante.gouv.fr/NOS/TRE_RXXX-StatutAnomalie/FHIR/TRE-RXXX-StatutAnomalie|2,10&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner&_revinclude=Task:focus
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?_tag=https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM|XX #critère de recherche sur la région source
&_has:Task:focus:business-status=https://mos.esante.gouv.fr/NOS/TRE_RXXX-StatutAnomalie/FHIR/TRE-RXXX-StatutAnomalie|2,10 #anomalie active
&_include=HealthcareService:organization #inclus les Organization référencées par Healthcare Service 
&_include:iterate=Organization:partof #inclus TOUTES (iterate) les Organization liées aux Organization référencées par Healthcare Service
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
&_revinclude=Task:focus #inclus les Task qui référencent le HealthcareService
```
