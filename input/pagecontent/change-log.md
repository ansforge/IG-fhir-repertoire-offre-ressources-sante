### version 0.6.0

**Release 0.6.0 de l'Implementation Guide FHIR du ROR compatible avec le modèle d'exposition 3.0 du ROR et ayant pour cible l'implémentation 4.2 du ROR National.**

URL : <https://interop.esante.gouv.fr/ig/fhir/ror/0.6.0>

[Modifications apportées dans cette release](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/milestone/10?closed=1) :
!!! Ajouter la release-notes une fois la release prête à être publiée !!!

### version 0.5.0

**Release 0.5.0 de l'Implementation Guide FHIR du ROR compatible avec le modèle d'exposition 3.0 du ROR et ayant pour cible l'implémentation 3.3 du ROR National.**

URL : <https://interop.esante.gouv.fr/ig/fhir/ror/0.5.0>

[Modifications apportées dans cette release](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/milestone/9?closed=1) :

* [narratif] Modifications de la maturité d'implémentation dans la solution ROR 3.3 :
  * suppression de la mention draft dans la documentation pour les Search Parameters `identifier` pour les ressources RORPractitioner et RORPractitionerRole et mise a jour des Capability Statements en conséquencen [394](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/394)
  * suppression de la mention draft dans la documentation pour le Search Parameter `type` pour la ressource  ROROrganization et mise a jour des Capability Statements en conséquence [396](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/396)
  * suppression de la mention draft dans la documentation pour l'interaction PUT pour la ressource RORQuestionnaire et mise a jour des Capability Statements en conséquence [395](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/395)
* [narratif] Ajout du modifier not dans la documentation maintenant pris en charge dans la solution ROR  [399](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/399)
* [RC] Evolution de la slice useContext dans RORQuestionnaire [393](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/393)

### version 0.4.0

**Release 0.4.0 de l'Implementation Guide FHIR du ROR compatible avec le modèle d'exposition 3.0 du ROR et ayant pour cible l'implementation 3.2 du ROR National.**

URL : <https://interop.esante.gouv.fr/ig/fhir/ror/0.4.0>

Cette version prend en compte les retours sur la version 0.4.0 snapshot-1.

[Modifications apportées dans cette release](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/milestone/8?closed=1) :

