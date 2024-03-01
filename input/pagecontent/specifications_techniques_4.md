<!-- ## Recherche d'offre avec données capacitaires
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

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/R4/bundle.html>

Si la recherche est un succès, le serveur répond :

Un header avec un code 200 OK HTTP

Un body contenant une ressource [Bundle]( https://www.hl7.org/fhir/R4/bundle.html) dont le type = searchset. Le bundle encapsule 0 à n ressources HealthcareService corespondant aux critères de recherche plus les ressources incluses correspondant aux critères de recherche. Le service développé renvoie les 200 premiers résultats et indique le total trouvé dans une balise `total`. Dans le cas où il n'y a pas de résultat le service renvoie `total`: 0.

Remarque : la recherche est un succès à partir du moment où la requête
peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR :
https://www.hl7.org/fhir/R4/http.html

#### Réponse de base -- Echec

Lien vers la spécification FHIR :
[https://www.hl7.org/fhir/R4/operationoutcome.html](https://www.hl7.org/fhir/R4/operationoutcome.html)

Si la recherche échoue, le serveur doit répondre :
-   Un header avec un un code erreur HTTP 4XX ou 5XX
-   Un body contenant une ressource OperationOutcome qui donne les
détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
[https://www.hl7.org/fhir/R4/http.html](https://www.hl7.org/fhir/R4/http.html)

## Critères de recherche

  Les critères de recherche applicables sont définis sur la page dédiée pour :
-    [StructureDefinition-ror-healthcareservice](search_param.html#structuredefinition-ror-healthcareservice)
-    [StructureDefinition-ror-location](search_param.html#structuredefinition-ror-location) (critères de recherche applicables à la ressource HealthcareService, grâce au [chainage](https://www.hl7.org/fhir/R4/search.html#chaining). Pour cela utiliser la syntaxesuivante : `location.[NOM CRITERE]`)
-    [StructureDefinition-ror-task](search_param.html#structuredefinition-ror-task) (critères de recherche applicables à la ressource HealthcareService, grâce au [chainage inversé](https://www.hl7.org/fhir/R4/search.html#has). Pour cela utiliser la syntaxe suivante : `_has:HealthcareService:focus:[NOM CRITERE]`)

**En complément, vous pouvez accéder aux Capability Statements [ici](artifacts.html#behavior-capability-statements)**

### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes sont décrits [ici](modifiers.html).

### Exemple de requêtes

#### Scénario 1 : Recherche sur un critère capacitaire #1

**Description du scénario :** Un consommateur cherche les offres pour une activité opérationnelle donnée, et un capacitaire respectant certaines caractéristiques.

**Exemple :** Recherche des offres de soins intensifs neuro-vasculaires (activité opérationnelle « 356 - Soins intensifs spécialisés neurologie vasculaire (USINV) »)
et disposant d'un lit femme disponible (nature= lit ; statut = disponible ; temporalité = courant ; Genre = femme ; quantité >0).

**Requête :**

```
GET [BASE]/HealthcareService?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|XXX&location.capacity-type=https://mos.esante.gouv.fr/NOS/TRE_R329-NatureCapacite/FHIR/TRE-R329-NatureCapacite|01&location.gender-capacity-available=https://mos.esante.gouv.fr/NOS/TRE_R332-GenreCapacite/FHIR/TRE-R332-GenreCapacite|01&location.temporality-capacity=https://mos.esante.gouv.fr/NOS/TRE_R331-TemporaliteCapacite/FHIR/TRE-R331-TemporaliteCapacite|01&location.capacity-status=https://mos.esante.gouv.fr/NOS/TRE_R330-TypeStatutCapacite/FHIR/TRE-R330-TypeStatutCapacite|02&location.nb-capacity=gt0&_include=HealthcareService:location
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|356 #critère de recherche sur l’activité opérationnelle
&location.capacity-type=https://mos.esante.gouv.fr/NOS/TRE_R329-NatureCapacite/FHIR/TRE-R329-NatureCapacite|01 #critère de recherche sur la nature "lit"
&location.gender-capacity-available=https://mos.esante.gouv.fr/NOS/TRE_R332-GenreCapacite/FHIR/TRE-R332-GenreCapacite|01 #critère de recherche sur le genre des lits "femme"
&location.temporality-capacity=https://mos.esante.gouv.fr/NOS/TRE_R331-TemporaliteCapacite/FHIR/TRE-R331-TemporaliteCapacite|01 #critère de recherche sur la temporalité de la capacité "courant"
&location.capacity-status=https://mos.esante.gouv.fr/NOS/TRE_R330-TypeStatutCapacite/FHIR/TRE-R330-TypeStatutCapacite|02 #critère de recherche sur un lit disponible
&location.nb-capacity=gt0 #critère de recherche sur quantité de lits
&_include=HealthcareService:location  #inclus les Location qui sont référencés par les HealthcareService
```

#### Scénario 2 : Recherche un critère capacitaire #2

**Description du scénario :** Un consommateur cherche les offres pour une activité opérationnelle donnée, et un capacitaire respectant certaines caractéristiques.

**Exemple :** Recherche des offres de surveillance continue pédiatrique (activité opérationnelle « 391 – Surveillance continue spécialisée pédiatrique ») 
et disposant d’un lit fermé ré-ouvrable (nature = lit ; statut = fermé ; type fermeture = ré-activable).

**Requête :** 

```
GET [BASE]/HealthcareService?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|391&location.capacity-type=https://mos.esante.gouv.fr/NOS/TRE_R329-NatureCapacite/FHIR/TRE-R329-NatureCapacite|01&location.capacity-closing-type=https://mos.esante.gouv.fr/NOS/TRE_R333-TypeFermetureCapacite/FHIR/TRE-R333-TypeFermetureCapacite|01&location.capacity-status=https://mos.esante.gouv.fr/NOS/TRE_R330-TypeStatutCapacite/FHIR/TRE-R330-TypeStatutCapacite|05&location.nb-capacity=gt0&_include=HealthcareService:location
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|391 #critère de recherche sur l’activité opérationnelle
&location.capacity-type=https://mos.esante.gouv.fr/NOS/TRE_R329-NatureCapacite/FHIR/TRE-R329-NatureCapacite|01 # critère de recherche sur la capacité en "lit"
&location.capacity-closing-type=https://mos.esante.gouv.fr/NOS/TRE_R333-TypeFermetureCapacite/FHIR/TRE-R333-TypeFermetureCapacite|01 #critère de recherche sur le lit réouvrable
&location.capacity-status=https://mos.esante.gouv.fr/NOS/TRE_R330-TypeStatutCapacite/FHIR/TRE-R330-TypeStatutCapacite|05 #critère de recherche sur le lit fermé
&location.nb-capacity=gt0 #critère de recherche sur quantité de lits
&_include=HealthcareService:location  #inclus les Location qui sont référencés par les HealthcareService
```
#### Scénario 3 : Recherche sur un critère de l'équipement

**Description du scénario :** Un consommateur cherche une offre pour une activité opérationnelle donnée, et disposant d’équipement respectant certaines caractéristiques.

**Exemple :** Recherche des offres de chirurgie traumatologique (activité opérationnelle « 025 - Chirurgie orthopédique et traumatologique »)
proposant une table d’opération adaptée à l'obésité du patient adaptée à un patient de 200 kg (« 088 -Table de bloc opératoire obésité (poids entre 150 et 250 kg) – bariatrique » ; type caractéristique = « poids maximal » ; valeur limite > ou égal à 200 kg).

**Requête :**

```
GET [BASE]/HealthcareService?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|025&location.equipment-type=https://mos.esante.gouv.fr/NOS/TRE_R212-Equipement/FHIR/TRE-R212-Equipement|088&location.equipment-feature=https://mos.esante.gouv.fr/NOS/TRE_R340-TypeCaracteristiqueEquipement/FHIR/TRE-R340-TypeCaracteristiqueEquipement|001&location.limit-value=ge200|http://unitsofmeasure.org|kg&_include=HealthcareService:location
```

**Requête expliquée :**

```sh
GET [BASE]/HealthcareService?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|025 #critère de recherche sur l’activité opérationnelle
&location.equipment-type=https://mos.esante.gouv.fr/NOS/TRE_R212-Equipement/FHIR/TRE-R212-Equipement|088 #critère de recherche sur le type d'équipement "table opératoire"
&location.equipment-feature=https://mos.esante.gouv.fr/NOS/TRE_R340-TypeCaracteristiqueEquipement/FHIR/TRE-R340-TypeCaracteristiqueEquipement|001 #critère de recherche sur le type de caractéristique limite "poids"
&location.limit-value=ge200|http://unitsofmeasure.org|kg #critère de recherche sur la valeur limite "200 kg"
&_include=HealthcareService:location  #inclus les Location qui qui sont référencés par les HealthcareService
```
