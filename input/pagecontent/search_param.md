<!-- # Critères de recherche --> 

## StructureDefinition-ror-location
<table width="100%">
<tbody>
<tr style="width:100.0%;border:none;
   background:#1D70B8;padding:0cm 5.4pt 0cm 5.4pt;height:23.2pt;mso-height-rule:
   exactly">
<td width="28%">
<p><strong>Attribut ME 3.0</strong></p>
</td>
<td width="14%">
<p><strong>Search parameters </strong></p>
</td>
<td width="6%">
<p><strong>Natif FHIR</strong></p>
</td>
<td width="6%">
<p><strong>Type FHIR</strong></p>
</td>
<td width="43%">
<p><strong>Description</strong></p>
</td>
</tr>
<tr>
<td width="28%">
<p><strong>-</strong></p>
</td>
<td width="14%">
<p>near</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>special</p>
</td>
<td width="43%">
<p>Recherche positionnelle (coordonn&eacute;es g&eacute;ographique)&nbsp;</p>
</td>
</tr>
<tr>
<td width="28%">
<p><strong>-</strong></p>
</td>
<td width="14%">
<p>near-insee-code</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>special</p>
</td>
<td width="43%">
<p>Recherche positionnelle (code INSEE commune)</p>
</td>
</tr>
<tr>
<td width="28%">
<p><strong>-</strong></p>
</td>
<td width="14%">
<p>status</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Statut de la ressource</p>
</td>
</tr>
<tr>
<td width="28%">
<p>Metadonnee/dateMiseJour</p>
</td>
<td width="14%">
<p>_lastUpdated</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>date</p>
</td>
<td width="43%">
<p>Date de derni&egrave;re mise &agrave; jour.</p>
</td>
</tr>
<tr>
<td width="28%">
<p>Metadonnee/regionSource</p>
</td>
<td width="14%">
<p>_tag</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Code de la r&eacute;gion de la source de la donn&eacute;e.</p>
</td>
</tr>
<tr>
<td width="28%">
<p>idExterneSynchro</p>
</td>
<td width="14%">
<p>identifier</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>L&rsquo;identifiant externe de synchronisation est l&rsquo;identifiant d&eacute;fini par le porteur d&rsquo;offre pour la zone d&rsquo;h&eacute;bergement des lits.</p>
<p>Location.identifier.type = 26 | JDV_J236</p>
</td>
</tr>
<tr>
<td width="28%">
<p>identifiant</p>
</td>
<td width="14%">
<p>identifier</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Identifiant fonctionnel du lieu.</p>
<p>Location.identifier.type = 25 | JDV_J236</p>
</td>
</tr>
<tr>
<td width="28%">
<p>fonctionLieu</p>
</td>
<td width="14%">
<p>type</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>La fonction correspond &agrave; la destination d'usage du lieu.</p>
<p>JDV_J198-FonctionLieu-ROR issu de la TRE_R343-FonctionLieu</p>
</td>
</tr>
<tr>
<td width="28%">
<p>Adresse/codePostal</p>
</td>
<td width="14%">
<p>address-postalcode</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>string</p>
</td>
<td width="43%">
<p>Code Postal ou code postal sp&eacute;cifique CEDEX</p>
</td>
</tr>
<tr>
<td width="28%">
<p>Adresse/localite</p>
</td>
<td width="14%">
<p>address-city</p>
</td>
<td width="6%">
<p>Oui</p>
</td>
<td width="6%">
<p>string</p>
</td>
<td width="43%">
<p>Localit&eacute; ou Libell&eacute; du bureau distributeur CEDEX</p>
</td>
</tr>
<tr>
<td width="28%">
<p>Lieu/communeCOG</p>
</td>
<td width="14%">
<p>commune-cog</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Code officiel g&eacute;ographique (COG) de la commune dans laquelle le lieu est situ&eacute;.</p>
<p>JDV_J230-CommuneOM-ROR issu de la TRE_R13-CommuneOM</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/statutCapacite</p>
</td>
<td width="14%">
<p>capacity-status</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Permet de pr&eacute;ciser le statut des lits d&eacute;crits.</p>
<p>JDV_J188-TypeStatutCapacite-ROR issu de la TRE_R330-StatutCapacite</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/nombreCapacite</p>
</td>
<td width="14%">
<p>nb-capacity</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>number</p>
</td>
<td width="43%">
<p>Quantit&eacute; de lits ou places de la capacit&eacute; exprim&eacute;e.</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/natureCapacite</p>
</td>
<td width="14%">
<p>capacity-type</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Indique si la capacit&eacute; est exprim&eacute;e en lits ou en places.</p>
<p>JDV_J187-NatureCapacite-ROR issu de la TRE_R329-NatureCapacite</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/temporaliteCapacite</p>
</td>
<td width="14%">
<p>temporality-capacity</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Indique le moment o&ugrave; cette capacit&eacute; sera effective. Il est ainsi possible de d&eacute;crire la situation imm&eacute;diate, ou de fournir des informations prospectives de capacit&eacute;s, prenant notamment en compte les entr&eacute;es et sorties d&eacute;j&agrave; identifi&eacute;s de patients.</p>
<p>JDV_J189-TemporaliteCapacite-ROR issu de la TRE_R331-Temporalite</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/genreCapaciteDispo</p>
</td>
<td width="14%">
<p>gender-capacity-available</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Genre des patients qui peuvent &ecirc;tre install&eacute;s dans des lits disponibles.</p>
<p>JDV_J190-GenreCapacite-ROR issu de la TRE_R332-GenreCapacite</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/typeFermetureCapacite</p>
</td>
<td width="14%">
<p>capacity-closing-type</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Indique le statut de lits ferm&eacute;s, permettant d&rsquo;identifier le nombre de lits ferm&eacute;s qui peuvent &ecirc;tre r&eacute;activ&eacute;s en cas de besoin et le nombre de ceux qui ne peuvent pas l&rsquo;&ecirc;tre.</p>
<p>JDV_J191-TypeFermetureCapacite-ROR issu de la TRE_R333-TypeFermetureCapacite</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/typeLitSupplementaire</p>
</td>
<td width="14%">
<p>additional-bed-type</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Indique le statut de lits suppl&eacute;mentaires, pour identifier le nombre de lits suppl&eacute;mentaires d&eacute;j&agrave; mobilis&eacute;s et, par typologie de mobilisation possible, le nombre de lits qui ne le sont pas encore.</p>
<p>JDV_J192-TypeLitSupplementaire-ROR issu de la TRE_R334-TypeLitSupplementaire</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/typeCrise</p>
</td>
<td width="14%">
<p>crisis-type</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Indique le type de crise qui permet de mobiliser le nombre de lits suppl&eacute;mentaires d&eacute;crits.</p>
<p>JDV_J194-TypeCrise-ROR issu de la TRE_R336-TypeCrise</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteAccueilOperationnelle/dateMAJCapacite</p>
</td>
<td width="14%">
<p>capacity-update-date</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>date</p>
</td>
<td width="43%">
<p>Date &agrave; laquelle la capacit&eacute; d&rsquo;accueil a &eacute;t&eacute; mise &agrave; jour dans la source.</p>
</td>
</tr>
<tr>
<td width="28%">
<p>EquipementSpecifique/typeEquipement</p>
</td>
<td width="14%">
<p>equipment-type</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Les &eacute;quipements sp&eacute;cifiques d&eacute;crits sont des ressources propres de la structure ou mises &agrave; disposition dans le cadre d&rsquo;une convention &agrave; la condition qu'elles soient utilis&eacute;es sur site.</p>
<p>JDV_J18-EquipementSpecifique-ROR issu de la TRE_R212-Equipement</p>
</td>
</tr>
<tr>
<td width="28%">
<p>LimiteCaracteristiqueEquipement<strong>/</strong>typeCaracteristique</p>
</td>
<td width="14%">
<p>equipment-feature</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Indique la caract&eacute;ristique de l'&eacute;quipement pour laquelle une valeur limite est pr&eacute;cis&eacute;e.</p>
<p>JDV_J228-TypeCaracteristiqueEquipement-ROR</p>
</td>
</tr>
<tr>
<td width="28%">
<p>LimiteCaracteristiqueEquipement/valeurLimite</p>
</td>
<td width="14%">
<p>limit-value</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>quantity</p>
</td>
<td width="43%">
<p>Correspond &agrave; la valeur extr&ecirc;me associ&eacute;e &agrave; une caract&eacute;ristique de l'&eacute;quipement</p>
<p>TRE_R247-UcumUniteMesure</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteHabitation/typeHabitation</p>
</td>
<td width="14%">
<p>residential-type</p>
</td>
<td width="6%">
<p>&nbsp;Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>Le type d&rsquo;habitation renseigne sur la taille et le nombre de pi&egrave;ces d&rsquo;un logement.</p>
<p>JDV_J32-TypeHabitation-ROR issu de la TRE_R242-TypeHabitation</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapaciteHabitation/nbHabitation</p>
</td>
<td width="14%">
<p>residential-number</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>number</p>
</td>
<td width="43%">
<p>Nombre d'habitations du m&ecirc;me type.</p>
</td>
</tr>
<tr>
<td width="28%">
<p>CapacitePriseCharge/affectationTemporaire</p>
</td>
<td width="14%">
<p>temporary-assignement</p>
</td>
<td width="6%">
<p>Non</p>
</td>
<td width="6%">
<p>token</p>
</td>
<td width="43%">
<p>L&rsquo;affectation temporaire permet de r&eacute;server tout ou partie des lits d&rsquo;une zone d&rsquo;h&eacute;bergement pour des patients selon qu&rsquo;ils soient &ndash;ou non- concern&eacute;s par une pathologie (Covid+, Covid-, &hellip;) ou un &eacute;v&egrave;nement (catastrophe naturelle, attentat, &hellip;).</p>
<p>JDV_J195-AffectationTemporaire-ROR issu de la TRE_R337-AffectationTemporaire</p>
</td>
</tr>
</tbody>
</table>

