**Release 0.5.0 de l'Implementation Guide FHIR du ROR compatible avec le modèle d'exposition 3.0 du ROR et ayant pour cible l'implementation 3.3 du ROR National.**


[Modifications apportées dans cette release](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/milestone/9?closed=1) :

* Modifications de la maturité d'implémentation dans la solution ROR 3.3 :
  * suppression de la mention draft dans la documentation pour les Search Parameters `identifer` pour les ressources RORPractitioner et RORPractitionerRole et mise a jour des Capability Statements en conséquencen [394](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/394)
  * suppression de la mention draft dans la documentation pour le Search Parameter `type` pour la ressource  ROROrganization et mise a jour des Capability Statements en conséquence [396](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/396)
  * suppression de la mention draft dans la documentation pour l'interaction PUT pour la ressource RORQuestionnaire et mise a jour des Capability Statements en conséquence [395](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/395)
* Ajout du modifier not dans la documentation maintenant pris en charge dans la solution ROR  [399](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/399)
* Evolution de la slice useContext dans RORQuestionnaire [393](https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/pull/393)