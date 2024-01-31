<!-- ## Consignes de fiche de saisie -->
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
<td width="465">
<p>Search<a href="#_ftn2" name="_ftnref2"><sup>[2]</sup></a></p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>M&eacute;thode http associ&eacute;e</strong></p>
</td>
<td width="465">
<p>POST</p>
</td>
<td width="465">
<p>GET</p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>Ressource(s) ciblée(s)</strong></p>
</td>
<td width="465">
<p><a href= https://hl7.org/fhir/R4/questionnaire.html>Questionnaire</a></p>
</td>
<td width="465">
<p><a href= https://hl7.org/fhir/R4/questionnaire.html>Questionnaire</a></p>
</td>
</tr>
<tr>
<td width="215">
<p><strong>Construction requ&ecirc;te de base</strong></p>
</td>
<td width="465">
<p>POST [base]/Questionnaire {?_format=[mime-type]}</p>
</td>
<td width="465">
<p>GET [base]/Questionnaire{?[parameters]{&amp;_format=[mime-type]}}</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/R4/http.html#create">https://www.hl7.org/fhir/R4/http.html#create</a> et <a href="https://www.hl7.org/fhir/R4/http.html#general">https://www.hl7.org/fhir/R4/http.html#general</a></p>
<p><a href="#_ftnref2" name="_ftn2">[2]</a> <a href="https://hl7.org/fhir/R4/http.html#search">https://hl7.org/fhir/R4/http.html#search</a> et <a href="http://hl7.org/fhir/R4/http.html#general">http://hl7.org/fhir/R4/http.html#general</a> &nbsp;</p>

### Construction de la réponse de base

#### Create

##### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/R4/http.html >

Si la création est un succès, le serveur répond en renvoyant a minima:
-	Un header avec un code 201 Created HTTP.
-	Un header Location contenant le nouvel identifiant technique et l’identifiant de version de la ressource créée.
-	L’identifiant fonctionnel de la ressouce créée.


##### Réponse de base -- Echec

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

#### Search

##### Réponse de base -- Succès

Lien vers la spécification FHIR : <http://hl7.org/fhir/R4/bundle.html>

Si la recherche est un succès, le serveur répond :

-   Un header avec un code 200 OK HTTP

-   Un body contenant une ressource Bundle[^27] dont le type = searchset.\ Le bundle encapsule 0 à n ressources Measure corespondant aux critères de recherche plus les ressources incluses correspondant aux critères de recherche.\ Le service développé renvoie les 200 premiers résultats et indique le total trouvé dans une balise \"total\". Dans le cas où il n'y a pas de résultat le service renvoie \"total\": 0.

Remarque : la recherche est un succès à partir du moment où la requête peut être exécutée. Il peut il y avoir 0 à n correspondances.

Plus de précision sur la spécification FHIR  <http://hl7.org/fhir/R4/http.html>

##### Réponse de base -- Echec

Lien vers la spécification FHIR : <http://hl7.org/fhir/R4/operationoutcome.html>

Si la recherche échoue, le serveur doit répondre :

-   Un header avec un un code erreur HTTP 4XX ou 5XX

-   Un body contenant une ressource [OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html) qui donne les détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la requête, ce qui est différent d'aucune correspondance à la recherche. Plus de précision sur la spécification FHIR : <http://hl7.org/fhir/R4/http.html>

### Critères de recherche pour Search

