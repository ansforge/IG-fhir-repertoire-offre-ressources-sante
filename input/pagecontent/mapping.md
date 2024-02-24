Le fichier définissant le mapping FHIR pour le modèle d'exposition 3.0 du ROR est consultable et téléchargeable [ici](mappingFHIR_ROR_ME3_2024_01_10.xlsx)
<p style="background-color: #ffcccc; border:1px solid grey; padding: 5px; max-width: 790px;">
A noter que Task, Measure et MeasureReport ne font pas partie du mapping, car cela ne fait pas partie du modèle d'exposition du ROR
</p>

    <div id="orig">
        {% sql select json_extract(Resources.json,'$.name') as resource,json_extract(Resources.json,'$.baseDefinition') as base, value as element , json_extract(Resources.json, REPLACE(fullkey,'id', 'short')) as commentaire, json_extract(Resources.json, REPLACE(fullkey,'id', 'min')) as min, json_extract(Resources.json, REPLACE(fullkey,'id', 'max')) as max, json_extract(Resources.json, REPLACE(fullkey,'id', 'binding.valueSet')) as Valueset, json_extract(Resources.json, REPLACE(fullkey,'id', 'type')) as type, json_extract(Resources.json, REPLACE(fullkey,'id', 'mapping')) as mapping from Resources, json_tree(Resources.json,"$.snapshot.element") as jtree where Resources.type="StructureDefinition" and json_extract(Resources.json,'$.type')!='Extension' and (jtree.key='id' ) %}
    </div>

