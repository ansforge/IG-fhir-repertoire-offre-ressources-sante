### Téléchargement

L'implementation guide contient un package [téléchargeable ici](package.tgz) permettant de valider les instances par rapport aux profils qu'il contient.

Pour cela, il suffit de télécharger le [package.tgz](package.tgz) et l'importer dans un serveur, par exemple sur hapi en suivant ce [script python](https://github.com/nmdp-bioinformatics/igloader) open source.

Ensemble des ressources téléchargeables :

* [L'ensemble de la specification (zip)](full-ig.zip)
* [Package (tgz)](package.tgz)

#### Définitions

* [Définitions JSON (zip)](definitions.json.zip)
* [Définitions XML (zip)](definitions.xml.zip)
* [Définitions Turtle (zip)](definitions.ttl.zip)

#### Exemples

* [Exemples XML (zip)](examples.xml.zip)
* [Exemples JSON (zip)](examples.json.zip)
* [Exemples JSON (zip)](examples.ttl.zip)

### Usage

Ce guide d'implémentation définit des profils qui définissent la structure des instances FHIR du ROR, c'est à dire les données exposées par le serveur.

L'ensemble des ressources ROR retournées par le serveur ROR ainsi que l'ensemble des ressources envoyées au serveur ROR doivent être au préalable validé en utilisant le validateur officiel [FHIR Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator) pour s'assurer du respect du standard et des profils définis dans ce guide. Ce validateur est également accessible [en ligne](https://validator.fhir.org/).

Pour plus d'information sur la validation des instances de ressource contre un profil issu de cette spécification, consulter la documentation de l'opération [$validate](https://www.hl7.org/fhir/resource-operation-validate.html).
