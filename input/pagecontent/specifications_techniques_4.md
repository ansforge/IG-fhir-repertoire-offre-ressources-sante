<!-- ## Recherche d'offre avec données capacitaires -->

### Caractéristiques de l'API
<table width="100%">
<tbody>
<tr>
<td width="18%">
<p>Endpoint</p>
</td>
<td width="81%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="18%">
<p>Header</p>
</td>
<td width="81%">
<p>Content-type&nbsp;:=Json + FHIR</p>
</td>
</tr>
<tr>
<td width="18%">
<p>Encodage</p>
</td>
<td width="81%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="18%">
<p>Version FHIR</p>
</td>
<td width="81%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="18%">
<p>Version package</p>
</td>
<td width="81%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="18%">
<p>Publication</p>
</td>
<td width="81%">
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

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/bundle.html>

Si la recherche est un succès, le serveur répond :

Un header avec un code 200 OK HTTP

Un body contenant une ressource [Bundle]( https://www.hl7.org/fhir/bundle.html) dont le type = searchset. Le bundle encapsule 0 à n ressources HealthcareService corespondant aux critères de recherche plus les ressources incluses correspondant aux critères de recherche. Le service développé renvoie les 200 premiers résultats et indique le total trouvé dans une balise `total`. Dans le cas où il n'y a pas de résultat le service renvoie `total`: 0.

Remarque : la recherche est un succès à partir du moment où la requête
peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR :
https://www.hl7.org/fhir/http.html

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
[https://www.hl7.org/fhir/operationoutcome.html](https://www.hl7.org/fhir/operationoutcome.html)

Si la recherche échoue, le serveur doit répondre :

Un header avec un un code erreur HTTP 4XX ou 5XX

Un body contenant une ressource OperationOutcome qui donne les
détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
[https://www.hl7.org/fhir/http.html](https://www.hl7.org/fhir/http.html)

### Critères de recherche

-   Les critères de recherche, définis au [paragraphe dédié](./specifications_techniques.html#structuredefinition-ror-healthcareservice), de
    **StructureDefinition-ror-healthcareservice** applicables à ce cas
    d'usage sont :
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

-   Les critères de recherche, définis au [paragraphe dédié](./specifications_techniques.html#structuredefinition-ror-location), de
    **StructureDefinition-ror-location** applicables à ce cas d'usage
    sont :
<table>
<tbody>
<tr>
<td width="230">
<p>address-postalcode</p>
</td>
<td width="230">
<p>capacity-type</p>
</td>
<td width="230">
<p>type</p>
</td>
</tr>
<tr>
<td width="230">
<p>adress-city</p>
</td>
<td width="230">
<p>equipment-type</p>
</td>
<td width="230">
<p>residential-type</p>
</td>
</tr>
<tr>
<td width="230">
<p>additional-bed-type</p>
</td>
<td width="230">
<p>equipment-feature</p>
</td>
<td width="230">
<p>residential-number</p>
</td>
</tr>
<tr>
<td width="230">
<p>crisis-type</p>
</td>
<td width="230">
<p>gender-capacity-available</p>
</td>
<td width="230">
<p>temporary-assignement</p>
</td>
</tr>
<tr>
<td width="230">
<p>capacity-closing-type</p>
</td>
<td width="230">
<p>limit-value</p>
</td>
<td width="230">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="230">
<p>capacity-update-date</p>
</td>
<td width="230">
<p>temporality-capacity</p>
</td>
<td width="230">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>

Ces critères de recherche sont applicables à la ressource
HealthcareService, grâce au chainage. Pour cela utiliser la syntaxe
suivante : `location:[NOM CRITERE]`

### Paramètres et modificateurs de requêtes FHIR

Tous les paramètres et modificateurs de requêtes décrits au paragraphe (à compléter)
sont applicables à ce cas d'usage.

### Exemple de requêtes

#### Scénario 1 : Recherche sur un critère capacitaire #1

**Description du scénario :** Un consommateur cherche les offres proposant une activité opérationnelle = XXX et disposant d\'un lit disponible = (02 (TRE-R330-StatutCapacite) et \>0 pour la quantité)

**Requête :**

`get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX&location:capacity-status= https://mos.esante.gouv.fr/NOS/TRE_R330-StatutCapacite/FHIR/TRE-R330-StatutCapacite|02&_revinclude=Location:healthcareservice`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX #critère de recherche sur l’activité opérationnelle
&location:capacity-status= https://mos.esante.gouv.fr/NOS/TRE_R330-StatutCapacite/FHIR/TRE-R330-StatutCapacite|02 #critère de recherche sur la disponibilité d’un lit
&_revinclude=Location:healthcareservice #inclus les Location qui référencent les HealthcareService
```
#### Scénario 2 : Recherche un critère capacitaire #2

**Description du scénario :** Un consommateur cherche les offres proposant une activité opérationnelle = XXX et disposant d\'un lit fermé réouvrable = 01 (TRE-R333-TypeFermetureCapacite)

**Requête :**

`get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX&location:capacity-closing-type= https://mos.esante.gouv.fr/NOS/TRE_R333-TypeFermetureCapacite/FHIR/TRE-R333-TypeFermetureCapacite|01&_revinclude=Location:healthcareservice`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX #critère de recherche sur l’activité opérationnelle
&location:capacity-closing-type=https://mos.esante.gouv.fr/NOS/TRE_R333-TypeFermetureCapacite/FHIR/TRE-R333-TypeFermetureCapacite|01 #critère de recherche sur le lit fermé réouvrable
&_revinclude=Location:healthcareservice #inclus les Location qui référencent les HealthcareService
```
#### Scénario 3 : Recherche sur un critère de l'équipement

**Description du scénario :** Un consommateur cherche une offre dont l'activité opérationnelle = chirurgie traumatologique (025 de
TRE-R211-ActiviteOperationnelle) proposant un appareil de radiologie adapté à l\'obésité du patient (83 de TRE-R212-Equipement)

**Requête :**

`get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|025&location:equipment-type= https://mos.esante.gouv.fr/NOS/TRE_R212-Equipement/FHIR/TRE-R212-Equipement|83&_revinclude=Location:healthcareservice`

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|025 #critère de recherche sur l’offre de chirurgie traumatologique
&location:equipment-type= https://mos.esante.gouv.fr/NOS/TRE_R212-Equipement/FHIR/TRE-R212-Equipement|83 #critère de recherche sur l’appareil de radiologie adapté à l’obésité du patient
&_revinclude=Location:healthcareservice #inclus les Location qui référencent les HealthcareService
```