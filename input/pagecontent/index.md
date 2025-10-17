<!-- Page d'accueil -->
<!--<blockquote class="stu-note">
<p>
Version snapshot à destination des Implémenteurs du ROR National et des recetteurs. Pour les futurs consommateurs cette version peut être utilisée à titre d'information, afin d'obtenir de la visibilité sur les spécifications de l'API FHIR en cours d'implémentation.
</p>
</blockquote>
 -->
<!--<blockquote class="stu-note">
<p>
[WIP]Version ci-build du Guide d'Implémentation de l'API FHIR du ROR (en cours de construction)
</p>
</blockquote>
-->

<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
The French directory of healthcare and medico-social support services and resources (<a href="https://esante.gouv.fr/produits-services/repertoire-ror">ROR</a>) is the repository (in the sense of a repository of data) for describing the healthcare services offered by Health facility, medico-social establishments and services, and local structures in France.
The aim of this implementation guide is to define the specifications of the ROR FHIR API, enabling any authorized application to search for a healthcare offer and its capabilities (availability, equipment, etc.).
</p>
<div class="figure">
    <img src="ror-logo.png" alt="ROR" title="Logo du ROR" style="width:100%;">
</div>

### Informations sur ce guide d'implémentation

<b>Ce Guide d'Implémentation FHIR du ROR se référence au modèle d`exposition 3.1 du ROR.
<br>
Cette version du guide d’implementation cible l’implémentation de l’API FHIR dans la solution du ROR National version 4.3.</b>

Dans ce guide vous pourrez retrouver des indicateurs afin d'identifier la maturité de certains éléments ou certaines sections de la manière suivante :

- <code><span style="color: #E67E22;">deprecated</span></code> => correspond à ce qui ne sera bientôt plus disponible dans la solution ROR National
- <code><span style="color: #ff0000;">draft</span></code> => correspond à ce qui est en cours d'implémentation dans la solution ROR National et donc pas encore validé et disponible. L'objectif de cet indicateur est de donner de la visibilité sur ce qui est en cours d'implémentation dans la solution ROR National.
- <code><span style="color: #8E44AD;">under consideration</span></code> => correspond à ce qui est en cours de réflexion dans la solution ROR National. L'objectif de cet indicateur est de donner de la visibilité sur ce qui est à l'étude pour les prochaines versions du ROR National.

Les autres éléments ou section qui n'ont pas ces mentions doivent être implémentés et disponibles dans la version courante de la solution du ROR National.

Pour plus d'information sur les versions de l'Implementation Guide n'hésitez pas à consulter <a href="https://interop.esante.gouv.fr/ig/fhir/ror/history.html">l'Historique</a>
Si vous avez des questions ou des suggestions concernant ce guide vous pouvez nous les adresser <a href="https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/new/choose">ici</a>.

### Description fonctionnelle de l'API

#### Le ROR, référentiel de données de description de l'offre de santé

##### Le référentiel ROR