-   Les critères de recherche, définis dans la spécifications FHIR [search parameters](https://hl7.org/fhir/R4/questionnaire.html#search) doivent être implémentés afin de pouvoir rechercher les fiches de saisie selon le besoin.

### Paramètres et modificateurs de requêtes FHIR

Les paramètres et modificateurs de requêtes sont décrits [ici](modifiers.html).

### Exemple de requêtes

#### Scénario 1 : Création d'une fiche de consignes de saisie

**Description du scénario :** Un consommateur souhaite créer une nouvelle fiche de consignes de saisie pour un cabinet de ville de médecine générale.

Exemple de ressource : [Example Questionnaire: Cabinet de ville de médecine générale](Questionnaire-ror-questionnaire-offre-de-ville.html)

**Requête :**

```json
POST [BASE]/Questionnaire
{
  "resourceType" : "Questionnaire",
  "id" : "ror-questionnaire-offre-de-ville",
  "meta" : {
    "profile" : [
      🔗 "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-questionnaire"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><b>Structure</b><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"The linkId for the item\">LinkId</a></th><th style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Text for the item\">Text</a></th><th style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the the itemcan appear in the instance\">Cardinality</a></th><th style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"The type of the item\">Type</a></th><th style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Other attributes of the item\">Flags</a></th><th style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Additional information about the item\">Description &amp; Constraints</a><span style=\"float: right\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"QuestionnaireRoot\" class=\"hierarchy\"/> FDS-offre-de-ville</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Dans le ROR, les cabinets de ville et les centres de santé prennent la forme d'une Entité Juridique, et d’un Établissement Géographique (EG), puis d’une unité élémentaire par professionnel. Ce document propose la description type d’un cabinet de ville de médecine générale.</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Questionnaire</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/ror-questionnaire-offre-de-ville#0.2.0</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\" id=\"item.TypeOffreInfoEJ\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> TypeOffreInfoEJ</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1. Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Information sur l'EJ</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group\">group</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.idNatstruct-EJ\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> idNatstruct-EJ</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1.1. IdNat_Struct (Identification nationale des Entités Juridiques définie dans le CI-SIS)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.identifier:idNatSt.value\">Organization.identifier:idNatSt.value</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.numFINESS-EJ\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> numFINESS-EJ</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1.2. Numéro FINESS de l'EJ</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.identifier:finess.value\">Organization.identifier:finess.value</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.numSIREN-EJ\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> numSIREN-EJ</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1.3. Numéro SIRET de l'EJ</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.identifier:sirene.value\">Organization.identifier:sirene.value</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.numEJ_RPPS_ADELI_Rang\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> numEJ_RPPS_ADELI_Rang</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1.4. Numéro EJ/RPPS/ADELIrang</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.identifier:rppsRang.value\">Organization.identifier:rppsRang.value</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.raisonSociale-EJ\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> raisonSociale-EJ</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1.5. Raison sociale EJ</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.name\">Organization.name</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.complementRaisonSociale-EJ\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> complementRaisonSociale-EJ</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1.6. Complément Raison sociale (EJ)</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.name.extension:ror-organization-additional-name\">Organization.name.extension:ror-organization-additional-name</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.statutJuridique-EJ\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> statutJuridique-EJ</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1.7. Statut juridique (EJ)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.type:statutJuridiqueINSEE\">Organization.type:statutJuridiqueINSEE</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J199-StatutJuridique-ROR/FHIR/JDV-J199-StatutJuridique-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.sousEnsembleAgregatStatutJuridique\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> sousEnsembleAgregatStatutJuridique</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1.8. Ss Ens Agrégat Stat. Jur.</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.type:sousEnsembleAgregatStatutJuridique\">Organization.type:sousEnsembleAgregatStatutJuridique</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J200-SousEnsembleAgregatStatutJuridique-ROR/FHIR/JDV-J200-SousEnsembleAgregatStatutJuridique-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.adresseEJ\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> adresseEJ</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1.9. Adresse de l’EJ</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.address.text\">Organization.address.text</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.dateCreation-EJ\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-date.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Date\" class=\"hierarchy\"/> dateCreation-EJ</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1.10. Veuillez indiquer la date de création de l’EJ</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-date\">date</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.extension:ror-organization-creation-date\">Organization.extension:ror-organization-creation-date</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.dateFermeture-EJ\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-date.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Date\" class=\"hierarchy\"/> dateFermeture-EJ</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1.11. Veuillez indiquer la date de fermeture de l’EJ</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-date\">date</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.extension:organization-period.end\">Organization.extension:organization-period.end</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\" id=\"item.typeFermeture-EJ\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> typeFermeture-EJ</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1.12. Veuillez indiquer le type de fermeture de l’EJ</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.extension:ror-organization-closing-type\">Organization.extension:ror-organization-closing-type</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J201-TypeFermeture-ROR/FHIR/JDV-J201-TypeFermeture-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\" id=\"item.TypeOffreInfoEG\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> TypeOffreInfoEG</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2. Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Information sur l'EG</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group\">group</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.idNatstruct-EG\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> idNatstruct-EG</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2.1. IdNat_Struct (Identification nationale des Entités Géographiques définie dans le CI-SIS)</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.identifier:idNatSt.value\">Organization.identifier:idNatSt.value</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.numFINESS-EG\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> numFINESS-EG</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2.2. Numéro FINESS de l'EG</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.identifier:finess.value\">Organization.identifier:finess.value</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.numSIRET\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> numSIRET</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2.3. Numéro SIRET de l'EG</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.identifier:numSIRET.value\">Organization.identifier:numSIRET.value</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.numEG_RPPS_ADELI_Rang\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> numEG_RPPS_ADELI_Rang</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2.4. N°EG/RPPS/ADELIrang</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.identifier:rppsRang.value\">Organization.identifier:rppsRang.value</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.nom-EG\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> nom-EG</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2.5. Dénomination EG</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.name\">Organization.name</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.complementRaisonSociale-EG\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> complementRaisonSociale-EG</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2.6. Complément Dénomination</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.name\">Organization.name</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.cNomOperationnel-EG\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> cNomOperationnel-EG</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2.7. Le cas échéant, veuillez renseigner le nom opérationnel de l’entité géographique</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.alias\">Organization.alias</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.categorieEG\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> categorieEG</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2.8. Catégorie EG</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.type:categorieEtablissement\">Organization.type:categorieEtablissement</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J55-CategorieEG-ROR/FHIR/JDV-J55-CategorieEG-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.adresseEG\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> adresseEG</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2.9. Lieu EG</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.address.text\">Organization.address.text</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.contactEG\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> contactEG</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2.10. Contact (Informations permettant de contacter l'accueil ou le secrétariat de l'entité géographique)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#diff_Organization.contact.telecom.value\">diff_Organization.contact.telecom.value</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.accessibiliteLieu-EG\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> accessibiliteLieu-EG</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2.12. modaliteParticipationSPH</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.type:sphParticipation\">Organization.type:sphParticipation</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J202-ESPIC-ROR/FHIR/JDV-J202-ESPIC-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.dateOuverture-EG\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-date.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Date\" class=\"hierarchy\"/> dateOuverture-EG</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2.13. Veuillez indiquer la date de création de l’EG</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-date\">date</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.extension:organization-period.start\">Organization.extension:organization-period.start</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.dateFermeture-EG\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-date.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Date\" class=\"hierarchy\"/> dateFermeture-EG</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2.14. Veuillez indiquer la date de fermeture de l’EG</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-date\">date</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.extension:organization-period.end\">Organization.extension:organization-period.end</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\" id=\"item.typeFermeture-EG\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> typeFermeture-EG</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2.15. Veuillez indiquer le type de fermeture de l’EG</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-organization.html#Organization.extension:ror-organization-closing-type\">Organization.extension:ror-organization-closing-type</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J201-TypeFermeture-ROR/FHIR/JDV-J201-TypeFermeture-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\" id=\"item.TypeOffreInfo\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> TypeOffreInfo</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3. Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Informations sur l'offre</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group\">group</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.IdentifiantOffre\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> IdentifiantOffre</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.1. Identifiant Offre (Fourni par le ROR)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.identifier.value\">HealthcareService.identifier.value</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.NomOffre\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> NomOffre</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.2. Nom Offre</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.name\">HealthcareService.name</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.modePriseEnCharge\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> modePriseEnCharge</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.3. Mode de prise en charge</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.characteristic:careMode.coding\">HealthcareService.characteristic:careMode.coding</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J19-ModePriseEnCharge-ROR/FHIR/JDV-J19-ModePriseEnCharge-ROR/<br/>Options: <a href=\"#opt-item.modePriseEnCharge\">1 option</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.ModalAccueil\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> ModalAccueil</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.4. Modalité d’accueil</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..*</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.characteristic:receptionModality.coding\">HealthcareService.characteristic:receptionModality.coding</a><br/>Options: <a href=\"#opt-item.ModalAccueil\">3 options</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.ageMin\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-quantity.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Quantity\" class=\"hierarchy\"/> ageMin</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.5. Veuillez indiquer l’âge minimum de la patientèle.</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-quantity\">quantity</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice-patient-type.html#key_Extension.extension:ageRange.value[x].low\">key_Extension.extension:ageRange.value[x].low</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.ageMax\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-quantity.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Quantity\" class=\"hierarchy\"/> ageMax</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.6. Veuillez indiquer l’âge maximum de la patientèle</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-quantity\">quantity</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice-patient-type.html#key_Extension.extension:ageRange.value[x].high\">key_Extension.extension:ageRange.value[x].high</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.ZoneInter\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> ZoneInter</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.7. Zone d’intervention (A renseigner si la modalité d’accueil « visite à domicile » est renseignée)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-territorial-division.html#diff_Extension.extension:codeTerritorialDivision\">diff_Extension.extension:codeTerritorialDivision</a><br/>Enable When: <span><a href=\"#item.ModalAccueil\">ModalAccueil</a> exists true</span><br/>Value Set: <a href=\"ValueSet-code-region-territorial-division-ror-valueset.html\">Fusion des valuesets pour le code de la division territoriale</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.activiteOperationnelle\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> activiteOperationnelle</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.8. Activités opérationnelles</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..*</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.specialty:operationalActivity\">HealthcareService.specialty:operationalActivity</a><br/>Options: <a href=\"#opt-item.activiteOperationnelle\">24 options</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.acteSpecifique\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> acteSpecifique</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.9. Actes Specifiques</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.characteristic:specificAct\">HealthcareService.characteristic:specificAct</a><br/>Options: <a href=\"#opt-item.acteSpecifique\">32 options</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.acteRealiseHorsCabinet\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> acteRealiseHorsCabinet</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.10. Acte spécifique hors cabinet</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.characteristic:outsideOfficeAct\">HealthcareService.characteristic:outsideOfficeAct</a><br/>Options: <a href=\"#opt-item.acteRealiseHorsCabinet\">1 option</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.CompetenceSpecifique\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> CompetenceSpecifique</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.11. Compétence(s) spécifique(s)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.characteristic:specificCompetence\">HealthcareService.characteristic:specificCompetence</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J33-CompetenceSpecifique-ROR/FHIR/JDV-J33-CompetenceSpecifique-ROR/</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.niveauExpertise\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> niveauExpertise</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.12. Niveau d’expertise</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.characteristic:expertiseLevel\">HealthcareService.characteristic:expertiseLevel</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J227-NiveauExpertise-ROR/FHIR/JDV-J227-NiveauExpertise-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.typeFermeture\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> typeFermeture</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.13. Type de fermeture</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.characteristic:temporalityStopService\">HealthcareService.characteristic:temporalityStopService</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J185-TypeFermeture-ROR/FHIR/JDV-J185-TypeFermeture-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.dateFermeture\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-date.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Date\" class=\"hierarchy\"/> dateFermeture</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.14. Date de fermeture</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-date\">date</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.notAvailable:closingRepoeningDate.during.start\">HealthcareService.notAvailable:closingRepoeningDate.during.start</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.DatePrevisionnelleReouverture\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-date.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Date\" class=\"hierarchy\"/> DatePrevisionnelleReouverture</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.15. Date prévisionnelle réouverture</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-date\">date</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.notAvailable:closingRepoeningDate.during.end\">HealthcareService.notAvailable:closingRepoeningDate.during.end</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck111.png)\" id=\"item.Horaires\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> Horaires</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.16. Horaires</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group\">group</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1110.png)\" id=\"item.typePlageHoraire\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> typePlageHoraire</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.16.1. Type de plage horaire</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.availableTime.extension:ror-available-time-type-of-time\">HealthcareService.availableTime.extension:ror-available-time-type-of-time</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J41-TypeHoraire-ROR/FHIR/JDV-J41-TypeHoraire-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1110.png)\" id=\"item.jourSemaine\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-integer.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Integer\" class=\"hierarchy\"/> jourSemaine</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.16.2. Numéro du jour dans la semaine</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-integer\">integer</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-available-time-number-days-of-week.html#null\"/></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1101.png)\" id=\"item.Heures\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> Heures</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.16.3. Heures</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group\">group</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11010.png)\" id=\"item.availableStartTime\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-time.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Time\" class=\"hierarchy\"/> availableStartTime</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.16.3.a. Début de la plage horaire</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-time\">time</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.availableTime.availableStartTime\">HealthcareService.availableTime.availableStartTime</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11000.png)\" id=\"item.availableEndTime\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-time.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Time\" class=\"hierarchy\"/> availableEndTime</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.16.2.b. Fin de la plage horaire</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-time\">time</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.availableTime.availableEndTime\">HealthcareService.availableTime.availableEndTime</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.boiteLettreMSS\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> boiteLettreMSS</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.16. Boîte aux lettres MSS</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-healthcareservice.html#HealthcareService.telecom.value\">HealthcareService.telecom.value</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.modeExercice\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> modeExercice</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.17. Mode d’exercice dans l’UE</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitionerrole-unit-exercise-mode.html#Extension.value[x]\">Extension.value[x]</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J217-ModeExercice-ROR/FHIR/JDV-J217-ModeExercice-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.secteurConventionnement\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> secteurConventionnement</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.18. Secteur conventionnement</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitionerrole.html#PractitionerRole.extension:contracted.value[x]\">PractitionerRole.extension:contracted.value[x]</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J130-CNAMAmeliSecteurConventionnement-RASS/FHIR/JDV-J130-CNAMAmeliSecteurConventionnement-RASS/</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.optionContratAccèsAuxSoins\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-boolean.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Boolean\" class=\"hierarchy\"/> optionContratAccèsAuxSoins</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.19. Option CAS (Contrat d’Accès aux Soins) / OPTAM (Option Pratique Tarifaire Maîtrisée)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean\">boolean</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitionerrole.html#PractitionerRole.extension:optionCAS\">PractitionerRole.extension:optionCAS</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.carteVitaleAcceptee\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-boolean.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Boolean\" class=\"hierarchy\"/> carteVitaleAcceptee</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.20. Carte vitale acceptée</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean\">boolean</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitionerrole.html#PractitionerRole-vitaleAccepted\">PractitionerRole-vitaleAccepted</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.civiliteExercice\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> civiliteExercice</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.21. Civilité d’exercice</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-RORPractitionerRoleName.html#Extension.extension:exerciseTitle.value[x]:valueCodeableConcept\">Extension.extension:exerciseTitle.value[x]:valueCodeableConcept</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J208-CiviliteExercice-ROR/FHIR/JDV-J208-CiviliteExercice-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.nomExercice\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> nomExercice</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.22. Nom d’exercice</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-RORPractitionerRoleName.html#Extension.extension:exerciseLastName\">Extension.extension:exerciseLastName</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.prenomExercice\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> prenomExercice</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.23. Prénom d’exercice</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-RORPractitionerRoleName.html#Extension.extension:exerciseFirstName\">Extension.extension:exerciseFirstName</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.profession\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> profession</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.24. Profession</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitionerrole.html#PractitionerRole.code\">PractitionerRole.code</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J229-ProfessionSante-ROR/FHIR/JDV-J229-ProfessionSante-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.typeSavoirFaire\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> typeSavoirFaire</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.25. Type savoir faire</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitionerrole.html#PractitionerRole.specialty:expertiseType\">PractitionerRole.specialty:expertiseType</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J209-TypeSavoirFaire-ROR/FHIR/JDV-J209-TypeSavoirFaire-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.specialite\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> specialite</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.26. Spécialité</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitionerrole.html#PractitionerRole.specialty:specialty\">PractitionerRole.specialty:specialty</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J210-SpecialiteOrdinale-ROR/FHIR/JDV-J210-SpecialiteOrdinale-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.competence\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> competence</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.27. Compétence</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitionerrole.html#PractitionerRole.specialty:competence\">PractitionerRole.specialty:competence</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J232-Competence-ROR/FHIR/JDV-J232-Competence-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.competenceExclusive\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> competenceExclusive</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.28. CCompétence Exclusive</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitionerrole.html#PractitionerRole.specialty:exclusiveCompetence\">PractitionerRole.specialty:exclusiveCompetence</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J211-CompetenceExclusive-ROR/FHIR/JDV-J211-CompetenceExclusive-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.orientationParticuliere\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> orientationParticuliere</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.29. Orientation particulière</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitionerrole.html#PractitionerRole.specialty:specificOrientation\">PractitionerRole.specialty:specificOrientation</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J212-OrientationParticuliere-ROR/FHIR/JDV-J212-OrientationParticuliere-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.capacite\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> capacite</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.30. Capacité</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitionerrole.html#PractitionerRole.specialty:expertiseCapacity\">PractitionerRole.specialty:expertiseCapacity</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J213-CapaciteSavoirFaire-ROR/FHIR/JDV-J213-CapaciteSavoirFaire-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.qualificationPAC\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> qualificationPAC</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.31. Qualification de Praticien Adjoint Contractuel</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitionerrole.html#PractitionerRole.specialty:qualificationPAC\">PractitionerRole.specialty:qualificationPAC</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J214-QualificationPAC-ROR/FHIR/JDV-J214-QualificationPAC-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.DESCNonQualifiant\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> DESCNonQualifiant</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.32. DESC Non Qualifiant</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitionerrole.html#PractitionerRole.specialty:nonQualifyingDESC\">PractitionerRole.specialty:nonQualifyingDESC</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J215-DESCnonQualifiant-ROR/FHIR/JDV-J215-DESCnonQualifiant-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.droitExerciceComplémentaire\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> droitExerciceComplémentaire</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.33. Droit Exercice Complémentaire</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitionerrole.html#PractitionerRole.specialty:supplementaryExerciseRight\">PractitionerRole.specialty:supplementaryExerciseRight</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J216-DroitExerciceCompl-ROR/FHIR/JDV-J216-DroitExerciceCompl-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.idNat_PS\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> idNat_PS</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.34. Identification Nationale du PS</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitioner.html#Practitioner.identifier.value\">Practitioner.identifier.value</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.boiteLettreMSS-PS\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> boiteLettreMSS-PS</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.35. Boîte aux lettres du service de messagerie sécurisée de santé</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitioner.html#Practitioner.telecom.value\">Practitioner.telecom.value</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.Civilite\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> Civilite</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.36. Civilité du PS</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-practitioner.html#Practitioner.name.prefix\">Practitioner.name.prefix</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J207-Civilite-ROR/FHIR/JDV-J207-Civilite-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.identifiantLieu\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> identifiantLieu</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.37. Identifiant lieu real offre</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.readOnly\" title=\"Is Readonly\"><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></a><img src=\"icon-qi-readonly.png\" alt=\"icon\"/></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-location.html#Location.identifier:idLocation.value\">Location.identifier:idLocation.value</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.adresseLieu\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> adresseLieu</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.38. Adresse</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-location.html#Location.address.text\">Location.address.text</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" id=\"item.communeCog\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> communeCog</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.39. communeCog</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-commune-cog.html#null\"/><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J124-Commune/FHIR/JDV-J124-Commune</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\" id=\"item.descriptionLieu\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"String\" class=\"hierarchy\"/> descriptionLieu</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">3.39. Description (Le cas échéant, veuillez préciser comment atteindre le lieu)</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-commune-cog.html#null\"/></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck01.png)\" id=\"item.TypeEquipementInfo\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> TypeEquipementInfo</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">4. Equipement(s) disponible(s)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group\">group</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" id=\"item.equipmentType\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> equipmentType</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">4.a. Type équipement</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-location-equipment.html#Extension.extension:equipmentType.value[x]\">Extension.extension:equipmentType.value[x]</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J18-EquipementSpecifique-ROR/FHIR/JDV-J18-EquipementSpecifique-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" id=\"item.nbInService\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-integer.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Integer\" class=\"hierarchy\"/> nbInService</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">4.b. Nombre équipement en service</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-integer\">integer</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-location-equipment.html#Extension.extension:nbInService.value[x]\">Extension.extension:nbInService.value[x]</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" id=\"item.equipmentFeature\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-coding.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Coding\" class=\"hierarchy\"/> equipmentFeature</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">4.c. Type caractéristique de l'équipement</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-location-equipment-limit.html#Extension.extension:equipmentFeature.value[x]\">Extension.extension:equipmentFeature.value[x]</a><br/>Value Set: https://mos.esante.gouv.fr/NOS/JDV_J228-TypeCaracteristiqueEquipement-ROR/FHIR/JDV-J228-TypeCaracteristiqueEquipement-ROR</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck000.png)\" id=\"item.limitValue\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-quantity.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Quantity\" class=\"hierarchy\"/> limitValue</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">4.d. Valeur limite</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/codesystem-item-type.html#item-type-quantity\">quantity</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Definition: <a href=\"StructureDefinition-ror-location-equipment-limit.html#Extension.extension:limitValue.value[x]\">Extension.extension:limitValue.value[x]</a></td></tr>\r\n<tr><td colspan=\"6\" class=\"hierarchy\"><br/><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table><hr/><p><b>Option Sets</b></p><a name=\"opt-item.modePriseEnCharge\"> </a><p><b>Answer options for modePriseEnCharge</b></p><ul><li style=\"font-size: 11px\"><img src=\"icon-selected.png\" alt=\"icon\"/>https://mos.esante.gouv.fr/NOS/JDV_J19-ModePriseEnCharge-ROR/FHIR/JDV-J19-ModePriseEnCharge-ROR#32 (&quot;Consultation (CS)&quot;)</li></ul><a name=\"opt-item.ModalAccueil\"> </a><p><b>Answer options for ModalAccueil</b></p><ul><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J226-ModaliteAccueil-ROR/FHIR/JDV-J226-ModaliteAccueil-ROR#03 (&quot;Consultation en présentiel&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J226-ModaliteAccueil-ROR/FHIR/JDV-J226-ModaliteAccueil-ROR#04 (&quot;Téléconsultation&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J226-ModaliteAccueil-ROR/FHIR/JDV-J226-ModaliteAccueil-ROR#05 (&quot;Visite à domicile&quot;)</li></ul><a name=\"opt-item.activiteOperationnelle\"> </a><p><b>Answer options for activiteOperationnelle</b></p><ul><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#404 (&quot;Addictologie avec substance(s)&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#001 (&quot;Addictologie comportementale (sans substance)&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#004 (&quot;Algologie et Médecine de la douleur&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#040 (&quot;Diététique et Nutrition&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#435 (&quot;Expertise médicale (évaluation de préjudice)&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#179 (&quot;Médecine aéronautique et aérospatiale&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#480 (&quot;Médecine du sommeil&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#081 (&quot;Médecine du sport&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#437 (&quot;Médecine générale&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#481 (&quot;Médecine générale à orientation Allergologie&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#482 (&quot;Médecine générale à orientation Andrologie&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#483 (&quot;Médecine générale à orientation Diabétologie&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#484 (&quot;Médecine générale à orientation Gériatrie, Gérontologie&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#485 (&quot;Médecine générale à orientation Gynécologie médicale&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#486 (&quot;Médecine générale à orientation Maladies infectieuses, parasitaires et tropicales&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#487 (&quot;Médecine générale à orientation Médecine pédiatrique&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#488 (&quot;Médecine générale à orientation Médecine vasculaire (Angiologie, Phlébologie)&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#489 (&quot;Médecine générale à orientation Oncogériatrie (cancérologie)&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#490 (&quot;Médecine générale à orientation Pathologies osseuses médicales&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#084 (&quot;Médecine hyperbare&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#455 (&quot;Médecine thermale&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#135 (&quot;Sexologie médicale&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#170 (&quot;Soins palliatifs&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR#139 (&quot;Tabacologie&quot;)</li></ul><a name=\"opt-item.acteSpecifique\"> </a><p><b>Answer options for acteSpecifique</b></p><ul><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0739 (&quot;Audiogramme&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1167 (&quot;Contention souple d’articulation&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1171 (&quot;Dépistage de la déficience visuelle de l'enfant&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1172 (&quot;Dépistage des surdités de l'enfant&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1181 (&quot;Diagnostic par dermatoscope&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1182 (&quot;Diagnostic par echoscope doppler&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0172 (&quot;ECG (électrocardiographie)&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1186 (&quot;Echographie clinique ciblée&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0628 (&quot;Education thérapeutique du patient non labellisée ou psychoéducation&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1197 (&quot;Évacuation / Excision d'une thrombose hémorroïdaire externe&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0483 (&quot;Evaluation des troubles du sommeil (polysomnographie)&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1199 (&quot;Examen médical d’aptitude à la fonction publique par médecin agréé&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1200 (&quot;Examen médical du permis de conduire par médecin agréé&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1208 (&quot;Frottis du col utérin&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1215 (&quot;Incision / excision d'un panaris superficiel&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0268 (&quot;Interruption volontaire de grossesse (IVG) médicamenteuse&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0812 (&quot;Médiation Familiale&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1244 (&quot;Pose d’implants contraceptifs&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1245 (&quot;Pose de DIU&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1247 (&quot;Pose de plâtres ou résines, orthèse&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1248 (&quot;Prescription initiale d'audioprothèses&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1249 (&quot;Prise en charge des migraines et céphalées&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0825 (&quot;Prophylaxie pré-exposition par voie orale (PrEP)&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0768 (&quot;Psychothérapie&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0921 (&quot;Repérage des conduites addictives, soins et orientation&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0441 (&quot;Soins avec administration de MEOPA&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1269 (&quot;Sutures cutanées&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0448 (&quot;Synoviorthèse isotopique&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#1270 (&quot;Tamponnement nasal antérieur&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0626 (&quot;Bilan neuro-psychologique&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0610 (&quot;Thérapie individuelle cognitivo-comportementale (TCC)&quot;)</li><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0608 (&quot;Thérapie individuelle par hypnose&quot;)</li></ul><a name=\"opt-item.acteRealiseHorsCabinet\"> </a><p><b>Answer options for acteRealiseHorsCabinet</b></p><ul><li style=\"font-size: 11px\">https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR#0528 (&quot;Education thérapeutique du patient (ETP) labellisée&quot;)</li></ul></div>"
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/Questionnaire/ror-questionnaire-offre-de-ville",
  "identifier" : [
    {
      "use" : "official",
      "value" : "FDS-092"
    }
  ],
  "version" : "0.2.0",
  "name" : "FDS-offre-de-ville",
  "title" : "Cabinet de ville de médecine générale",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : [
    "HealthcareService",
    "Organization",
    "Practitioner",
    "Location",
    "PractitionerRole"
  ],
  "date" : "2023-12-05",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Dans le ROR, les cabinets de ville et les centres de santé prennent la forme d'une Entité Juridique, et d’un Établissement Géographique (EG), puis d’une unité élémentaire par professionnel. Ce document propose la description type d’un cabinet de ville de médecine générale.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "purpose" : "Dans le ROR, l'offre de soins de ville comprend celle des cabinets et celle des centres de santé. Concernant les soins de médecine générale, le ROR référencera l’offre des médecins généralistes, qu’ils aient ou non une spécialité, dans leur cabinet, individuel ou de groupe, et les centres de santé.",
  "lastReviewDate" : "2023-12-05",
  "item" : [
    {
      "linkId" : "TypeOffreInfoEJ",
      "prefix" : "1",
      "text" : "Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Information sur l'EJ",
      "type" : "group",
      "item" : [
        {
          "linkId" : "idNatstruct-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:idNatSt.value",
          "prefix" : "1.1",
          "text" : "IdNat_Struct (Identification nationale des Entités Juridiques définie dans le CI-SIS)",
          "type" : "string",
          "required" : true,
          "readOnly" : true
        },
        {
          "linkId" : "numFINESS-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:finess.value",
          "prefix" : "1.2",
          "text" : "Numéro FINESS de l'EJ",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "numSIREN-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:sirene.value",
          "prefix" : "1.3",
          "text" : "Numéro SIRET de l'EJ",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "numEJ_RPPS_ADELI_Rang",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:rppsRang.value",
          "prefix" : "1.4",
          "text" : "Numéro EJ/RPPS/ADELIrang",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "raisonSociale-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.name",
          "prefix" : "1.5",
          "text" : "Raison sociale EJ",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "complementRaisonSociale-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.name.extension:ror-organization-additional-name",
          "prefix" : "1.6",
          "text" : "Complément Raison sociale (EJ)",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "statutJuridique-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.type:statutJuridiqueINSEE",
          "prefix" : "1.7",
          "text" : "Statut juridique (EJ)",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J199-StatutJuridique-ROR/FHIR/JDV-J199-StatutJuridique-ROR"
        },
        {
          "linkId" : "sousEnsembleAgregatStatutJuridique",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.type:sousEnsembleAgregatStatutJuridique",
          "prefix" : "1.8",
          "text" : "Ss Ens Agrégat Stat. Jur.",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J200-SousEnsembleAgregatStatutJuridique-ROR/FHIR/JDV-J200-SousEnsembleAgregatStatutJuridique-ROR"
        },
        {
          "linkId" : "adresseEJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.address.text",
          "prefix" : "1.9",
          "text" : "Adresse de l’EJ",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "dateCreation-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:ror-organization-creation-date",
          "prefix" : "1.10",
          "text" : "Veuillez indiquer la date de création de l’EJ",
          "type" : "date",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "dateFermeture-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:organization-period.end",
          "prefix" : "1.11",
          "text" : "Veuillez indiquer la date de fermeture de l’EJ",
          "type" : "date",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "typeFermeture-EJ",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:ror-organization-closing-type",
          "prefix" : "1.12",
          "text" : "Veuillez indiquer le type de fermeture de l’EJ",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J201-TypeFermeture-ROR/FHIR/JDV-J201-TypeFermeture-ROR"
        }
      ]
    },
    {
      "linkId" : "TypeOffreInfoEG",
      "prefix" : "2",
      "text" : "Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Information sur l'EG",
      "type" : "group",
      "item" : [
        {
          "linkId" : "idNatstruct-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:idNatSt.value",
          "prefix" : "2.1",
          "text" : "IdNat_Struct (Identification nationale des Entités Géographiques définie dans le CI-SIS)",
          "type" : "string",
          "required" : true,
          "readOnly" : true
        },
        {
          "linkId" : "numFINESS-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:finess.value",
          "prefix" : "2.2",
          "text" : "Numéro FINESS de l'EG",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "numSIRET",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:numSIRET.value",
          "prefix" : "2.3",
          "text" : "Numéro SIRET de l'EG",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "numEG_RPPS_ADELI_Rang",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:rppsRang.value",
          "prefix" : "2.4",
          "text" : "N°EG/RPPS/ADELIrang",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "nom-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.name",
          "prefix" : "2.5",
          "text" : "Dénomination EG",
          "type" : "string",
          "required" : true,
          "readOnly" : true
        },
        {
          "linkId" : "complementRaisonSociale-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.name",
          "prefix" : "2.6",
          "text" : "Complément Dénomination",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "cNomOperationnel-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.alias",
          "prefix" : "2.7",
          "text" : "Le cas échéant, veuillez renseigner le nom opérationnel de l’entité géographique",
          "type" : "string",
          "required" : false
        },
        {
          "linkId" : "categorieEG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.type:categorieEtablissement",
          "prefix" : "2.8",
          "text" : "Catégorie EG",
          "type" : "choice",
          "required" : true,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J55-CategorieEG-ROR/FHIR/JDV-J55-CategorieEG-ROR"
        },
        {
          "linkId" : "adresseEG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.address.text",
          "prefix" : "2.9",
          "text" : "Lieu EG",
          "type" : "string",
          "required" : false
        },
        {
          "linkId" : "contactEG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#diff_Organization.contact.telecom.value",
          "prefix" : "2.10",
          "text" : "Contact (Informations permettant de contacter l'accueil ou le secrétariat de l'entité géographique)",
          "type" : "string",
          "required" : false
        },
        {
          "linkId" : "accessibiliteLieu-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.type:sphParticipation",
          "prefix" : "2.12",
          "text" : "modaliteParticipationSPH",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J202-ESPIC-ROR/FHIR/JDV-J202-ESPIC-ROR"
        },
        {
          "linkId" : "dateOuverture-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:organization-period.start",
          "prefix" : "2.13",
          "text" : "Veuillez indiquer la date de création de l’EG",
          "type" : "date",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "dateFermeture-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:organization-period.end",
          "prefix" : "2.14",
          "text" : "Veuillez indiquer la date de fermeture de l’EG",
          "type" : "date",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "typeFermeture-EG",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:ror-organization-closing-type",
          "prefix" : "2.15",
          "text" : "Veuillez indiquer le type de fermeture de l’EG",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J201-TypeFermeture-ROR/FHIR/JDV-J201-TypeFermeture-ROR"
        }
      ]
    },
    {
      "linkId" : "TypeOffreInfo",
      "prefix" : "3",
      "text" : "Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Informations sur l'offre",
      "type" : "group",
      "item" : [
        {
          "linkId" : "IdentifiantOffre",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.identifier.value",
          "prefix" : "3.1",
          "text" : "Identifiant Offre (Fourni par le ROR)",
          "type" : "string",
          "readOnly" : true
        },
        {
          "linkId" : "NomOffre",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.name",
          "prefix" : "3.2",
          "text" : "Nom Offre",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "modePriseEnCharge",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:careMode.coding",
          "prefix" : "3.3",
          "text" : "Mode de prise en charge",
          "type" : "choice",
          "required" : true,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J19-ModePriseEnCharge-ROR/FHIR/JDV-J19-ModePriseEnCharge-ROR/",
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J19-ModePriseEnCharge-ROR/FHIR/JDV-J19-ModePriseEnCharge-ROR",
                "code" : "32",
                "display" : "Consultation (CS)"
              },
              "initialSelected" : true
            }
          ]
        },
        {
          "linkId" : "ModalAccueil",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:receptionModality.coding",
          "prefix" : "3.4",
          "text" : "Modalité d’accueil",
          "type" : "choice",
          "required" : true,
          "repeats" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J226-ModaliteAccueil-ROR/FHIR/JDV-J226-ModaliteAccueil-ROR",
                "code" : "03",
                "display" : "Consultation en présentiel"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J226-ModaliteAccueil-ROR/FHIR/JDV-J226-ModaliteAccueil-ROR",
                "code" : "04",
                "display" : "Téléconsultation"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J226-ModaliteAccueil-ROR/FHIR/JDV-J226-ModaliteAccueil-ROR",
                "code" : "05",
                "display" : "Visite à domicile"
              }
            }
          ]
        },
        {
          "linkId" : "ageMin",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type#key_Extension.extension:ageRange.value[x].low",
          "prefix" : "3.5",
          "text" : "Veuillez indiquer l’âge minimum de la patientèle.",
          "type" : "quantity",
          "required" : false
        },
        {
          "linkId" : "ageMax",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type#key_Extension.extension:ageRange.value[x].high",
          "prefix" : "3.6",
          "text" : "Veuillez indiquer l’âge maximum de la patientèle",
          "type" : "quantity",
          "required" : false
        },
        {
          "linkId" : "ZoneInter",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division#diff_Extension.extension:codeTerritorialDivision",
          "prefix" : "3.7",
          "text" : "Zone d’intervention (A renseigner si la modalité d’accueil « visite à domicile » est renseignée)",
          "type" : "choice",
          "enableWhen" : [
            {
              "question" : "ModalAccueil",
              "operator" : "exists",
              "answerBoolean" : true
            }
          ],
          "enableBehavior" : "all",
          "required" : false,
          "answerValueSet" : "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/code-region-territorial-division-ror-valueset"
        },
        {
          "linkId" : "activiteOperationnelle",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.specialty:operationalActivity",
          "prefix" : "3.8",
          "text" : "Activités opérationnelles",
          "type" : "choice",
          "required" : true,
          "repeats" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "404",
                "display" : "Addictologie avec substance(s)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "001",
                "display" : "Addictologie comportementale (sans substance)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "004",
                "display" : "Algologie et Médecine de la douleur"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "040",
                "display" : "Diététique et Nutrition"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "435",
                "display" : "Expertise médicale (évaluation de préjudice)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "179",
                "display" : "Médecine aéronautique et aérospatiale"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "480",
                "display" : "Médecine du sommeil"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "081",
                "display" : "Médecine du sport"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "437",
                "display" : "Médecine générale"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "481",
                "display" : "Médecine générale à orientation Allergologie"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "482",
                "display" : "Médecine générale à orientation Andrologie"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "483",
                "display" : "Médecine générale à orientation Diabétologie"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "484",
                "display" : "Médecine générale à orientation Gériatrie, Gérontologie"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "485",
                "display" : "Médecine générale à orientation Gynécologie médicale"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "486",
                "display" : "Médecine générale à orientation Maladies infectieuses, parasitaires et tropicales"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "487",
                "display" : "Médecine générale à orientation Médecine pédiatrique"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "488",
                "display" : "Médecine générale à orientation Médecine vasculaire (Angiologie, Phlébologie)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "489",
                "display" : "Médecine générale à orientation Oncogériatrie (cancérologie)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "490",
                "display" : "Médecine générale à orientation Pathologies osseuses médicales"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "084",
                "display" : "Médecine hyperbare"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "455",
                "display" : "Médecine thermale"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "135",
                "display" : "Sexologie médicale"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "170",
                "display" : "Soins palliatifs"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR",
                "code" : "139",
                "display" : "Tabacologie"
              }
            }
          ]
        },
        {
          "linkId" : "acteSpecifique",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:specificAct",
          "prefix" : "3.9",
          "text" : "Actes Specifiques",
          "type" : "choice",
          "required" : false,
          "repeats" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0739",
                "display" : "Audiogramme"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1167",
                "display" : "Contention souple d’articulation"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1171",
                "display" : "Dépistage de la déficience visuelle de l'enfant"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1172",
                "display" : "Dépistage des surdités de l'enfant"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1181",
                "display" : "Diagnostic par dermatoscope"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1182",
                "display" : "Diagnostic par echoscope doppler"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0172",
                "display" : "ECG (électrocardiographie)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1186",
                "display" : "Echographie clinique ciblée"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0628",
                "display" : "Education thérapeutique du patient non labellisée ou psychoéducation"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1197",
                "display" : "Évacuation / Excision d'une thrombose hémorroïdaire externe"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0483",
                "display" : "Evaluation des troubles du sommeil (polysomnographie)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1199",
                "display" : "Examen médical d’aptitude à la fonction publique par médecin agréé"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1200",
                "display" : "Examen médical du permis de conduire par médecin agréé"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1208",
                "display" : "Frottis du col utérin"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1215",
                "display" : "Incision / excision d'un panaris superficiel"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0268",
                "display" : "Interruption volontaire de grossesse (IVG) médicamenteuse"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0812",
                "display" : "Médiation Familiale"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1244",
                "display" : "Pose d’implants contraceptifs"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1245",
                "display" : "Pose de DIU"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1247",
                "display" : "Pose de plâtres ou résines, orthèse"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1248",
                "display" : "Prescription initiale d'audioprothèses"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1249",
                "display" : "Prise en charge des migraines et céphalées"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0825",
                "display" : "Prophylaxie pré-exposition par voie orale (PrEP)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0768",
                "display" : "Psychothérapie"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0921",
                "display" : "Repérage des conduites addictives, soins et orientation"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0441",
                "display" : "Soins avec administration de MEOPA"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1269",
                "display" : "Sutures cutanées"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0448",
                "display" : "Synoviorthèse isotopique"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "1270",
                "display" : "Tamponnement nasal antérieur"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0626",
                "display" : "Bilan neuro-psychologique"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0610",
                "display" : "Thérapie individuelle cognitivo-comportementale (TCC)"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0608",
                "display" : "Thérapie individuelle par hypnose"
              }
            }
          ]
        },
        {
          "linkId" : "acteRealiseHorsCabinet",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:outsideOfficeAct",
          "prefix" : "3.10",
          "text" : "Acte spécifique hors cabinet",
          "type" : "choice",
          "required" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR",
                "code" : "0528",
                "display" : "Education thérapeutique du patient (ETP) labellisée"
              }
            }
          ]
        },
        {
          "linkId" : "CompetenceSpecifique",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:specificCompetence",
          "prefix" : "3.11",
          "text" : "Compétence(s) spécifique(s)",
          "type" : "choice",
          "required" : false,
          "repeats" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J33-CompetenceSpecifique-ROR/FHIR/JDV-J33-CompetenceSpecifique-ROR/"
        },
        {
          "linkId" : "niveauExpertise",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:expertiseLevel",
          "prefix" : "3.12",
          "text" : "Niveau d’expertise",
          "type" : "choice",
          "required" : false,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J227-NiveauExpertise-ROR/FHIR/JDV-J227-NiveauExpertise-ROR"
        },
        {
          "linkId" : "typeFermeture",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:temporalityStopService",
          "prefix" : "3.13",
          "text" : "Type de fermeture",
          "type" : "choice",
          "required" : false,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J185-TypeFermeture-ROR/FHIR/JDV-J185-TypeFermeture-ROR"
        },
        {
          "linkId" : "dateFermeture",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.notAvailable:closingRepoeningDate.during.start",
          "prefix" : "3.14",
          "text" : "Date de fermeture",
          "type" : "date",
          "required" : false
        },
        {
          "linkId" : "DatePrevisionnelleReouverture",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.notAvailable:closingRepoeningDate.during.end",
          "prefix" : "3.15",
          "text" : "Date prévisionnelle réouverture",
          "type" : "date",
          "required" : false
        },
        {
          "linkId" : "Horaires",
          "prefix" : "3.16",
          "text" : "Horaires",
          "type" : "group",
          "repeats" : true,
          "item" : [
            {
              "linkId" : "typePlageHoraire",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.availableTime.extension:ror-available-time-type-of-time",
              "prefix" : "3.16.1",
              "text" : "Type de plage horaire",
              "type" : "choice",
              "required" : false,
              "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J41-TypeHoraire-ROR/FHIR/JDV-J41-TypeHoraire-ROR"
            },
            {
              "linkId" : "jourSemaine",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week",
              "prefix" : "3.16.2",
              "text" : "Numéro du jour dans la semaine",
              "type" : "integer",
              "required" : false,
              "repeats" : true
            },
            {
              "linkId" : "Heures",
              "prefix" : "3.16.3",
              "text" : "Heures",
              "type" : "group",
              "required" : false,
              "repeats" : true,
              "item" : [
                {
                  "linkId" : "availableStartTime",
                  "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.availableTime.availableStartTime",
                  "prefix" : "3.16.3.a",
                  "text" : "Début de la plage horaire",
                  "type" : "time",
                  "required" : false
                },
                {
                  "linkId" : "availableEndTime",
                  "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.availableTime.availableEndTime",
                  "prefix" : "3.16.2.b",
                  "text" : "Fin de la plage horaire",
                  "type" : "time",
                  "required" : false
                }
              ]
            }
          ]
        },
        {
          "linkId" : "boiteLettreMSS",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.telecom.value",
          "prefix" : "3.16",
          "text" : "Boîte aux lettres MSS",
          "type" : "string",
          "required" : false
        },
        {
          "linkId" : "modeExercice",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole-unit-exercise-mode#Extension.value[x]",
          "prefix" : "3.17",
          "text" : "Mode d’exercice dans l’UE",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J217-ModeExercice-ROR/FHIR/JDV-J217-ModeExercice-ROR"
        },
        {
          "linkId" : "secteurConventionnement",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.extension:contracted.value[x]",
          "prefix" : "3.18",
          "text" : "Secteur conventionnement",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J130-CNAMAmeliSecteurConventionnement-RASS/FHIR/JDV-J130-CNAMAmeliSecteurConventionnement-RASS/"
        },
        {
          "linkId" : "optionContratAccèsAuxSoins",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.extension:optionCAS",
          "prefix" : "3.19",
          "text" : "Option CAS (Contrat d’Accès aux Soins) / OPTAM (Option Pratique Tarifaire Maîtrisée)",
          "type" : "boolean",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "carteVitaleAcceptee",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole-vitaleAccepted",
          "prefix" : "3.20",
          "text" : "Carte vitale acceptée",
          "type" : "boolean",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "civiliteExercice",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/RORPractitionerRoleName#Extension.extension:exerciseTitle.value[x]:valueCodeableConcept",
          "prefix" : "3.21",
          "text" : "Civilité d’exercice",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J208-CiviliteExercice-ROR/FHIR/JDV-J208-CiviliteExercice-ROR"
        },
        {
          "linkId" : "nomExercice",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/RORPractitionerRoleName#Extension.extension:exerciseLastName",
          "prefix" : "3.22",
          "text" : "Nom d’exercice",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "prenomExercice",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/RORPractitionerRoleName#Extension.extension:exerciseFirstName",
          "prefix" : "3.23",
          "text" : "Prénom d’exercice",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "profession",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.code",
          "prefix" : "3.24",
          "text" : "Profession",
          "type" : "choice",
          "required" : true,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J229-ProfessionSante-ROR/FHIR/JDV-J229-ProfessionSante-ROR"
        },
        {
          "linkId" : "typeSavoirFaire",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:expertiseType",
          "prefix" : "3.25",
          "text" : "Type savoir faire",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J209-TypeSavoirFaire-ROR/FHIR/JDV-J209-TypeSavoirFaire-ROR"
        },
        {
          "linkId" : "specialite",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:specialty",
          "prefix" : "3.26",
          "text" : "Spécialité",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J210-SpecialiteOrdinale-ROR/FHIR/JDV-J210-SpecialiteOrdinale-ROR"
        },
        {
          "linkId" : "competence",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:competence",
          "prefix" : "3.27",
          "text" : "Compétence",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J232-Competence-ROR/FHIR/JDV-J232-Competence-ROR"
        },
        {
          "linkId" : "competenceExclusive",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:exclusiveCompetence",
          "prefix" : "3.28",
          "text" : "CCompétence Exclusive",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J211-CompetenceExclusive-ROR/FHIR/JDV-J211-CompetenceExclusive-ROR"
        },
        {
          "linkId" : "orientationParticuliere",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:specificOrientation",
          "prefix" : "3.29",
          "text" : "Orientation particulière",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J212-OrientationParticuliere-ROR/FHIR/JDV-J212-OrientationParticuliere-ROR"
        },
        {
          "linkId" : "capacite",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:expertiseCapacity",
          "prefix" : "3.30",
          "text" : "Capacité",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J213-CapaciteSavoirFaire-ROR/FHIR/JDV-J213-CapaciteSavoirFaire-ROR"
        },
        {
          "linkId" : "qualificationPAC",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:qualificationPAC",
          "prefix" : "3.31",
          "text" : "Qualification de Praticien Adjoint Contractuel",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J214-QualificationPAC-ROR/FHIR/JDV-J214-QualificationPAC-ROR"
        },
        {
          "linkId" : "DESCNonQualifiant",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:nonQualifyingDESC",
          "prefix" : "3.32",
          "text" : "DESC Non Qualifiant",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J215-DESCnonQualifiant-ROR/FHIR/JDV-J215-DESCnonQualifiant-ROR"
        },
        {
          "linkId" : "droitExerciceComplémentaire",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:supplementaryExerciseRight",
          "prefix" : "3.33",
          "text" : "Droit Exercice Complémentaire",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J216-DroitExerciceCompl-ROR/FHIR/JDV-J216-DroitExerciceCompl-ROR"
        },
        {
          "linkId" : "idNat_PS",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner#Practitioner.identifier.value",
          "prefix" : "3.34",
          "text" : "Identification Nationale du PS",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "boiteLettreMSS-PS",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner#Practitioner.telecom.value",
          "prefix" : "3.35",
          "text" : "Boîte aux lettres du service de messagerie sécurisée de santé",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "Civilite",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner#Practitioner.name.prefix",
          "prefix" : "3.36",
          "text" : "Civilité du PS",
          "type" : "string",
          "required" : false,
          "readOnly" : true,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J207-Civilite-ROR/FHIR/JDV-J207-Civilite-ROR"
        },
        {
          "linkId" : "identifiantLieu",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location#Location.identifier:idLocation.value",
          "prefix" : "3.37",
          "text" : "Identifiant lieu real offre",
          "type" : "string",
          "required" : false,
          "readOnly" : true
        },
        {
          "linkId" : "adresseLieu",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location#Location.address.text",
          "prefix" : "3.38",
          "text" : "Adresse",
          "type" : "string",
          "required" : false
        },
        {
          "linkId" : "communeCog",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog",
          "prefix" : "3.39",
          "text" : "communeCog",
          "type" : "choice",
          "required" : false,
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J124-Commune/FHIR/JDV-J124-Commune"
        },
        {
          "linkId" : "descriptionLieu",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog",
          "prefix" : "3.39",
          "text" : "Description (Le cas échéant, veuillez préciser comment atteindre le lieu)",
          "type" : "string",
          "required" : false
        }
      ]
    },
    {
      "linkId" : "TypeEquipementInfo",
      "prefix" : "4",
      "text" : "Equipement(s) disponible(s)",
      "type" : "group",
      "repeats" : true,
      "item" : [
        {
          "linkId" : "equipmentType",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment#Extension.extension:equipmentType.value[x]",
          "prefix" : "4.a",
          "text" : "Type équipement",
          "type" : "choice",
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J18-EquipementSpecifique-ROR/FHIR/JDV-J18-EquipementSpecifique-ROR"
        },
        {
          "linkId" : "nbInService",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment#Extension.extension:nbInService.value[x]",
          "prefix" : "4.b",
          "text" : "Nombre équipement en service",
          "type" : "integer"
        },
        {
          "linkId" : "equipmentFeature",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit#Extension.extension:equipmentFeature.value[x]",
          "prefix" : "4.c",
          "text" : "Type caractéristique de l'équipement",
          "type" : "choice",
          "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J228-TypeCaracteristiqueEquipement-ROR/FHIR/JDV-J228-TypeCaracteristiqueEquipement-ROR"
        },
        {
          "linkId" : "limitValue",
          "definition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit#Extension.extension:limitValue.value[x]",
          "prefix" : "4.d",
          "text" : "Valeur limite",
          "type" : "quantity"
        }
      ]
    }
  ]
}
```
 Vous pouvez télécharger le json [ici](Questionnaire-ror-questionnaire-offre-de-ville.json) et l'importer dans [https://lhcformbuilder.nlm.nih.gov/](https://lhcformbuilder.nlm.nih.gov/) pour le tester et le faire évoluer via cet IHM.

#### Scénario 2 : Un consommateur souhaite récupérer un ensemble de fiches de saisie sur un critère donné

**Description du scénario :** Un consommateur souhaite récupérer un ensemble de fiches de saisie sur un critère donné
Exemple ???

**Requête :**

`GET [BASE]/Questionnaire?`

**Requête expliquée :**

```sh
[BASE]/Questionnaire? #critère de recherche sur sur la date de mesure.

```