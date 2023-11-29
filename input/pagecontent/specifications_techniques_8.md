<!-- ## 3.10	Recherche d'offre sur la base d'informations tarifaires -->
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

<table width="680">
<tbody>
<tr>
<td width="90">
<p><strong>Interaction FHIR</strong></p>
</td>
<td width="589">
<p>Search<a href="#_ftn1" name="_ftnref1">[1]</a></p>
</td>
</tr>
<tr>
<td width="90">
<p><strong>M&eacute;thode http associ&eacute;e</strong></p>
</td>
<td width="589">
<p>GET</p>
</td>
</tr>
<tr>
<td width="90">
<p><strong>Ressource recherch&eacute;e</strong></p>
</td>
<td width="589">
<p>HealthcareService</p>
</td>
</tr>
<tr>
<td width="90">
<p><strong>Construction requ&ecirc;te de base</strong></p>
</td>
<td width="589">
<p>GET [base]/HealthcareService{?[parameters]{&amp;_format=[mime-type]}}</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="http://hl7.org/fhir/R4/http.html#search">http://hl7.org/fhir/R4/http.html#search</a> et <a href="http://hl7.org/fhir/R4/http.html#general">http://hl7.org/fhir/R4/http.html#general</a></p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <http://hl7.org/fhir/R4/bundle.html>

Si la recherche est un succès, le serveur répond :

-   Un header avec un code 200 OK HTTP

