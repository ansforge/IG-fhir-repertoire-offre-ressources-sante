**Release 0.4.0 de l'Implementation Guide FHIR du ROR compatible avec le modèle d'exposition 3.0 du ROR et ayant pour cible l'implementation 3.2 du ROR National.**

Cette version est à destination des développeurs de la solution ROR National et des recetteurs. Elle permet aussi d'apporter de l'information aux consommateurs concernant les nouveautés en cours d'implémentation. Cette version prend en compte les retours sur la version 0.4.0 snapshot-1.

[Modifications apportées dans cette release](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/milestone/8?closed=1) :

* Modifications pour correspondre à la maturité des developpements dans la solution ROR 3.2 [373](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/373), [372](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/372), [366](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/366), [367](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/367)
* Modification du tableau référençant les [Search Params pour ROROrganization](search_param.html#structuredefinition-ror-organization) [374](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/374)
* Correction de l'exemple de requête (code inactivation) dans le [scénario 2 : Inactivation d’une anomalie](specifications_techniques_6.html#scénario-2-inactivation-dune-anomalie) [360](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/360), [361](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/361)
* Ajout de la description du cas d'usage "Consignes  fiche de saisie de l'offre" dans la page [Spécifications fonctionnelles](specifications_fonctionnelles.html#consignes-fiche-de-saisie-de-loffre) [365](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/365)
* correction de l'exemple de ressouce dans le [scénario 1 "Création du nouveau lieu de réalisation de l’offre"](specifications_techniques_10.html#spécifique-serveur-scénario-1-ajout-dun-lieu-de-réalisation-de-loffre-draft) [384](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/384)
* Correction de l'expression dans le SP ror-sp-healthcareservice-notavailable-closing-reopeningdate [388](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/388)

Verion qui inclut également les modifications réalisés pour la [version 0.4.0 snapshot-1](https://interop.esante.gouv.fr/ig/fhir/ror/0.4.0-snapshot-1/) :

* Ajout du cas d'usage saisie de l'offre [203](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/203)
* Ajout du cas d'usage Consignes de fiche de saisie de l'offre [232](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/232)
* Correction de cardinalité de l'extension availableTime [221](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/221)
* Ajout d'un scénario de recherche de l'offre d'un professionnel avec un ID Nat PS [272](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/272)
* Industrialiser/automatiser la création des plantUML et xls à partir du mapping dans les SD [327](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/327)
* Ajout de SP sur HealthcareService [336](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/336) et [108](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/108)
* Correction system Organization identifier http <> https [348](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/348)
* Correction id de l'extension RORPractitionerRoleName [299](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/299)
* Suppression de l'extension RORLocationStatus et utilisation de operationalStatus [260](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/260)