## StructureDefinition-ror-healthcareservice

Critères de recherches applicables à la ressource HealthcareService.
<table width="100%">
<tbody>
<tr style="width:100.0%;border:none;
   background:#1D70B8;padding:0cm 5.4pt 0cm 5.4pt;height:23.2pt;mso-height-rule:
   exactly">
<td width="22%">
<p><strong>Attribut ME 3.0</strong></p>
</td>
<td width="16%">
<p><strong>Search parameters </strong></p>
</td>
<td width="7%">
<p><strong>Natif FHIR</strong></p>
</td>
<td width="9%">
<p><strong>Type FHIR</strong></p>
</td>
<td width="44%">
<p><strong>Description</strong></p>
</td>
</tr>
<tr>
<td width="22%">
<p><strong>-</strong></p>
</td>
<td width="16%">
<p>location</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>reference</p>
</td>
<td width="44%">
<p>R&eacute;f&eacute;rence &agrave; la ressource Location</p>
</td>
</tr>
<tr>
<td width="22%">
<p>Metadonnee/dateMiseJour</p>
</td>
<td width="16%">
<p>_lastUpdated</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>date</p>
</td>
<td width="44%">
<p>Date de derni&egrave;re mise &agrave; jour.</p>
</td>
</tr>
<tr>
<td width="22%">
<p>Metadonnee/regionSource</p>
</td>
<td width="16%">
<p>_tag</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>Code r&eacute;gion de la source de la donn&eacute;e.</p>
</td>
</tr>
<tr>
<td width="22%">
<p>identifiantOffre</p>
</td>
<td width="16%">
<p>identifier</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>Identifiant de l&rsquo;offre</p>
</td>
</tr>
<tr>
<td width="22%">
<p>nomOffre (remplace nomOI)</p>
</td>
<td width="16%">
<p>name</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>string</p>
</td>
<td width="44%">
<p>D&eacute;nomination sous laquelle l'offre est identifi&eacute;e par le porteur d'offre et r&eacute;sultant de l'application de r&egrave;gles de bonne pratique pour &ecirc;tre affichable aupr&egrave;s des professionnels comme du grand public.</p>
</td>
</tr>
<tr>
<td width="22%">
<p>typeOffre (remplace categorieOrganisation)</p>
</td>
<td width="16%">
<p>service-category</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>Le type d'offre permet de distinguer les offres et de les classer en fonction de leur nature particuli&egrave;re, li&eacute;e &agrave; un agr&eacute;ment, un personnel sp&eacute;cialement form&eacute; ou un environnement particuli&egrave;rement adapt&eacute; &agrave; l'&eacute;tat de sant&eacute; des patients.</p>
<p>JDV_J238-TypeOffre-ROR issu de la TRE_R244-CategorieOrganisation</p>
</td>
</tr>
<tr>
<td width="22%">
<p>champActivite</p>
</td>
<td width="16%">
<p>service-type</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>Un champ d&rsquo;activit&eacute; indique le domaine dans lequel s'inscrit l'offre.</p>
<p>JDV_J20-ChampActivite-ROR issu de la TRE_R227-ChampActivite</p>
</td>
</tr>
<tr>
<td width="22%">
<p>secteurPsychiatrique</p>
</td>
<td width="16%">
<p>psychiatric-sector</p>
</td>
<td width="7%">
<p>Non</p>
</td>
<td width="9%">
<p>string</p>
</td>
<td width="44%">
<p>Le secteur de psychiatrie (ou sectorisation) correspond &agrave; une aire g&eacute;ographique &agrave; laquelle sont rattach&eacute;es des structures de relais et de soins qui prennent en charge des patients r&eacute;sidants sur ce secteur.</p>
</td>
</tr>
<tr>
<td width="22%">
<p>modaliteAccueil (remplace accueilSequentielAccepte)</p>
</td>
<td rowspan="7" width="16%">
<p>characteristic</p>
</td>
<td rowspan="7" width="7%">
<p>Oui</p>
</td>
<td rowspan="7" width="9%">
<p>&nbsp;</p>
<p>token</p>
<p>&nbsp;</p>
</td>
<td width="44%">
<p>Une modalit&eacute; d&rsquo;accueil permet de pr&eacute;ciser le mode de prise en charge g&eacute;ographiquement (ex. : sur le lieu de vie), technologiquement (ex. : t&eacute;l&eacute;consultation) ou organisationnellement (ex. : accueil s&eacute;quentiel).</p>
<p>JDV_J226-ModaliteAccueil-ROR issu de la TRE_R338-ModaliteAccueil</p>
</td>
</tr>
<tr>
<td width="22%">
<p>specialisationPriseEnCharge</p>
</td>
<td width="44%">
<p>Une sp&eacute;cialisation de prise en charge correspond &agrave; un regroupement de troubles, de pathologies ou de d&eacute;ficiences qui n&eacute;cessitent la mobilisation d'expertises, de comp&eacute;tences et/ou d'&eacute;quipements sp&eacute;cifiques pouvant &ecirc;tre discriminants dans le choix d&rsquo;orientation du patient.</p>
<p>JDV_J35-SpecialisationDePriseEnCharge-ROR issu de la TRE_R245-SpecialisationDePriseEnCharge</p>
</td>
</tr>
<tr>
<td width="22%">
<p>modePriseEnCharge</p>
</td>
<td width="44%">
<p>Le mode de prise en charge caract&eacute;rise l'h&eacute;bergement ainsi que le niveau de technicit&eacute; et d'intensit&eacute; des soins.</p>
<p>JDV_J19-ModePriseEnCharge-ROR issu de la TRE_R213-ModePriseEnCharge</p>
</td>
</tr>
<tr>
<td width="22%">
<p>temporaliteAccueil</p>
</td>
<td width="44%">
<p>La temporalit&eacute; d&rsquo;accueil apporte une pr&eacute;cision sur le mode de prise en charge. Elle indique si l'&eacute;tablissement m&eacute;dico-social accepte un accueil pour une dur&eacute;e limit&eacute;e dans le temps, de 90 jours maximum par an.</p>
<p>JDV_J30-TemporaliteAccueil-ROR issu de la TRE_R240-TemporaliteAccueil</p>
</td>
</tr>
<tr>
<td width="22%">
<p>acteSpecifique</p>
</td>
<td width="44%">
<p>Un acte sp&eacute;cifique est une action men&eacute;e par un ou plusieurs acteur(s) de sant&eacute; dans le cadre d&rsquo;une activit&eacute;. Cet acte peut correspondre &agrave; une technique sp&eacute;cialis&eacute;e ou traduire une expertise discriminante dans le parcours de sant&eacute;.</p>
<p>JDV_J16-ActeSpecifique-ROR issu de la TRE_R210-ActeSpecifique</p>
</td>
</tr>
<tr>
<td width="22%">
<p>professionRessource</p>
</td>
<td width="44%">
<p>La profession ressource traduit la mobilisation de m&eacute;tiers qui constituent un facteur diff&eacute;renciant dans la r&eacute;alisation de la prestation.</p>
<p>JDV_J186-ProfessionRessource-ROR issu de la</p>
</td>
</tr>
<tr>
<td width="22%">
<p>niveauExpertise</p>
</td>
<td width="44%">
<p>Le niveau d'expertise atteste du niveau de ressources humaines et mat&eacute;rielles engag&eacute;es dans la r&eacute;alisation de l'offre et d&eacute;fini dans un cahier des charges officiel.</p>
<p>JDV-J227-NiveauExpertise-ROR issu de la TRE_R253-TypeMaternite</p>
</td>
</tr>
<tr>
<td width="22%">
<p>competenceSpecifique</p>
</td>
<td width="16%">
<p>specific-competence</p>
</td>
<td width="7%">
<p>Non</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>La comp&eacute;tence sp&eacute;cifique correspond &agrave; une capacit&eacute; ou connaissance reconnue qui permet ou facilite l&rsquo;accueil d&rsquo;une personne. La comp&eacute;tence sp&eacute;cifique n&rsquo;est ni une sp&eacute;cialit&eacute; ordinale, ni une profession</p>
<p>JDV-J33-CompetenceSpecifique-ROR issu de la TRE_R243-CompetenceSpecifique</p>
</td>
</tr>
<tr>
<td width="22%">
<p>zoneIntervention</p>
</td>
<td width="16%">
<p>intervention-zone</p>
</td>
<td width="7%">
<p>Non</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>Correspond au p&eacute;rim&egrave;tre g&eacute;ographique dans lequel habitent les personnes pouvant &ecirc;tre prises en charge pour la prestation d&eacute;crite.</p>
<p>JDV-J223-TypeDivisionTerritoriale-ROR issu de la TRE_R201-TypeDivisionTerritoriale</p>
</td>
</tr>
<tr>
<td width="22%">
<p>ActiviteOperationnelle/ activiteOperationnelle</p>
</td>
<td width="16%">
<p>speciality</p>
</td>
<td width="7%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>Une activit&eacute; op&eacute;rationnelle est un ensemble coh&eacute;rent d&rsquo;actions et de pratiques mises en &oelig;uvre pour r&eacute;pondre aux besoins en Sant&eacute; de la personne.</p>
<p>JDV_J17-ActiviteOperationnelle-ROR issu de la TRE_R211-ActiviteOperationnelle</p>
</td>
</tr>
<tr>
<td width="22%">
<p>Patientele/publicPrisEnCharge</p>
</td>
<td width="16%">
<p>patient-type</p>
</td>
<td width="7%">
<p>Non</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="44%">
<p>Ensemble de personnes qui pr&eacute;sentent des caract&egrave;ristiques psychologiques, intellectuelles, physiques, psycho-motrices, comportementales leur pemettant de b&eacute;n&eacute;ficier de la prestation d&eacute;crite.</p>
<p>JDV-J29-PublicPrisEnCharge-ROR issu de la TRE_R239-PublicPrisEnCharge</p>
</td>
</tr>
<tr>
<td width="22%">
<p>Patientele/ageMin</p>
</td>
<td width="16%">
<p>age-range-low</p>
</td>
<td width="7%">
<p>Non</p>
</td>
<td width="9%">
<p>quantity</p>
</td>
<td width="44%">
<p>Age minimum (inclus) des personnes leur permettant de b&eacute;n&eacute;ficier de la prestation d&eacute;crite.</p>
<p>JDV_J37-UcumUniteTemps issu de la TRE_R247-UcumUniteMesure</p>
</td>
</tr>
<tr>
<td width="22%">
<p>Patientele/ageMax</p>
</td>
<td width="16%">
<p>age-range-high</p>
</td>
<td width="7%">
<p>Non</p>
</td>
<td width="9%">
<p>quantity</p>
</td>
<td width="44%">
<p>Age maximum (inclus) des personnes leur permettant de b&eacute;n&eacute;ficier de la prestation d&eacute;crite.</p>
<p>JDV_J37-UcumUniteTemps issu de la TRE_R247-UcumUniteMesure</p>
</td>
</tr>
</tbody>
</table>