-   Un body contenant une ressource [Bundle](http://hl7.org/fhir/R4/bundle.html) dont le type = searchset.\ Le bundle encapsule 0 à n ressources HealthcareService corespondant aux critères de recherche plus les ressources incluses correspondant aux critères de recherche.\ Le service développé renvoie les 200 premiers résultats et indique le total trouvé dans une balise \"total\". Dans le cas où il n'y a pas de résultat le service renvoie \"total\": 0.

Remarque : la recherche est un succès à partir du moment où la requête peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR : <http://hl7.org/fhir/R4/http.html>

#### Réponse de base -- Echec

Lien vers la spécification FHIR : <http://hl7.org/fhir/R4/operationoutcome.html>

Si la recherche échoue, le serveur doit répondre :

-   Un header avec un un code erreur HTTP 4XX ou 5XX

-   Un body contenant une ressource [OperationOutcome]( http://hl7.org/fhir/R4/operationoutcome.html) qui donne les détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la requête, ce qui est différent d'aucune correspondance à la recherche. Plus de précision sur la spécification FHIR : <http://hl7.org/fhir/R4/http.html>

### Critères de recherche

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-healthcareservice), de **StructureDefinition-ror-healthcareservice** applicables à ce cas d'usage sont :

<table>
<tbody>
<tr>
<td width="230">
<p>identifier</p>
</td>
<td width="230">
<p>&nbsp;</p>
</td>
<td width="230">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>

-   Les critères de recherche, définis au [paragraphe dédié](search_param.html#structuredefinition-ror-organization), de **StructureDefinition-ror-organization** applicables à ce cas d'usage sont :

<table>
<tbody>
<tr>
<td width="230">
<p>price-type</p>
</td>
<td width="230">
<p>price-amount-value</p>
</td>
<td width="230">
<p>price-amount-currency</p>
</td>
</tr>
<tr>
<td width="230">
<p>price-residential-type</p>
</td>
<td width="230">
<p>price-special-price</p>
</td>
<td width="230">
<p>price-dependency-level</p>
</td>
</tr>
<tr>
<td width="230">
<p>price-welcome-type</p>
</td>
<td width="230">
<p>price-validity-start-date</p>
</td>
<td width="230">
<p>price-unit</p>
</td>
</tr>
</tbody>
</table>

Ces critères de recherche sont applicables à la ressource HealthcareService, grâce au [chainage](http://hl7.org/fhir/R4/search.html#chaining). Pour cela utiliser la syntaxe suivante : `organization.[NOM CRITERE]`

### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes décrits dans le [paragraphe dédié](modifiers.html) applicables à ce cas d'usage sont :
-   \_include
-   \_sort
-   Tous les prefixes de comparaison

### Exemple de requêtes

#### Scénario 1 : Recherche sur critères tarifaires #1

**Description du scénario :** Un consommateur recherche les offres d'établissements dont le type de tarifs = 02 \| forfait socle hébergement (TRE_R246-TypeTarif), le montant est inférieur à X euros, pour la date de début de validité la plus récente.

**Requête :**

```
GET [BASE]/HealthcareService?organization.price-type=https://mos.esante.gouv.fr/NOS/TRE_R246-TypeTarif/FHIR/TRE-R246-TypeTarif|02&organization.price-amount-value=ltX&organization.price-amount-currency=http://hl7.org/fhir/ValueSet/currencies|EUR&_sort=-organization.price-validity-start-date&_include=Healthcareservice:location
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?organization.price-type=https://mos.esante.gouv.fr/NOS/TRE_R246-TypeTarif/FHIR/TRE-R246-TypeTarif|02 #critère de recherche sur le type de tarif
&organization.price-amount-value=ltX #critère de recherche sur la valeur du montant 
&organization.price-amount-currency=http://hl7.org/fhir/ValueSet/currencies|EUR #critère de recherche sur la devise du montant 
&_sort=-organization.price-validity-start-date #modificateur de requête pour trier par date de début de validité décroissante (du plus récent au moins récent)
&_include=Healthcareservice:location  #inclus les Location qui sont référencés par les HealthcareService
```

#### Scénario 2 : Recherche sur critères tarifaires #2

**Description du scénario :** Un consommateur recherche les offres d'établissements dont le type de tarifs = 02 \| forfait socle hébergement (TRE_R246-TypeTarif), le montant est inférieur ou égal à X euros, le type habitation = 03 \| F1 (TRE_R242-TypeHabitation), les conditions tarifaires = 03 \| tarif agréé ASH
(TRE_R250-ConditionTarifaire).

**Requête :**

```
GET [BASE]/HealthcareService?organization.price-type=https://mos.esante.gouv.fr/NOS/TRE_R246-TypeTarif/FHIR/TRE-R246-TypeTarif|02&organization.price-amount-value=leX&organization.price-amount-currency=http://hl7.org/fhir/ValueSet/currencies|EUR&organization.price-residential-type=https://mos.esante.gouv.fr/NOS/TRE_R242-TypeHabitation/FHIR/TRE-R242-TypeHabitation|03&organization.price-special-price=https://mos.esante.gouv.fr/NOS/TRE_R250-ConditionTarifaire/FHIR/TRE-R250-ConditionTarifaire|03&_include=Healthcareservice:location
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?organization.price-type=https://mos.esante.gouv.fr/NOS/TRE_R246-TypeTarif/FHIR/TRE-R246-TypeTarif|02 #critère de recherche sur le type de tarif
&organization.price-amount-value=ltX #critère de recherche sur la valeur du montant 
&organization.price-amount-currency=http://hl7.org/fhir/ValueSet/currencies|EUR #critère de recherche sur la devise du montant 
&organization.price-residential-type=https://mos.esante.gouv.fr/NOS/TRE_R242-TypeHabitation/FHIR/TRE-R242-TypeHabitation|03 #critère de recherche le type habitation
&organization.price-special-price=https://mos.esante.gouv.fr/NOS/TRE_R250-ConditionTarifaire/FHIR/TRE-R250-ConditionTarifaire|03 #critère de recherche sur les conditions tarifaires
&_include=Healthcareservice:location  #inclus les Location qui sont référencés par les HealthcareService
```

#### Scénario 3 : Recherche sur critères tarifaires #3

**Description du scénario :** Un consommateur recherche les offres d'établissements dont type de tarifs = 03 \| dépendance (TRE_R246-TypeTarif), le montant est inférieur à X euros, le niveau de dépendance = 02 \| GIR 3-4 (TRE_R237-GroupeTarifaireDependance), la temporalité d\'accueil (au niveau du tarif, pas de l\'offre opérationnelle) = 02 \| permanent (TRE-R240-TemporaliteAccueil).

**Requête :**

```
GET [BASE]/HealthcareService?organization.price-type=https://mos.esante.gouv.fr/NOS/TRE_R246-TypeTarif/FHIR/TRE-R246-TypeTarif|03&organization.price-amount-value=ltX&organization.price-amount-currency=http://hl7.org/fhir/ValueSet/currencies|EUR&organization.price-dependency-level=https://mos.esante.gouv.fr/NOS/TRE_R237-GroupeTarifaireDependance/FHIR/TRE-R237-GroupeTarifaireDependance|02&organization.price-welcome-type=https://mos.esante.gouv.fr/NOS/TRE_R240-TemporaliteAccueil/FHIR/TRE-R240-TemporaliteAccueil|02&_include=Healthcareservice:location
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?organization.price-type=https://mos.esante.gouv.fr/NOS/TRE_R246-TypeTarif/FHIR/TRE-R246-TypeTarif|03 #critère de recherche sur le type de tarif
&organization.price-amount-value=ltX #critère de recherche sur la valeur du montant 
&organization.price-amount-currency=http://hl7.org/fhir/ValueSet/currencies|EUR #critère de recherche sur la devise du montant 
&organization.price-dependency-level=https://mos.esante.gouv.fr/NOS/TRE_R237-GroupeTarifaireDependance/FHIR/TRE-R237-GroupeTarifaireDependance|02 #critère de recherche le niveau de dépendance
&organization.price-welcome-type=https://mos.esante.gouv.fr/NOS/TRE_R240-TemporaliteAccueil/FHIR/TRE-R240-TemporaliteAccueil|02 #critère de recherche la temporalité d’accueil
&_include=Healthcareservice:location #inclus les Location qui sont référencés par les HealthcareService
```