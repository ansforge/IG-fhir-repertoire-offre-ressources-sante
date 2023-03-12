# Paramètres et modificateurs de requêtes FHIR

<table width="100%">
<tbody>
<tr>
<td width="13%">
<p>&nbsp;</p>
</td>
<td colspan="2" width="38%">
<p><strong>Lien vers sp&eacute;cification</strong></p>
</td>
<td width="47%">
<p><strong>Description</strong></p>
</td>
</tr>
<tr>
<td colspan="4" width="100%">
<p><strong>Param&egrave;tres et modificateurs : inclusion</strong></p>
</td>
</tr>
<tr>
<td width="13%">
<p><strong>_revinclude</strong></p>
</td>
<td colspan="2" width="38%">
<p><a href="https://www.hl7.org/fhir/search.html#revinclude">https://www.hl7.org/fhir/search.html#revinclude</a></p>
</td>
<td width="47%">
<p>Indique que les ressources qui font r&eacute;f&eacute;rence &agrave; HealthcareService doivent &ecirc;tre incluses dans la r&eacute;ponse</p>
</td>
</tr>
<tr>
<td width="13%">
<p><strong>_include</strong></p>
</td>
<td colspan="2" width="38%">
<p><a href="https://www.hl7.org/fhir/search.html#include">https://www.hl7.org/fhir/search.html#include</a></p>
</td>
<td width="47%">
<p>Indique que les ressources r&eacute;f&eacute;renc&eacute;es par HealthcareService doivent &ecirc;tre incluses dans la r&eacute;ponse</p>
</td>
</tr>
<tr>
<td width="13%">
<p><strong>:iterate</strong></p>
</td>
<td colspan="2" width="38%">
<p>&nbsp;</p>
</td>
<td width="47%">
<p>Le processus d&rsquo;inclusion peut &ecirc;tre it&eacute;ratif si le modificateur :iterate est ajout&eacute; dans la requ&ecirc;te.</p>
</td>
</tr>
<tr>
<td colspan="3" width="52%">
<p><strong>Param&egrave;tres et modificateurs : chainage invers&eacute; </strong></p>
</td>
<td width="47%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="13%">
<p><strong>_has</strong></p>
</td>
<td colspan="2" width="38%">
<p><a href="http://hl7.org/fhir/search.html#has">http://hl7.org/fhir/search.html#has</a></p>
</td>
<td width="47%">
<p>Permet d&rsquo;utiliser les param&egrave;tres de recherche des ressources faisant r&eacute;f&eacute;rence &agrave; la ressource Location</p>
</td>
</tr>
<tr>
<td colspan="4" width="100%">
<p><strong>Param&egrave;tres et modificateurs&nbsp;: r&eacute;ponses</strong></p>
</td>
</tr>
<tr>
<td width="13%">
<p><strong>_count</strong></p>
</td>
<td colspan="2" width="38%">
<p><a href="https://www.hl7.org/fhir/search.html#count">https://www.hl7.org/fhir/search.html#count</a></p>
</td>
<td width="47%">
<p>Indique le nombre souhait&eacute; par le consommateur de r&eacute;sultat par page.</p>
<p><strong><u>RG_RECH_52&nbsp;:</u></strong> Par d&eacute;faut la recherche retourne 200 r&eacute;sultats maximum par page.</p>
</td>
</tr>
<tr>
<td width="13%">
<p><strong>_sort</strong></p>
</td>
<td colspan="2" width="38%">
<p><a href="http://hl7.org/fhir/search.html#_sort">http://hl7.org/fhir/search.html#_sort</a></p>
</td>
<td width="47%">
<p>Indique dans quel ordre renvoyer les r&eacute;sultats</p>
</td>
</tr>
<tr>
<td width="13%">
<p><strong>_elements</strong></p>
</td>
<td colspan="2" width="38%">
<p><a href="https://www.hl7.org/fhir/search.html#elements">https://www.hl7.org/fhir/search.html#elements</a></p>
</td>
<td width="47%">
<p>Permet au consommateur de demander les &eacute;l&eacute;ments &agrave; retourner de la ressource recherch&eacute;e.</p>
</td>
</tr>
<tr>
<td colspan="3" width="52%">
<p><strong>P</strong><strong>r&eacute;fixe de comparaison</strong></p>
</td>
<td width="47%">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="2" width="19%">
<p><strong>gt, lt, ge, le, sa &amp; eb</strong></p>
</td>
<td width="33%">
<p><a href="https://www.hl7.org/fhir/search.html#date">https://www.hl7.org/fhir/search.html#date</a></p>
</td>
<td width="47%">
<p>Permet d&rsquo;effectuer des recherches comparatives</p>
</td>
</tr>
</tbody>
</table>