## StructureDefinition-ror-organization

Critères de recherches applicables à la ressource Organization.

<table width="100%">
<tbody>
<tr style="width:100.0%;border:none;
   background:#1D70B8;padding:0cm 5.4pt 0cm 5.4pt;height:23.2pt;mso-height-rule:
   exactly">
<td width="17%">
<p><strong>Attribut ME 3.0</strong></p>
</td>
<td width="17%">
<p><strong>Search parameters </strong></p>
</td>
<td width="8%">
<p><strong>Natif FHIR</strong></p>
</td>
<td width="9%">
<p><strong>Type FHIR</strong></p>
</td>
<td width="46%">
<p><strong>Description</strong></p>
</td>
</tr>
<tr>
<td width="17%">
<p>Metadonnee/dateMiseJour</p>
</td>
<td width="17%">
<p>_lastUpdated</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>Date</p>
</td>
<td width="46%">
<p>Date de derni&egrave;re mise &agrave; jour.</p>
</td>
</tr>
<tr>
<td width="17%">
<p>Metadonnee/regionSource</p>
</td>
<td width="17%">
<p>_tag</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="46%">
<p>Code r&eacute;gion de la source de la donn&eacute;e.</p>
</td>
</tr>
<tr>
<td width="17%">
<p>idNat_Struct&nbsp;</p>
</td>
<td width="17%">
<p>identifier</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>Token</p>
</td>
<td width="46%">
<p>Identification nationale de l'Entit&eacute; G&eacute;ographique d&eacute;finie dans le CI-SIS.</p>
</td>
</tr>
<tr>
<td width="17%">
<p>nomOI</p>
</td>
<td width="17%">
<p>name</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>string</p>
</td>
<td width="46%">
<p>Nom de l'organisation interne.</p>
</td>
</tr>
<tr>
<td width="17%">
<p>numFINESS</p>
</td>
<td width="17%">
<p>identifier</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>Token</p>
</td>
<td width="46%">
<p>Num&eacute;ro FINESS de l'entit&eacute; g&eacute;ographique.</p>
</td>
</tr>
<tr>
<td width="17%">
<p>categorieEG</p>
</td>
<td width="17%">
<p>type</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>Token</p>
</td>
<td width="46%">
<p>La cat&eacute;gorie d'&eacute;tablissement est le cadre r&eacute;glementaire dans lequel s'exerce l'activit&eacute; de l'entit&eacute; g&eacute;ographique.</p>
<p>JDV_J55-CategorieEG-ROR issu de TRE_R66-CategorieEtablissement, TRE_R316-AutreCategorieEtablissement et TRE_R02-SecteurActivite</p>
</td>
</tr>
<tr>
<td width="17%">
<p>zonePoser</p>
</td>
<td width="17%">
<p>drop-zone</p>
</td>
<td width="8%">
<p>Non</p>
</td>
<td width="9%">
<p>Token</p>
</td>
<td width="46%">
<p>Cet indicateur pr&eacute;cise l&rsquo;existence d&rsquo;une zone de poser pour h&eacute;licopt&egrave;re</p>
</td>
</tr>
<tr>
<td width="17%">
<p>typeFermeture</p>
</td>
<td width="17%">
<p>closing-type</p>
</td>
<td width="8%">
<p>Non</p>
</td>
<td width="9%">
<p>Token</p>
</td>
<td width="46%">
<p>Type de fermeture de l'entit&eacute; g&eacute;ographique, au sens des r&egrave;gles de gestion du SI FINESS (par exemple: fermeture d&eacute;finitive, fermeture provisoire).</p>
<p>JDV-J201-TypeFermeture-ROR issu de la TRE_R286-TypeFermeture</p>
</td>
</tr>
<tr>
<td width="17%">
<p>dateFermeture</p>
</td>
<td width="17%">
<p>period-end</p>
</td>
<td width="8%">
<p>Non</p>
</td>
<td width="9%">
<p>Date</p>
</td>
<td width="46%">
<p>Date de fermeture de l'entit&eacute; g&eacute;ographique. La date doit &ecirc;tre sup&eacute;rieure &agrave; la date d&rsquo;ouverture.</p>
</td>
</tr>
</tbody>
</table>

