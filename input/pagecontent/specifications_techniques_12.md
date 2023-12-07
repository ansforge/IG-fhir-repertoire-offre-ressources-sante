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
```

#### Scénario 2 : Création de l'entité géographique d'un établissement

**Description du scénario :** Afin de décrire son offre, un établissement crée son entité géographique.

**Requête :**

```json
POST [BASE]/Organization
```

#### Scénario 3 : Création de l'organisation interne d'un établissement

**Description du scénario :** Afin de décrire son offre, un établissement crée son organisation interne.

**Requête :**

```json
POST [BASE]/Organization
```

#### Scénario 4 : Création d'un professionnel

**Description du scénario :** Afin de décrire son offre, un établissement ajoute un professionnel.

**Requête :**

```json
POST [BASE]/Practitioner
```

#### Scénario 5 : Création d'une situation opérationnelle

**Description du scénario :** Afin de décrire son offre, un établissement ajoute une situation opérationnelle.

**Requête :**

```json
POST [BASE]/PractitionerRole
```

#### Scénario 6 : Création d'une offre dans une unité fonctionnelle préexistante

**Description du scénario :** Un établissement ajoute une offre de consultation neurochirurgicale dans une unité fonctionnelle de consultation.

**Requête :**

```json
POST [BASE]/HealthcareService
```

#### Scénario 7 : Création d'une offre directement rattachée à l'établissement

**Description du scénario :** Un établissement ajoute une offre couvrant une autre zone d'intervention que les offres précédemment enregistrées.

**Requête :**

```json
POST [BASE]/HealthcareService
```