* [narratif] Modifications pour correspondre à la maturité des developpements dans la solution ROR 3.2 [373](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/373), [372](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/372), [366](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/366), [367](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/367)
* [narratif] Modification du tableau référençant les [Search Params pour ROROrganization](search_param.html#structuredefinition-ror-organization) [374](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/374)
* [narratif] Correction de l'exemple de requête (code inactivation) dans le [scénario 2 : Inactivation d’une anomalie](specifications_techniques_6.html#scénario-2-inactivation-dune-anomalie) [360](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/360), [361](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/361)
* [narratif] Ajout de la description du cas d'usage "Consignes  fiche de saisie de l'offre" dans la page [Spécifications fonctionnelles](specifications_fonctionnelles.html#consignes-fiche-de-saisie-de-loffre) [365](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/365)
* correction de l'exemple de ressouce dans le [scénario 1 "Création du nouveau lieu de réalisation de l’offre"](specifications_techniques_10.html#spécifique-serveur-scénario-1-ajout-dun-lieu-de-réalisation-de-loffre-draft) [384](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/384)
* [RC] Correction de l'expression dans le SP ror-sp-healthcareservice-notavailable-closing-reopeningdate [388](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/388)

Version qui inclut également les modifications réalisées pour la [version 0.4.0 snapshot-1](change-log.html#version-040-snapshot-1).

### version 0.4.0-snapshot-1

**Pre-release 0.4.0-snapshot-1 de l'Implementation Guide FHIR du ROR compatible avec le modèle d'exposition 3.0 du ROR et ayant pour cible l'implementation 3.2 du ROR National.**

**Cette version est à destination des développeurs de la solution ROR National et des recetteurs. Elle permet aussi d'apporter de l'information aux consommateurs concernant les nouveautés en cours d'implémentation.**

URL : <https://interop.esante.gouv.fr/ig/fhir/ror/0.4.0-snapshot-1>

[Modifications apportées dans cette release](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/milestone/5?closed=1) :

* Ajout du cas d'usage saisie de l'offre [203](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/203)
* Ajout du cas d'usage Consignes de fiche de saisie de l'offre [232](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/232)
* [RC] Correction de cardinalité de l'extension availableTime [221](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/221)
* [narratif] Ajout d'un scénario de recherche de l'offre d'un professionnel avec un ID Nat PS [272](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/272)
* Industrialiser/automatiser la création des plantUML et xls à partir du mapping dans les SD [327](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/327)
* [RC] Ajout de SP sur HealthcareService [336](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/336) et [108](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/108)
* [RC] Correction system Organization identifier http <> https [348](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/348)
* [RC] Correction id de l'extension RORPractitionerRoleName [299](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/299)
* [RC] Suppression de l'extension RORLocationStatus et utilisation de operationalStatus [260](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/260)

### version 0.3.0

**Release 0.3.0 de l'Implementation Guide FHIR du ROR compatible avec le modèle d'exposition 3.0 du ROR et ayant pour cible l'implementation 3.1 du ROR National.**

URL : <https://interop.esante.gouv.fr/ig/fhir/ror/0.3.0>

[Modifications apportées dans cette release](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/milestone/6?closed=1) :

* [RC] Correction de la cardinalité de specialty PractitionerRole[320](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/320)
* Mise à jour du lieu de réalisation de l'offre - PATCH conditionnel[318](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/318)
* [RC] Personnalisation description availableTime HealthcareService[309](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/309)
* [RC] Correction cardinalité sur Practitionner - Civilité Personne Physique[295](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/295)
* [RC] Correction typo sur Date réouverture prévisionnelle dans HealthcareService[292](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/292)
* [RC] Création extension precinct[291](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/291)
* Mise à jour de l'IG au regard de l'implémentation cible dans la solution ROR 3.1[288](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/288)
* [RC] Correction de la définition du CodeSystem-ror-include-associated-data-code-system[287](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/287)
* Ajout scénario modification des données capacitaires[283](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/283)
* [RC] Modification de la description des noms dans Organization[281](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/281)
* [RC] Correction cardinalité nom dans Organization[280](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/280)
* [RC] Correction Cardinalité Organization.address[274](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/274)
* Ajout du SP _filter[275](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/275)
* [RC] ajout Must Support [268](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/268) et [264](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/264)
* Amélioration de la page mapping et ajout du mapping avec ROR ME v3.0 dans les SD[64](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/64)
* [narratif] Mise à jour des scénarios[267](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/267) et [282](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/282)

### version 0.2.0

**Release 0.2.0 de l'Implementation Guide FHIR du ROR compatible avec le modèle d'exposition 3.0 du ROR et ayant pour cible l'implementation 2.3 du ROR National.**

URL : <https://interop.esante.gouv.fr/ig/fhir/ror/0.2.0>

[Modifications apportées dans cette release](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/milestone/2?closed=1) :

* Ajout search params _content dans CS: [44](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/44)
* [RC] Correction SearchParameter gender-capacity-available/gender-capacity: [54](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/54)
* [RC] Profiling ressources pour couvrir cas d'usage Consultation d'indicateurs de pilotage [55](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/55)
* [narratif] spécifications cas d'usage Consultation d'indicateurs de pilotage [56](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/56)
* [narratif] Spécifications cas d'usage Mise à jour du lieu de réalisation de l'offre [57](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/57)
* [narratif] Spécifications cas d'usage Recherche d'une offre sur la base d'informations tarifaires [58](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/58)
* [narratif] Spécifications cas d'usage Recherche Full text [59](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/59)
* [RC] Correction modélisation healthcare service sur contacts - télécommunication [68](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/68)
* [RC] Correction Calculated Distance [69](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/69)
* Correction mapping xls [78](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/78)
* [narratif] Correction 5.1.6.8 Scénario 8 : Recherche sur un département [79](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/79)
* [RC] Ajout system des identifiers dans Organization [83](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/83)
* [RC] Correction cardinalités de l'extension ror-organization-price [84](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/84)
* [RC] Correction extension ror-organization-additional-name [85](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/85)
* [RC] Utilisation extension precinct [86](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/86)
* [RC] Ajout extension geolocation dans Organization [94](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/94)
* [RC] Ajout Bulk data export [95](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/95)
* [RC] Determination des actes spécifiques hors cabinet [97](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/97)
* [narratif] Ajout modificateur of-type [99](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/99)
* [RC] Ajout system pour identifier PS [100](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/100)
* [RC] Correction Organization nom et alias [101](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/101)
* [RC] ROROganization : Suppression type:fonctionLieu [102](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/102)
* [RC] Correction mapping ROROrganization [103](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/103)
* [narratif] Correction 6.1.6.1 : Scénario 1 : Recherche sur un critère capacitaire (typo specialty) [110](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/110)
* [RC] Correction url search parameters [115](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/115)
* [narratif] Ajout niveau de maturité d'implementation dans le ROR N [129](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/129)
* [narratif] Correction syntaxe iterate [130](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/130)
* [narratif] Ajout criteres manquant pour location [147](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/147)
* [RC] Modification url JDV_J230-CommuneOM-ROR [155](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/155)
* [RC] Mise à jour des Capability Statment [192](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/192)
* [narratif] Correction url TRE_R330 [164](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/164)
* [narratif] Correction scenario 1 Recherche d'offre avec données capacitaires [166](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/166)
* [RC] Profil Task ajout binding JDV-J244-StatutMetierAnomalie-ROR [167](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/167)
* [RC] Correction URL binding JDV-J208-CiviliteExercice-ROR dans PractitionerRole [168](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/168)
* [narratif] Ajout scenarios dans les spécifications techniques [172](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/172)
* [narratif] Correction scénario-6-recherche-à-proximité-géographique [177](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/177)
* [narratif] typo espace dans les requetes [180](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/180)
* [narratif] Ajout lien vers ME V3 et mise à jour du lien vers la politique d'accès [182](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/182)
* [RC] Suppression xml dans le CapabilityStatement [183](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/183)
* [RC] Correction syntaxe Organization.identifier.type [184](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/184)
* [RC] Ajout de l'url du JDV-J238-TypeOffre-ROR [194](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/194)
* [narratif] Suppression du 1er tableau dans les specifications techniques [201](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/201)
* [narratif] Correction scénario 1 signalement anomalie [206](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/206)
* [narratif] Suppression scenario 2 signalement anomalie [207](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/207)
* [narratif] Correction scenario 2 consultation anomalie [210](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/210)
* [narratif] Ajout lien avec l'IG securisation transport [211](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/211)
* [RC] Ajout confidence geolocation dans extension geolocation [213](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/213)
* [RC] Correction url TRE R345 [219](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/219)
* [RC] Suppression critère de recherche sur les devises des tarifs [225](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/225)
* [narratif] Correction format Adresse StreetNameType [229](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/229)
* [RC] Correction ror-location-equipment-limit [266](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/266)
* [narratif] Scenario utilisant above mis en draft [276](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/276)

### version 0.1.1

**Release 0.1.1 de l'Implementation Guide FHIR du ROR compatible avec le modèle d'exposition 3.0 du ROR et ayant pour cible l'implementation 2.2 du ROR National.**

URL : <https://interop.esante.gouv.fr/ig/fhir/ror/0.1.1>

[Modifications apportées dans cette release](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/milestone/2?closed=1) :

* [RC] Correction d'erreurs de syntaxe dans la définition du contexte des extensions : [26](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/26) et [33](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/33)
* [RC] Correction du code du paramètre de recherche ror-sp-capacity-update-date : [28](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/28)
* [RC] Correction de l'URL du JDV_J18-EquipementSpecifiqueROR : [31](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/31)
* [RC] Modification de l'extension concernant les coordonnées géographiques : [35](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/35)
* [RC] Suppression du paramètre de recherche ror-sp-healthcareservice-specific-competence : [39](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/39)
* [narratif] Précision de la release FHIR (R4) dans les liens suite à la publication de la R5 : [51](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/51)
* [narratif] Correction typo dans les requêtes des spécifications techniques : [50](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/50)
* [narratif] Modification du nom du search param specific-competence par characteristic : [47](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/47)
* [narratif] Correction requête scénario 7 Recherche d'offre sur critères principaux : [46](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/46)
* [narratif] Correction du fichier ROR -Mapping FHIR et modèle d'exposition 3.0 : [41](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/41) et [49](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/49)
* [narratif] Modifier le lien vers la documentation sur les IG à l'ANS : [38](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/38)
* [narratif] Ajout d'une courte description de l'IG en anglais : [36](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/36)
* [status] Modification du status de l'IG [22](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/22)

### version 0.1.0

**Première version de l'Implementation Guide FHIR du ROR compatible avec le modèle d'exposition 3.0 du ROR et ayant pour cible l'implementation 2.1 du ROR National.**

URL : <https://interop.esante.gouv.fr/ig/fhir/ror/0.1.0>