## StructureDefinition-ror-practioner

Critères de recherches applicables à la ressource Practioner.

<table width="100%">
<tbody>
<tr style="width:100.0%;border:none;
   background:#1D70B8;padding:0cm 5.4pt 0cm 5.4pt;height:23.2pt;mso-height-rule:
   exactly">
<td width="17%">
<p><strong>Attribut ME 3.0</strong></p>
</td>
<td width="17%">
<p><strong>Search parameters </strong></p>
</td>
<td width="8%">
<p><strong>Natif FHIR</strong></p>
</td>
<td width="9%">
<p><strong>Type FHIR</strong></p>
</td>
<td width="46%">
<p><strong>Description</strong></p>
</td>
</tr>
<tr>
<td width="17%">
<p>Metadonnee/dateMiseJour</p>
</td>
<td width="17%">
<p>_lastUpdated</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>Date</p>
</td>
<td width="46%">
<p>Date de derni&egrave;re mise &agrave; jour.</p>
</td>
</tr>
<tr>
<td width="17%">
<p>Metadonnee/regionSource</p>
</td>
<td width="17%">
<p>_tag</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="46%">
<p>Code r&eacute;gion de la source de la donn&eacute;e.</p>
</td>
</tr>
</tbody>
</table>

## StructureDefinition-ror-practionerrole

