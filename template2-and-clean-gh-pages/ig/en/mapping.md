# Mapping FHIR du modèle de données du ROR - Répertoire national de l’Offre et des Ressources en santé et accompagnement médico-social v0.7.0

## Mapping FHIR du modèle de données du ROR

 
There is no translation page available for the current page, so it has been rendered in the default language 

 A noter que Task, Measure et MeasureReport ne font pas partie du mapping, car cela ne fait pas partie du modèle d'exposition du ROR 

### Mapping global

 Le fichier définissant le mapping FHIR pour le modèle d'exposition 3.0 du ROR est consultable et téléchargeable [ici](mappingFHIR_ROR_ME3.0.1_2026_04_08.xlsx)

**Notes:**
1. Dans l'implémentation actuelle du ROR, une*organisation interne (OI)*ne peut être rattachée qu'à une*entité géographique (EG)*, par exemple un pôle ne peut être rattaché qu'à une EG. Concernant les pôles multi-sites, une copie du pôle est créée pour chaque EG;
1. `PractitionerRole`contient l'*exercice professionnel*et la*situation opérationnelle*. Dans le cas ou l'*exercice professionnel*est rattaché à plusieurs*situations opérationnelles*, alors il aura autant d'instance`PractitionerRole`qu'il y a de*situations opérationnelles*(les attributs de l'*exercice professionnel*sont dupliqués dans chacune de ces ressources);
1. La cardinalité implémentée d'une instance de`Location`référencée dans une instance`HealthcareService`est 0..* au lieu de 1..*. Cela est dû à la temporalité de la création d'une instance`HealthcareService`, créée avant que les lieux de réalisation de l'offre (les instances`Location`) rattachés à l'offre ne soient connus.

### Mapping HealthcareService

### Mapping Practitioner & PractitionerRole

### Mapping Organization

### Mapping Location

