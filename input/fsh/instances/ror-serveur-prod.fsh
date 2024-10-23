Instance: ror-serveur-prod
InstanceOf: CapabilityStatement
Usage: #definition
* name = "RestServer"
* title = "CapabilityStatement du serveur de prod ROR 3.2"
* status = #active
* date = "2024-07-29T09:03:47.483+00:00"
* publisher = "Not provided"
* kind = #instance
* software.name = "HAPI FHIR Server"
* software.version = "6.4.4"
* implementation.description = "HAPI FHIR"
* implementation.url = "https://api.ror.esante.gouv.fr/ws-diffusion-fhir"
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #xml
* format[+] = #application/fhir+json
* format[+] = #json
* rest.mode = #server
* rest.resource[0].type = #HealthcareService
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/HealthcareService"
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "_filter"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The ID of the resource"
* rest.resource[=].searchParam[+].name = "_include"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "_include:iterate"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "_revinclude"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "_revinclude:iterate"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "age-range-high"
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[+].name = "age-range-low"
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[+].name = "characteristic"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "One of the HealthcareService's characteristics"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "External identifiers for this item"
* rest.resource[=].searchParam[+].name = "intervention-zone"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "location._id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location._lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location._tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.additional-bed-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.address-city"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.address-postalcode"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.capacity-closing-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.capacity-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.capacity-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.capacity-update-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.commune-cog"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.crisis-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.equipment-feature"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.equipment-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.gender-capacity-available"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.identifier:of-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.limit-value"
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.nb-capacity"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.near"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.near-insee-code"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.residential-number"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.residential-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.temporality-capacity"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.temporary-assignement"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "location.type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The location of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A portion of the Healthcare service name"
* rest.resource[=].searchParam[+].name = "notavailable-closing-reopeningdate"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "organization._id:above"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization._lastUpdated:above"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization._tag:above"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization.closing-type:above"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization.drop-zone:above"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization.identifier:above"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization.name:above"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization.price-amount-value:above"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization.price-dependency-level:above"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization.price-residential-type:above"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization.price-type:above"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization.price-unit:above"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization.price-validity-start-date:above"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization.price-welcome-type:above"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization.special-price:above"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "organization.type:above"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The organization that provides this Healthcare Service"
* rest.resource[=].searchParam[+].name = "patient-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "practitioner.identifier"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "psychiatric-sector"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "service-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Service Category of the Healthcare Service"
* rest.resource[=].searchParam[+].name = "service-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The type of service provided by this healthcare service"
* rest.resource[=].searchParam[+].name = "specialty"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The specialty of the service provided by this healthcare service"
* rest.resource[=].searchParam[+].name = "specific-competence"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[+].type = #Location
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "_filter"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "_has"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The ID of the resource"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "_revinclude"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "additional-bed-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "address-city"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A city specified in an address"
* rest.resource[=].searchParam[+].name = "address-postalcode"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A postal code specified in an address"
* rest.resource[=].searchParam[+].name = "capacity-closing-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "capacity-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "capacity-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "capacity-update-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "commune-cog"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "crisis-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "equipment-feature"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "equipment-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "gender-capacity-available"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "An identifier for the location"
* rest.resource[=].searchParam[+].name = "limit-value"
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[+].name = "nb-capacity"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[+].name = "near"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Search for locations where the location.position is near to, or within a specified distance of, the provided coordinates expressed as [latitude]|[longitude]|[distance]|[units] (using the WGS84 datum, see notes).\nIf the units are omitted, then kms should be assumed. If the distance is omitted, then the server can use its own discretion as to what distances should be considered near (and units are irrelevant)\n\nServers may search using various techniques that might have differing accuracies, depending on implementation efficiency.\n\nRequires the near-distance parameter to be provided also"
* rest.resource[=].searchParam[+].name = "near-insee-code"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[+].name = "residential-number"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[+].name = "residential-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Searches for locations with a specific kind of status"
* rest.resource[=].searchParam[+].name = "temporality-capacity"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "temporary-assignement"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A code for the type of location"
* rest.resource[+].type = #OperationDefinition
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/OperationDefinition"
* rest.resource[=].interaction.code = #read
* rest.resource[=].searchInclude = "*"
* rest.resource[+].type = #Organization
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Organization"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "_content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The ID of the resource"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "closing-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "drop-zone"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "extension.typeActivity"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Any identifier for the organization (not the accreditation issuer's identifier)"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A portion of the organization's name or alias"
* rest.resource[=].searchParam[+].name = "period-end"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "price-amount-value"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[+].name = "price-dependency-level"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "price-residential-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "price-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "price-unit"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "price-validity-start-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "price-welcome-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "special-price"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Practitioner"
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The ID of the resource"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/PractitionerRole"
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The ID of the resource"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].type = #token
* rest.operation[0].name = "export-poll-status"
* rest.operation[=].definition = "https://api.ror.esante.gouv.fr/ws-diffusion-fhir/OperationDefinition/-s-export-poll-status"
* rest.operation[+].name = "export"
* rest.operation[=].definition = "https://api.ror.esante.gouv.fr/ws-diffusion-fhir/OperationDefinition/-s-export"
* rest.operation[+].name = "export-get-file"
* rest.operation[=].definition = "https://api.ror.esante.gouv.fr/ws-diffusion-fhir/OperationDefinition/-s-export-get-file"