Le Répertoire de l'Offre et des Ressources en santé et accompagnement
médico-social ([ROR](https://esante.gouv.fr/produits-services/repertoire-ror)) est le référentiel (au sens gisement de données) de
description de l'offre de santé des établissements sanitaires, des
établissements et services du médico-social et des structures de ville.

Les acteurs de santé ont convergé sur une vision commune de l'offre de
santé. L'offre de santé est définie par une ou plusieurs activités
opérationnelles, réalisée(s) dans le cadre d'un mode de prise en charge
et pour une patientèle, et par les ressources qui permettent la
réalisation de ces activités opérationnelles sur un lieu donné. Ces
ressources concernent principalement les équipements spécifiques, les
capacités d'accueil et les compétences que l'on souhaite identifier pour
cette offre.
<table align="center">
    <tr>
        <td align="center">
            <div class="figure">
                <img src="image5.png" alt="ROR Modèle d'exposition v3" title="ROR Modèle d'exposition v3">
            </div>
        </td>    
    </tr>
    <tr>
        <td align="center">
            <b>Référentiel ROR</b>
        </td>
    </tr>
</table>

Le ROR, en tant que référentiel de description de l'offre de santé (au
sens gisement de données), a une couverture nationale. Il doit permettre
à toute application autorisée de rechercher une offre de santé.

##### Instances des ROR régionaux

Dans les faits, chaque région met en œuvre, alimente et exploite une
partie du référentiel limité à une couverture régionale, sans
intersection de périmètre entre les régions. Chaque région est maîtresse
de la solution technique qu'elle met en œuvre.

Les solutions techniques sont qualifiées de « solution ROR ». Deux
solutions ROR sont déployées sur le territoire : ROR IR et ROR IeSS.

L'instance régionale de la solution ROR mise en œuvre dans une région,
et alimentée de la description de l'offre de santé de la région est
appelée « ROR régional ».

Chaque ROR régional propose à ses utilisateurs un écran de recherche de
l'offre régionale, et permet une recherche d'offre dans les autres
régions. Historiquement, cette recherche d'une offre au-delà de la
région s'appuie sur des services proposés par chaque ROR régional, et
nécessite que chaque instance régionale soit interconnectée avec les
instances des 17 autres régions.

##### Instance du ROR national

Dans un contexte de sollicitation croissante des ROR régionaux, la
nécessité d'améliorer la qualité du service rendu aux utilisateurs et le
vieillissement technologique des solutions logicielles ROR rendent
indispensable une évolution des logiciels et de leur architecture. Pour
répondre à ce besoin, il a été décidé collectivement en 2020 de
construire une solution logicielle ROR unique, avec un stockage
centralisé des données (base de données unique) qui remplacera à terme
les solutions ROR régionales.

La construction du ROR nationale est réalisée par étape. Lors des deux
premières étapes, le ROR national est alimenté par les ROR régionaux.

La mise en œuvre du ROR national et de son webservice de recherche
permet de centraliser la recherche auprès du ROR national en
remplacement des différentes instances régionales.

Ce service peut ainsi permettre à une instance régionale de s'appuyer
sur le ROR national pour réaliser l’équivalent d’une « recherche interROR », et permet
également aux autres systèmes consommateurs des données du ROR de
disposer d'un service pour lancer une recherche et obtenir en résultat
la description des offres de santé recherchées.

Ce webservice, basée sur le modèle d'exposition V3 au format FHIR,
permet aux systèmes consommateurs de réaliser une recherche sur les
informations capacitaires en lits/places, sous réserve de disposer des
droits d'accès adaptés.

#### Modélisation

##### Données utilisées pour la modélisation UML

Les attributs de description de l'offre, fournis en résultat d'une
recherche, sont décrits dans le document ROR-modèle d'exposition. Ces attributs sont décrits en utilisant la norme UML et en
cohérence avec le Modèle des Objets de Santé (MOS) et les nomenclatures
associées (NOS) gérés par l'ANS.

Ces attributs sont associés à des règles de gestion communes qui sont
également présentées dans le document ROR-modèle d'exposition
<a href="https://industriels.esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0_ModeleExposition_VFD2.1_20231031.pdf">[Ref_01]</a>.

##### Nomenclatures

La capacité à échanger de l'information entre les ROR et les systèmes
consommateurs repose sur l'interopérabilité sémantique et syntaxique des
deux systèmes. On entend par « sémantique » à la fois la signification
des mots et le rapport entre le sens des mots (homonymie, synonymie,
etc.). Assurer l'interopérabilité des échanges nécessite donc que chacun
de ces systèmes puisse interpréter la signification de l'information
reçue et utiliser cette information en correspondance sémantique avec
ses données locales.

Cet objectif conduit à mettre en œuvre des nomenclatures (terminologies
de référence et jeux de valeurs) qui permettent de renseigner les
concepts du modèle d'exposition et qui font le lien avec les concepts
des modèles des ROR régionaux. Ces nomenclatures d'échange sont
précisées dans le document de référence ROR-modèle d'exposition
<a href="https://industriels.esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0_ModeleExposition_VFD2.1_20231031.pdf">[Ref_01]</a>.

Chaque nomenclature des outils interopérables doit trouver son
équivalence dans la nomenclature du concept associé dans le modèle
d'exposition.

Les systèmes consommateurs du web service du ROR national doivent
pouvoir intégrer les évolutions régulières des nomenclatures (ajout de
code, modification de libellé, mise en obsolescence d'un code,
réactivation de code).

##### Ressources profilées

La liste ci-dessous expose la liste des profils génériques profilés.

{% sql SELECT '[' || Name ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description FROM Resources WHERE Type = 'StructureDefinition' and Description like "Profil%"%}

<div class="figure" style="width:100%;">
    <p>{% include vue-fonctionnelle-fhir.svg %}</p>
</div>

#### Dépendances

{% include dependency-table.xhtml %}

#### Propriété intellectuelle

{% include ip-statements.xhtml %}

#### Documents de référence

<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" align="left" width="100%" style="border-collapse:collapse;mso-table-layout-alt:fixed;
 border:none;mso-border-alt:solid #AD0000 1.0pt;mso-yfti-tbllook:672;
 mso-table-lspace:7.05pt;margin-left:4.8pt;mso-table-rspace:7.05pt;margin-right:
 4.8pt;mso-table-anchor-vertical:paragraph;mso-table-anchor-horizontal:margin;
 mso-table-left:left;mso-table-top:3.65pt;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <thead>
  <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:23.2pt;mso-height-rule:
   exactly">
   <td width="100%" colspan="3" valign="top" style="width:100.0%;border:none;
   background:#1D70B8;padding:0cm 5.4pt 0cm 5.4pt;height:23.2pt;mso-height-rule:
   exactly">
   <p class="TableParagraph" align="center" style="margin-top:5.35pt;margin-right:
   0cm;margin-bottom:0cm;margin-left:5.15pt;margin-bottom:.0001pt;text-align:
   center;mso-element:frame;mso-element-frame-hspace:7.05pt;mso-element-wrap:
   around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:
   margin;mso-element-top:3.65pt;mso-height-rule:exactly"><b><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;
   mso-bidi-font-family:&quot;Times New Roman&quot;;color:white;mso-ansi-language:FR">Documents
   de<span style="letter-spacing:-.35pt"> </span>référence<o:p></o:p></span></b></p>
   </td>
  </tr>
  <tr style="mso-yfti-irow:1;height:18.7pt">
   <td width="34%" valign="top" style="width:34.72%;border:none;background:#70706F;
   padding:0cm 5.4pt 0cm 5.4pt;height:18.7pt">
   <p class="TableParagraph" align="center" style="margin-top:3.2pt;margin-right:
   .05pt;margin-bottom:0cm;margin-left:0cm;margin-bottom:.0001pt;text-align:
   center;mso-element:frame;mso-element-frame-hspace:7.05pt;mso-element-wrap:
   around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:
   margin;mso-element-top:3.65pt;mso-height-rule:exactly"><b><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;
   mso-bidi-font-family:&quot;Times New Roman&quot;;color:white;mso-ansi-language:FR">Référence</span></b><b><span style="font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:
   Arial;color:white;mso-ansi-language:FR"><o:p></o:p></span></b></p>
   </td>
   <td width="9%" valign="top" style="width:9.72%;border:none;background:#70706F;
   padding:0cm 5.4pt 0cm 5.4pt;height:18.7pt">
   <p class="TableParagraph" align="center" style="margin-top:3.2pt;text-align:
   center;mso-element:frame;mso-element-frame-hspace:7.05pt;mso-element-wrap:
   around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:
   margin;mso-element-top:3.65pt;mso-height-rule:exactly"><b><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;
   mso-hansi-font-family:Calibri;mso-bidi-font-family:&quot;Times New Roman&quot;;
   color:white;mso-ansi-language:FR">Version</span></b><b><span style="font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:
   Arial;color:white;mso-ansi-language:FR"><o:p></o:p></span></b></p>
   </td>
   <td width="55%" valign="top" style="width:55.56%;border:none;background:#70706F;
   padding:0cm 5.4pt 0cm 5.4pt;height:18.7pt">
   <p class="TableParagraph" align="center" style="margin-top:3.2pt;text-align:
   center;mso-element:frame;mso-element-frame-hspace:7.05pt;mso-element-wrap:
   around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:
   margin;mso-element-top:3.65pt;mso-height-rule:exactly"><b><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;
   mso-hansi-font-family:Calibri;mso-bidi-font-family:&quot;Times New Roman&quot;;
   color:white;mso-ansi-language:FR">Descriptif<o:p></o:p></span></b></p>
   </td>
  </tr>
 </thead>
 <tbody><tr style="mso-yfti-irow:2;height:44.2pt;mso-height-rule:exactly">
  <td width="34%" style="width:34.72%;border:solid #5B9BD5 1.0pt;mso-border-alt:
  solid #5B9BD5 .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;mso-height-rule:
  exactly">
  <p class="TableParagraph" style="margin-top:6.0pt;margin-right:5.1pt;
  margin-bottom:6.0pt;margin-left:5.1pt;mso-element:frame;mso-element-frame-hspace:
  7.05pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:margin;mso-element-top:3.65pt;mso-height-rule:
  exactly"><a name="Ref_01"><span style="font-size:10.0pt;mso-ansi-language:
  FR">[</span></a><span style="mso-bookmark:Ref_01"><span style="font-size:
  10.0pt;mso-bidi-font-size:11.0pt;mso-ansi-language:FR">Ref_01</span></span><span style="mso-bookmark:Ref_01"><span style="font-size:10.0pt;mso-ansi-language:
  FR">] </span></span><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;
  color:#0070C0;mso-ansi-language:FR">ROR – Modèle d’exposition</span><b><span style="font-size:10.0pt;mso-ansi-language:FR"><o:p></o:p></span></b></p>
  </td>
  <td width="9%" style="width:9.72%;border:solid #5B9BD5 1.0pt;border-left:
  none;mso-border-left-alt:solid #5B9BD5 .5pt;mso-border-alt:solid #5B9BD5 .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;mso-height-rule:exactly">
  <p class="TableParagraph" align="center" style="margin-top:6.0pt;margin-right:
  0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.05pt;mso-element-wrap:around;mso-element-anchor-vertical:
  paragraph;mso-element-anchor-horizontal:margin;mso-element-top:3.65pt;
  mso-height-rule:exactly"><span style="font-size:10.0pt;mso-ascii-font-family:
  Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:Arial;
  mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
  Calibri;mso-bidi-theme-font:minor-latin;mso-ansi-language:FR">3.0<o:p></o:p></span></p>
  </td>
  <td width="55%" style="width:55.56%;border:solid #5B9BD5 1.0pt;border-left:
  none;mso-border-left-alt:solid #5B9BD5 .5pt;mso-border-alt:solid #5B9BD5 .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;mso-height-rule:exactly">
  <p class="MsoNormal" style="mso-element:frame;mso-element-frame-hspace:7.05pt;
  mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:
  margin;mso-element-top:3.65pt;mso-height-rule:exactly"><span style="mso-bidi-font-size:10.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif;
  mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:
  minor-latin"><a href="https://industriels.esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0_ModeleExposition_VFD2.1_20231031.pdf"><span style="font-size:11.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif">Description des données communes aux échanges entre les ROR et
  les SI externes.</span></a><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:3;height:44.2pt;mso-height-rule:exactly">
  <td width="34%" style="width:34.72%;border:solid #5B9BD5 1.0pt;border-top:
  none;mso-border-top-alt:solid #5B9BD5 .5pt;mso-border-alt:solid #5B9BD5 .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;mso-height-rule:exactly">
  <p class="TableParagraph" style="margin-top:6.0pt;margin-right:5.1pt;
  margin-bottom:6.0pt;margin-left:5.1pt;mso-element:frame;mso-element-frame-hspace:
  7.05pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:margin;mso-element-top:3.65pt;mso-height-rule:
  exactly"><a name="Ref_03"><span lang="EN-US" style="font-size:10.0pt">[</span></a><span style="mso-bookmark:Ref_03"><span lang="EN-US" style="font-size:10.0pt;
  mso-bidi-font-size:11.0pt">Ref_</span></span><span style="mso-bookmark:Ref_03"><span lang="EN-US" style="font-size:10.0pt">02] </span></span><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:11.0pt;color:#0070C0">ROR -Mapping
  FHIR et modèle d'exposition 3.0</span><span lang="EN-GB" style="font-size:10.0pt;mso-ansi-language:
  EN-GB"><o:p></o:p></span></p>
  </td>
  <td width="9%" style="width:9.72%;border-top:none;border-left:none;
  border-bottom:solid #5B9BD5 1.0pt;border-right:solid #5B9BD5 1.0pt;
  mso-border-top-alt:solid #5B9BD5 .5pt;mso-border-left-alt:solid #5B9BD5 .5pt;
  mso-border-alt:solid #5B9BD5 .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;
  mso-height-rule:exactly">
  <p class="TableParagraph" align="center" style="margin-top:6.0pt;margin-right:
  0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.05pt;mso-element-wrap:around;mso-element-anchor-vertical:
  paragraph;mso-element-anchor-horizontal:margin;mso-element-top:3.65pt;
  mso-height-rule:exactly"><span style="font-size:10.0pt;mso-ascii-font-family:
  Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:Arial;
  mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
  Calibri;mso-bidi-theme-font:minor-latin;mso-ansi-language:FR">1.0<o:p></o:p></span></p>
  </td>
  <td width="55%" style="width:55.56%;border-top:none;border-left:none;
  border-bottom:solid #5B9BD5 1.0pt;border-right:solid #5B9BD5 1.0pt;
  mso-border-top-alt:solid #5B9BD5 .5pt;mso-border-left-alt:solid #5B9BD5 .5pt;
  mso-border-alt:solid #5B9BD5 .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;
  mso-height-rule:exactly">
  <p class="MsoNormal" style="mso-element:frame;mso-element-frame-hspace:7.05pt;
  mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:
  margin;mso-element-top:3.65pt;mso-height-rule:exactly"><span style="mso-bidi-font-size:10.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif;
  mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:
  minor-latin">Description du mapping des concepts</span> <span style="mso-bidi-font-size:10.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif;
  mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:
  minor-latin">du modèle d’exposition ROR au format FHIR.</span></p>
  <a href="mapping.html#mapping-fhir-du-mod%C3%A8le-de-donn%C3%A9es-du-ror"><span style="font-size:11.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif">Mapping FHIR du modèle de données du ROR</span></a>
  </td>
 </tr>
 <tr style="mso-yfti-irow:4;height:44.2pt;mso-height-rule:exactly">
  <td width="34%" style="width:34.72%;border:solid #5B9BD5 1.0pt;border-top:
  none;mso-border-top-alt:solid #5B9BD5 .5pt;mso-border-alt:solid #5B9BD5 .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;mso-height-rule:exactly">
  <p class="TableParagraph" style="margin-top:6.0pt;margin-right:5.1pt;
  margin-bottom:6.0pt;margin-left:5.1pt;mso-element:frame;mso-element-frame-hspace:
  7.05pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:margin;mso-element-top:3.65pt;mso-height-rule:
  exactly"><span style="font-size:10.0pt;mso-ansi-language:FR">[</span><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;mso-ansi-language:FR">Ref_</span><span style="font-size:10.0pt;mso-ansi-language:FR">03] </span><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;color:#0070C0;mso-ansi-language:
  FR">Swagger du WS de recherche FHIR du ROR</span><span style="font-size:10.0pt;
  mso-ansi-language:FR"><o:p></o:p></span></p>
  </td>
  <td width="9%" style="width:9.72%;border-top:none;border-left:none;
  border-bottom:solid #5B9BD5 1.0pt;border-right:solid #5B9BD5 1.0pt;
  mso-border-top-alt:solid #5B9BD5 .5pt;mso-border-left-alt:solid #5B9BD5 .5pt;
  mso-border-alt:solid #5B9BD5 .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;
  mso-height-rule:exactly">
  <p class="TableParagraph" align="center" style="margin-top:6.0pt;margin-right:
  0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.05pt;mso-element-wrap:around;mso-element-anchor-vertical:
  paragraph;mso-element-anchor-horizontal:margin;mso-element-top:3.65pt;
  mso-height-rule:exactly"><span style="font-size:10.0pt;mso-ascii-font-family:
  Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:Arial;
  mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
  Calibri;mso-bidi-theme-font:minor-latin;mso-ansi-language:FR">2.0<o:p></o:p></span></p>
  </td>
  <td width="55%" style="width:55.56%;border-top:none;border-left:none;
  border-bottom:solid #5B9BD5 1.0pt;border-right:solid #5B9BD5 1.0pt;
  mso-border-top-alt:solid #5B9BD5 .5pt;mso-border-left-alt:solid #5B9BD5 .5pt;
  mso-border-alt:solid #5B9BD5 .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;
  mso-height-rule:exactly">
  <p class="MsoNormal" align="left" style="text-align:left;mso-element:frame;
  mso-element-frame-hspace:7.05pt;mso-element-wrap:around;mso-element-anchor-vertical:
  paragraph;mso-element-anchor-horizontal:margin;mso-element-top:3.65pt;
  mso-height-rule:exactly"><span style="mso-bidi-font-size:10.0pt;line-height:
  115%;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;
  mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin">Description
  d’interface de l’API de recherche<br>
  (en cours de construction)
  </span>
  <span style="mso-bidi-font-size:10.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif;
  mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:
  minor-latin"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:5;height:44.2pt;mso-height-rule:exactly">
  <td width="34%" style="width:34.72%;border:solid #5B9BD5 1.0pt;border-top:
  none;mso-border-top-alt:solid #5B9BD5 .5pt;mso-border-alt:solid #5B9BD5 .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;mso-height-rule:exactly">
  <p class="TableParagraph" style="margin-top:6.0pt;margin-right:5.1pt;
  margin-bottom:6.0pt;margin-left:5.1pt;mso-element:frame;mso-element-frame-hspace:
  7.05pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:margin;mso-element-top:3.65pt;mso-height-rule:
  exactly"><a name="Ref_04"><span style="font-size:10.0pt;mso-ansi-language:
  FR">[Ref_04] </span></a><span style="font-size:10.0pt;mso-bidi-font-size:
  11.0pt;color:#0070C0;mso-ansi-language:FR">Politique d’accès</span><span style="font-size:10.0pt;mso-ansi-language:FR"><o:p></o:p></span></p>
  </td>
  <td width="9%" style="width:9.72%;border-top:none;border-left:none;
  border-bottom:solid #5B9BD5 1.0pt;border-right:solid #5B9BD5 1.0pt;
  mso-border-top-alt:solid #5B9BD5 .5pt;mso-border-left-alt:solid #5B9BD5 .5pt;
  mso-border-alt:solid #5B9BD5 .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;
  mso-height-rule:exactly">
  <p class="TableParagraph" align="center" style="margin-top:6.0pt;margin-right:
  0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.05pt;mso-element-wrap:around;mso-element-anchor-vertical:
  paragraph;mso-element-anchor-horizontal:margin;mso-element-top:3.65pt;
  mso-height-rule:exactly"><span style="font-size:10.0pt;mso-ascii-font-family:
  Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:Arial;
  mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
  Calibri;mso-bidi-theme-font:minor-latin;mso-ansi-language:FR">3.0<o:p></o:p></span></p>
  </td>
  <td width="55%" style="width:55.56%;border-top:none;border-left:none;
  border-bottom:solid #5B9BD5 1.0pt;border-right:solid #5B9BD5 1.0pt;
  mso-border-top-alt:solid #5B9BD5 .5pt;mso-border-left-alt:solid #5B9BD5 .5pt;
  mso-border-alt:solid #5B9BD5 .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;
  mso-height-rule:exactly">
  <p class="MsoNormal" align="left" style="text-align:left;mso-element:frame;
  mso-element-frame-hspace:7.05pt;mso-element-wrap:around;mso-element-anchor-vertical:
  paragraph;mso-element-anchor-horizontal:margin;mso-element-top:3.65pt;
  mso-height-rule:exactly"><a href="https://industriels.esante.gouv.fr/sites/default/files/media/document/ROR%20Politique%20d%27acc%C3%A8s%20aux%20donn%C3%A9es_ME3.0_VFD.pdf"><span style="font-size:11.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif">Annexe
  "Politique d'accès" de la doctrine d'urbanisation</span></a><span style="mso-bidi-font-size:10.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif;
  mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:
  minor-latin"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:6;mso-yfti-lastrow:yes;height:44.2pt;mso-height-rule:
  exactly">
  <td width="34%" style="width:34.72%;border:solid #5B9BD5 1.0pt;border-top:
  none;mso-border-top-alt:solid #5B9BD5 .5pt;mso-border-alt:solid #5B9BD5 .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;mso-height-rule:exactly">
  <p class="TableParagraph" style="margin-top:6.0pt;margin-right:5.1pt;
  margin-bottom:6.0pt;margin-left:5.1pt;mso-element:frame;mso-element-frame-hspace:
  7.05pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:margin;mso-element-top:3.65pt;mso-height-rule:
  exactly"><a name="Ref_05"><span style="font-size:10.0pt;mso-ansi-language:
  FR">[Ref_05] </span></a><span style="font-size:10.0pt;mso-bidi-font-size:
  11.0pt;color:#0070C0;mso-ansi-language:FR">Annexe sources de données personnes
  et structures</span><span style="font-size:10.0pt;mso-ansi-language:FR"><o:p></o:p></span></p>
  </td>
  <td width="9%" style="width:9.72%;border-top:none;border-left:none;
  border-bottom:solid #5B9BD5 1.0pt;border-right:solid #5B9BD5 1.0pt;
  mso-border-top-alt:solid #5B9BD5 .5pt;mso-border-left-alt:solid #5B9BD5 .5pt;
  mso-border-alt:solid #5B9BD5 .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;
  mso-height-rule:exactly">
  <p class="TableParagraph" align="center" style="margin-top:6.0pt;margin-right:
  0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.05pt;mso-element-wrap:around;mso-element-anchor-vertical:
  paragraph;mso-element-anchor-horizontal:margin;mso-element-top:3.65pt;
  mso-height-rule:exactly"><span style="font-size:10.0pt;mso-ascii-font-family:
  Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:Arial;
  mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
  Calibri;mso-bidi-theme-font:minor-latin;mso-ansi-language:FR">1.5<o:p></o:p></span></p>
  </td>
  <td width="55%" style="width:55.56%;border-top:none;border-left:none;
  border-bottom:solid #5B9BD5 1.0pt;border-right:solid #5B9BD5 1.0pt;
  mso-border-top-alt:solid #5B9BD5 .5pt;mso-border-left-alt:solid #5B9BD5 .5pt;
  mso-border-alt:solid #5B9BD5 .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:44.2pt;
  mso-height-rule:exactly">
  <p class="MsoNormal" align="left" style="text-align:left;mso-element:frame;
  mso-element-frame-hspace:7.05pt;mso-element-wrap:around;mso-element-anchor-vertical:
  paragraph;mso-element-anchor-horizontal:margin;mso-element-top:3.65pt;
  mso-height-rule:exactly"><a href="https://esante.gouv.fr/annexe-sources-des-donnees-personnes-et-structures"><span style="font-size:9.0pt;line-height:115%;font-family:&quot;Segoe UI&quot;,sans-serif">https://esante.gouv.fr/annexe-sources-des-donnees-personnes-et-structures</span></a><span class="cf01"><span style="font-size:9.0pt;line-height:115%"> </span></span><span style="mso-bidi-font-size:10.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif;
  mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:
  minor-latin"><o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>
