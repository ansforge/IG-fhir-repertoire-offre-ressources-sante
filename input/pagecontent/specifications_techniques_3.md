<!-- ## Recherche d'offre sur critères principaux -->

### Caractéristiques de l'API

<table width="25%">
<tbody>
<tr>
<td width="45%">
<p><strong>Endpoint</strong></p>
</td>

<td width="54%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="45%">
<p><strong>Header</strong></p>
</td>
<td width="54%">
<p>Content-type&nbsp;:=Json + FHIR</p>
</td>
</tr>
<tr>
<td width="45%">
<p><strong>Encodage</strong></p>
</td>
<td width="54%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="45%">
<p><strong>Version FHIR</strong></p>
</td>
<td width="54%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="45%">
<p><strong>Version package</strong></p>
</td>
<td width="54%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="45%">
<p><strong>Publication</strong></p>
</td>
<td width="54%">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>

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
<p><code>GET[base]/HealthcareService{?[parameters]{&amp;_format=[mime-type]}}</code></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/http.html#search">https://www.hl7.org/fhir/http.html#search</a> et <a href="https://www.hl7.org/fhir/http.html#general">https://www.hl7.org/fhir/http.html#general</a></p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR :
[[https://www.hl7.org/fhir/bundle.html]{.underline}](https://www.hl7.org/fhir/bundle.html)

Si la recherche est un succès, le serveur répond :

Un header avec un code 200 OK HTTP

Un body contenant une ressource [Bundle](https://www.hl7.org/fhir/bundle.html) dont le type = searchset.
Le bundle encapsule 0 à n ressources HealthcareService corespondant aux
critères de recherche plus les ressources incluses correspondant aux
critères de recherche.
Le service développé renvoie les 200 premiers résultats et indique le
total trouvé dans une balise `total`. Dans le cas où il n'y a pas de
résultat le service renvoie `total`: 0.

Remarque : la recherche est un succès à partir du moment où la requête
peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR :
https://www.hl7.org/fhir/http.html

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
[[https://www.hl7.org/fhir/operationoutcome.html]{.underline}](https://www.hl7.org/fhir/operationoutcome.html)

Si la recherche échoue, le serveur doit répondre :

Un header avec un un code erreur HTTP 4XX ou 5XX

Un body contenant une ressource [OperationOutcome](https://www.hl7.org/fhir/operationoutcome.html) qui donne les
détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
[[https://www.hl7.org/fhir/http.html]{.underline}](https://www.hl7.org/fhir/http.html)

### Critères de recherche

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-healthcareservice), de
    **StructureDefinition-ror-healthcareservice** applicables à ce cas
    d'usage sont :
<table>
<tbody>
<tr>
<td width="230">
<p>age-range-high</p>
</td>
<td width="230">
<p>name</p>
</td>
<td width="230">
<p>specific-competence</p>
</td>
</tr>
<tr>
<td width="230">
<p>age-range-low</p>
</td>
<td width="230">
<p>psychiatric-sector</p>
</td>
<td width="230">
<p>speciality</p>
</td>
</tr>
<tr>
<td width="230">
<p>characteristic</p>
</td>
<td width="230">
<p>service-category</p>
</td>
<td width="230">
<p>patient-type</p>
</td>
</tr>
<tr>
<td width="230">
<p>intervention-zone</p>
</td>
<td width="230">
<p>service-type</p>
</td>
<td width="230">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-organization), de
    **StructureDefinition-ror-organization** applicables à ce cas
    d'usage sont :
<table>
<tbody>
<tr>
<td width="230">
<p>closing-type</p>
</td>
<td width="230">
<p>identifier</p>
</td>
<td width="230">
<p>type</p>
</td>
</tr>
<tr>
<td width="230">
<p>drop-zone</p>
</td>
<td width="230">
<p>period-end</p>
</td>
<td width="230">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>

Ces critères de recherche sont applicables à la ressource
HealthcareService, grâce au [chainage](https://www.hl7.org/fhir/search.html#chaining). Pour cela utiliser la syntaxe
suivante : `organization.[NOM CRITERE]`

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-location), de
    **StructureDefinition-ror-location** applicables à ce cas d'usage
    sont :
<table>
<tbody>
<tr>
<td width="230">
<p>_tag</p>
</td>
<td width="230">
<p>commune-cog</p>
</td>
<td width="230">
<p>near</p>
</td>
</tr>
<tr>
<td width="230">
<p>address-postalcode</p>
</td>
<td width="230">
<p>equipment-type</p>
</td>
<td width="230">
<p>near-insee-code</p>
</td>
</tr>
</tbody>
</table>

Ces critères de recherche sont applicables à la ressource
HealthcareService, grâce au chainage. Pour cela utiliser la syntaxe
suivante : `location.[NOM CRITERE]`

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-task), de
    **StructureDefinition-ror-task** applicables à ce cas d'usage
    sont :
<table>
<tbody>
<tr>
<td width="228">
<p>business-status*</p>
</td>
<td width="226">
<p>_id</p>
</td>
<td width="226">
<p>_lastUpdated*</p>
</td>
</tr>
<tr>
<td width="228">
<p>Identifier*</p>
</td>
<td width="226">
<p>authored-on*</p>
</td>
<td width="226">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
*<i>Critères de recherche qui seront applicables ultérieurement</i>

Ces critères de recherche sont applicables à la ressource HealthcareService, grâce au [chainage inversé](https://www.hl7.org/fhir/search.html#has). Pour cela utiliser la syntaxe suivante : `_has:HealthcareService:focus:[NOM CRITERE]`


### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes décrits au [paragraphe dédié](modifiers.html)
applicables à ce cas d'usage sont :

-   \_revinclude, \_include, :iterate

-   \_has, \_count, \_sort

-   Tous les préfixes de comparaison

### Exemple de requêtes

#### Scénario 1 : Recherche sur un critère en saisissant une valeur

**Description du scénario :** un consommateur cherche les offres ayant\ une activité opérationnelle = XXX.

**Requête :**

```
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX #critère de recherche sur l’activité opérationnelle
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par HealthcareService
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 2 : Recherche sur un critère en saisissant une liste de valeur

**Description du scénario :** un consommateur cherche les offres ayant à une activité opérationnelle = XXX ou YYY (TRE_R211-ActiviteOperationnelle).

**Requête :**

```
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX,YYY&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX,YYY #critère de recherche sur l’activité opérationnelle
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole

```
#### Scénario 3 : Recherche multicritères #1 - ET

**Description du scénario :** un consommateur cherche les offres ayant un type d'offre = XXX (TRE_R244-CategorieOrganisation) **ET** une modalité d'accueil = YYY (TRE_R338-ModaliteAccueil).

**Requête :**

```
get[BASE]/HealthcareService?service-category= https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|XXX& characteristic= https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil|YYY&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**
```sh
get[BASE]/HealthcareService?service-category= https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|XXX#critère de recherche sur le type d’offre
& characteristic= https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil|YYY #critère de recherche sur la modalité d’accueil
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 4 : Recherche multicritères #2 - OU

**Description du scénario :** un consommateur cherche les offres ayant à un type d'offre = XXX (TRE_R244-CategorieOrganisation) **OU** une activité opérationnelle = YYY.
(TRE_R211-ActiviteOperationnelle)

**Requête :**

```
get[BASE]/HealthcareService?_filter=((service-category eq https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|XXX) or (speciality eq https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|YYY))&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?_filter=((service-category eq https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|XXX) or (speciality eq https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|YYY)) #critère de recherche sur l’activité opérationnelle OU (or) sur la catégorie d’organisation
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 5 : Recherche multicritère #3 -- ET/OU

**Description du scénario :** un consommateur recherche les offres ayant **(** une catégorie d'établissement = XXX de TRE-R66-CategorieEtablissement **OU** type d'offre = YYY de TRE_R244-CategorieOrganisation **)** **ET** un acte spécifique = ZZZ (TRE-R210-ActeSpecifique).

**Requête :**

```
get[BASE]/HealthcareService?_filter=((providedBy:type eq https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement|XXX) or (service-category eq https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|YYY))&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique|ZZZ&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?_filter=((providedBy:type eq https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement|XXX) or (service-category eq https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|YYY)) #critère de recherche sur l’acte spécifique OU sur la catégorie d’organisation
&characteristic=https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique|ZZZ #critère sur l’acte spécifique
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 6 : Recherche à proximité géographique

**Description du scénario :** un consommateur cherche les
offres ayant une activité opérationnelle = XXX (TRE_R211-ActiviteOperationnelle) dans un périmètre géographique proche du lieu de résidence d'un patient= à YY km de (latitude,longitude).

**Requête :**

```
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX&location:near=latitude|longitude |YY|unite &_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX #critère de recherche sur l’activité opérationnelle
&location:near=latitude|longitude|YY|unite #critère de périmètre géographique – paramètre chainé – exemple : YY km autour du point de référence latitude et longitude dont le système de référence est WGS84 
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 7 : Recherche sur une zone d'intervention

**Description du scénario :** un consommateur cherche les offres proposées dans une commune =XXX faisant partie d'une zone d'intervention.

**Requête :**

```
get[BASE]/HealthcareService?intervention-zone=XXX &_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?intervention-zone=XXX #critère de recherche sur la commune faisant partie d’une zone d’intervention
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 8 : Recherche sur un département

**Description du scénario :** un consommateur recherche les offres sur un département = XX.

**Requête :**

```
get[BASE]/HealthcareService?location:address-postalcode=XX&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?location:address-postalcode=XX # critère de recherche sur un département ou un ensemble de département (2 premier chiffres du code postal)
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```

#### Scénario 9 : Recherche sur une ville #1 -- Code Postal

**Description du scénario :** un consommateur recherche les offres sur un ensemble de villes (code postal) = XXXX ou YYYY.

**Requête :**

```
get[BASE]/HealthcareService?location:address=postalcode=XXXX,YYYY&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?location:address-postalcode=XXXX,YYYY#critère de recherche sur une ville ou un ensemble de ville en rentrant le code postal 
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 10 : Recherche sur une ville #2 -- Code commune

**Description du scénario :** un consommateur recherche les offres sur une ville (code communes) = XX.

**Requête :**

```
get[BASE]/HealthcareService?location:commune-cog=https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM|XX &_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?location:commune-cog=https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM|XX #critere de recherche sur une ville ou un ensemble de ville via le code commune
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```
#### Scénario 11 : Recherche sur un critère du modèle d'exposition 3.0 du ROR

**Description du scénario :** un consommateur recherche les offres proposant une modalité d\'accueil = XX (TRE-R338-ModaliteAccueil) et un niveau d\'expertise (critères modèle 3.0) = YY (TRE_R253-TypeMaternite).

**Requête :**

```
get[BASE]/HealthcareService?characteristic=https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil|XX&characteristic= https://mos.esante.gouv.fr/NOS/TRE_R253-TypeMaternite/FHIR/TRE-R253-TypeMaternite|YY&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?characteristic=https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil|XX #critère de recherche sur la modalité d’accueil
& characteristic= https://mos.esante.gouv.fr/NOS/TRE_R253-TypeMaternite/FHIR/TRE-R253-TypeMaternite|YY #critère de recherche sur le niveau d’expertise
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
```

#### Scénario 12 : Recherche d’offre en anomalie sur une région avec un statut à traiter ou à vérifier

<p style="background-color: #ffcccc; border:1px solid grey; padding: 5px; max-width: 790px;">
Cette partie de la spécification est en cours de construction.
</p>

**Description du scénario :** un responsable qualité recherche les offres en anomalie (c’est-à-dire des anomalies dont le businessStatus = 2 ou 10) de sa région = XX et ses données associées (organisation, professionnels, etc).

**Requête :**

```
get[BASE]/HealthcareService?_tag=https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM|XX&_has:Task:focus:business-status=https://mos.esante.gouv.fr/NOS/TRE_RXXX-StatutAnomalie/FHIR/TRE-RXXX-StatutAnomalie|2,10&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner&_revinclude=Task:focus
```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?_tag=https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM|XX #critère de recherche sur la région source
&_has:Task:focus:business-status=https://mos.esante.gouv.fr/NOS/TRE_RXXX-StatutAnomalie/FHIR/TRE-RXXX-StatutAnomalie|2,10 #anomalie active
&_include:iterate=HealthcareService:organization #inclus les Organization référencées par Healthcare Service ET les Organization référencées par les Organization
&_include=HealthcareService:location #inclus les Location référencées par Healthcare Service
&_revinclude=PractitionerRole:service #inclus les PractitionerRole qui référencent le HealthcareService
&_include=PractitionerRole:practitioner #inclus les Practitioner référencés par PractitionerRole
&_revinclude=Task:focus #inclus les Task qui référencent le HealthcareService
```
