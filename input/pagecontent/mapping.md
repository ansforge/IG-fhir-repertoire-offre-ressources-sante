<code><span style="color: #ff0000;font-weight:bold;font-size: x-large;">draft</span></code>

<p style="background-color: #ffcccc; border:1px solid grey; padding: 5px; max-width: 790px;">
A noter que Task, Measure et MeasureReport ne font pas partie du mapping, car cela ne fait pas partie du modèle d'exposition du ROR
</p>

### Mapping global

<div>{%include vue-fonctionnelle-fhir.svg%}</div>
<br>
Le fichier définissant le mapping FHIR pour le modèle d'exposition 3.0 du ROR est consultable et téléchargeable [ici](mappingFHIR_ROR_ME3_2024_03_05.xlsx)

<p style="background-color: #ffcccc; border:1px solid grey; padding: 5px; max-width: 790px;">
<b>Notes:</b><br>
- Dans l'implémentation actuelle du ROR, une <i>organisation interne</i> ne peut être rattachée qu'à une <i>entité géographique</i>, par exemple un pôle ne peut être rattaché qu'à une EG;<br>
- </i>PractitionerRole</i> contient l'<i>exercice professionnel</i> et la <i>situation opérationnelle</i>. Dans le cas ou l'<i>exercice professionnel</i> est rattaché à plusieurs <i>situations opérationnelles</i>, alors il aura autant de <i>PractitionerRole</i> qu'il y a de <i>situations opérationnelles</i> (les attributs de l'<i>exercice professionnel</i> sont dupliqués dans chacune de ces ressources);<br>
- La cardinalité implémentée d'une <i>Location</i> d'un <i>HealthcareService</i> est 0..* au lieu de 1..*. Cela est dû à la temporalité de la création d'un <i>HealthcareService</i>, celui-ci est créé avant d'en connaitre les <i>locations</i> rattachées.<br>
</p>

### Mapping HealthcareService

<div>{%include mapping-HealthcareService.svg%}</div>


### Mapping Practitioner & PractitionerRole

<div>{%include mapping-Practitioner-PractitionerRole.svg%}</div>


### Mapping Organization

<div>{%include mapping-Organization.svg%}</div>


### Mapping Location

<div>{%include mapping-Location.svg%}</div>