Critères de recherches applicables à la ressource PractionerRole.

<table width="100%">
<tbody>
<tr style="width:100.0%;border:none;
   background:#1D70B8;padding:0cm 5.4pt 0cm 5.4pt;height:23.2pt;mso-height-rule:
   exactly">
<td width="17%">
<p><strong>Attribut ME 3.0</strong></p>
</td>
<td width="17%">
<p><strong>Search parameters </strong></p>
</td>
<td width="8%">
<p><strong>Natif FHIR</strong></p>
</td>
<td width="9%">
<p><strong>Type FHIR</strong></p>
</td>
<td width="46%">
<p><strong>Description</strong></p>
</td>
</tr>
<tr>
<td width="17%">
<p>Metadonnee/dateMiseJour</p>
</td>
<td width="17%">
<p>_lastUpdated</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>Date</p>
</td>
<td width="46%">
<p>Date de derni&egrave;re mise &agrave; jour.</p>
</td>
</tr>
<tr>
<td width="17%">
<p>Metadonnee/regionSource</p>
</td>
<td width="17%">
<p>_tag</p>
</td>
<td width="8%">
<p>Oui</p>
</td>
<td width="9%">
<p>token</p>
</td>
<td width="46%">
<p>Code r&eacute;gion de la source de la donn&eacute;e.</p>
</td>
</tr>
</tbody>
</table>