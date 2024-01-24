Le fichier définissant le mapping FHIR pour le modèle d'exposition 3.0 du ROR est consultable et téléchargeable [ici](mappingFHIR_ROR_ME3-0.xlsx)
<p style="background-color: #ffcccc; border:1px solid grey; padding: 5px; max-width: 790px;">
A noter que Task, Measure et MeasureReport ne font pas partie du mapping, car cela ne fait pas partie du modèle d'exposition du ROR
</p>

### Mapping global

<div>{%include vue-fonctionnelle-fhir.svg%}</div>


### Mapping HealthcareService

<div>{%include mapping-HealthcareService.svg%}</div>


### Mapping Practitioner & PractitionerRole

<table align="center">
    <tr>
        <td align ="center">
            <div style="text-inlin:center;">{%include mapping-Practitioner-PractitionerRole.svg%}</div>
        </td>    
    </tr>
</table>

### Mapping Organization

<table align="center">
    <tr>
        <td align ="center">
            <div style="text-inlin:center;">{%include mapping-Organization.svg%}</div>
        </td>    
    </tr>
</table>

### Mapping Location

<table align="center">
    <tr>
        <td align ="center">
            <div style="text-inlin:center;">{%include mapping-Location.svg%}</div>
        </td>    
    </tr>
</table>