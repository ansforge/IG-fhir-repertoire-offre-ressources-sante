### Mapping profil [RORHealthcareService](StructureDefinition-ror-healthcareservice.html)

<table>
<tbody>
<tr>
<td>
<p><strong>FHIR path</strong></p>
</td>
<td>
<p><strong>FHIR type</strong></p>
</td>
<td>
<p><strong>Card</strong></p>
</td>
<td>
<p><strong>Status</strong></p>
</td>
<td>
<p><strong>Valeur fix&eacute;e</strong></p>
</td>
<td>
<p><strong>ValueSet</strong></p>
</td>
<td>
<p><strong>Binding</strong></p>
</td>
<td>
<p><strong>Classe ROR</strong></p>
</td>
<td>
<p><strong>Attribut ROR</strong></p>
</td>
</tr>
<tr>
<td>
<p><strong>Donn&eacute;es techniques</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
</tr>
<tr>
<td>
<p>id</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Id</p>
</td>
<td>
<p>1..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
</tr>
<tr>
<td>
<p>meta</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Meta</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Metadonnee</p>
</td>
<td>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>tag (slice)</p>
</td>
<td>
<p>Coding</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>&nbsp;&nbsp;&nbsp; codeRegion</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR">JDV_J237-RegionOM-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>Metadonnee</p>
</td>
<td>
<p>codeRegion</p>
</td>
</tr>
<tr>
<td>
<p><strong>References</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
</tr>
<tr>
<td>
<p>providedBy</p>
</td>
<td>
<p>Reference(Organization)</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
</tr>
<tr>
<td>
<p><strong>Donn&eacute;es fonctionnelles</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
</tr>
<tr>
<td>
<p>identifier</p>
</td>
<td>
<p>Identifier</p>
</td>
<td>
<p>1..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>identifiantOffre</p>
</td>
</tr>
<tr>
<td>
<p>name</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>string</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>nomOffre</p>
</td>
</tr>
<tr>
<td>
<p>category</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>JDV-J238-TypeOffre-ROR</p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>typeOffre</p>
</td>
</tr>
<tr>
<td>
<p>type</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>1..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J20-ChampActivite-ROR/FHIR/JDV-J20-ChampActivite-ROR">JDV_J20-ChampActivite-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>champActivite</p>
</td>
</tr>
<tr>
<td>
<p>availableTime</p>
</td>
<td>
<p>BackboneElement</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>horaire</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>availableStartTime</p>
</td>
<td>
<p>Time</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Horaire</p>
</td>
<td>
<p>heureDebut</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>availableEndTime</p>
</td>
<td>
<p>Time</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Horaire</p>
</td>
<td>
<p>heureFin</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>RORAvailableTimeTypeOfTime</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J41-TypeHoraire-ROR/FHIR/JDV-J41-TypeHoraire-ROR">JDV_J41-TypeHoraire-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>Horaire</p>
</td>
<td>
<p>typePlageHoraire</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>RORAvailableTimeOpeningClosingDate</p>
</td>
<td>
<p>Period</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Horaire</p>
</td>
<td>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>&nbsp;&nbsp; effectiveOpeningClosingDate.start</p>
</td>
<td>
<p>DateTime</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Horaire</p>
</td>
<td>
<p>debutDateEffective</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>&nbsp;&nbsp; effectiveOpeningClosingDate.end</p>
</td>
<td>
<p>DateTime</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Horaire</p>
</td>
<td>
<p>finDateEffective</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>RORAvailableTimeNumberDaysOfWeek</p>
</td>
<td>
<p>Integer</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Horaire</p>
</td>
<td>
<p>jourSemaine</p>
</td>
</tr>
<tr>
<td>
<p>telecom</p>
</td>
<td>
<p>ContactPoint</p>
</td>
<td>
<p>0..*</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>boiteLettreMSS</p>
</td>
</tr>
<tr>
<td>
<p>characteristic (slice)</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>receptionType</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J30-TemporaliteAccueil-ROR/FHIR/JDV-J30-TemporaliteAccueil-ROR/">JDV_J30-TemporaliteAccueil-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>temporaliteAccueil</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>careMode</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>1..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J19-ModePriseEnCharge-ROR/FHIR/JDV-J19-ModePriseEnCharge-ROR">JDV_J19-ModePriseEnCharge-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>modePriseEnCharge</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>receptionModality</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..*</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J226-ModaliteAccueil-ROR/FHIR/JDV-J226-ModaliteAccueil-ROR">JDV_J226-ModaliteAccueil-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>modalit&eacute;Accueil</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>managementType</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..*</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J26-ModeGestion-ROR/FHIR/JDV-J26-ModeGestion-ROR">JDV_J26-ModeGestion-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>modeGestion</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>specificAct</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..*</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR">JDV_J16-ActeSpecifique-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>acteSpecifique</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>outsideOfficeAct</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..*</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J16-ActeSpecifique-ROR/FHIR/JDV-J16-ActeSpecifique-ROR">JDV_J16-ActeSpecifique-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>acteRealiseHorsCabinet</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>takingCareSpeciality</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..*</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J35-SpecialisationDePriseEnCharge-ROR/FHIR/JDV-J35-SpecialisationDePriseEnCharge-ROR">JDV_J35-SpecialisationDePriseEnCharge-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>specialisationPriseEnCharge</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>annualOpening</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J28-OuvertureAnnuelle-ROR/FHIR/JDV-J28-OuvertureAnnuelle-ROR">JDV_J28-OuvertureAnnuelle-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>ouvertureAnnuelle</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>ressourceProfession</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..*</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J186-ProfessionRessource-ROR/FHIR/JDV-J186-ProfessionRessource-ROR">JDV_J186-ProfessionRessource-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>professionRessource</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>specificCompetence</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..*</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J33-CompetenceSpecifique-ROR/FHIR/JDV-J33-CompetenceSpecifique-ROR">JDV_J33-CompetenceSpecifique-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>competenceSpecifique</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>expertiseLevel</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..*</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J227-NiveauExpertise-ROR/FHIR/JDV-J227-NiveauExpertise-ROR">JDV_J227-NiveauExpertise-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>niveauExpertise</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>temporalityStopService</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J201-TypeFermeture-ROR/FHIR/JDV-J201-TypeFermeture-ROR">JDV_J201-TypeFermeture-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>typeFermeture</p>
</td>
</tr>
<tr>
<td>
<p>specialty (slice)</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Activite Operationnelle</p>
</td>
<td>
<p>-</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>operationalActivity</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>1..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR">JDV_J17-ActiviteOperationnelle-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>Activite Operationnelle</p>
</td>
<td>
<p>activiteOperationnelle</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>operationalActivityFamily</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J51-FamilleActiviteOperationnelle-ROR/FHIR/JDV-J51-FamilleActiviteOperationnelle-ROR">JDV_J51-FamilleActiviteOperationnelle-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>Activite Operationnelle</p>
</td>
<td>
<p>familleActiviteOperationnelle</p>
</td>
</tr>
<tr>
<td>
<p>notAvailable (slice)</p>
</td>
<td>
<p>BackboneElement</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>closingDate</p>
</td>
<td>
<p>dateTime</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>dateFermeture</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<p>previsionalReopeningDate</p>
</td>
<td>
<p>dateTime</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>datePrevisionnelleReouverture</p>
</td>
</tr>
<tr>
<td>
<p><strong>Extensions</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
<td>
<p><strong>&nbsp;</strong></p>
</td>
</tr>
<tr>
<td>
<p>RORTerritorialDivision</p>
</td>
<td>
<p>ComplexeType</p>
</td>
<td>
<p>0..*</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>zoneIntervention</p>
</td>
</tr>
<tr>
<td>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td>
<p>type</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>1..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J223-TypeDivisionTerritoriale-ROR/FHIR/JDV-J223-TypeDivisionTerritoriale-ROR">JDV_J223-TypeDivisionTerritoriale-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>zoneIntervention.type</p>
</td>
</tr>
<tr>
<td>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td>
<p>code</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>1..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>zoneIntervention.code</p>
</td>
</tr>
<tr>
<td>
<p>RORHealthcareServiceSensitiveUnit</p>
</td>
<td>
<p>boolean</p>
</td>
<td>
<p>1..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>uniteSensible</p>
</td>
</tr>
<tr>
<td>
<p>RORHealthcareServiceNoConsentHabilitation</p>
</td>
<td>
<p>boolean</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>habilitationAuxSoinsSansConsentement</p>
</td>
</tr>
<tr>
<td>
<p>RORHealthcareServicePsychiatricSector</p>
</td>
<td>
<p>string</p>
</td>
<td>
<p>0..*</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>secteurPsychiatrique</p>
</td>
</tr>
<tr>
<td>
<p>RORCalculatedDistance</p>
</td>
<td>
<p>Quantity</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>OffreOp&eacute;rationnelle</p>
</td>
<td>
<p>eloignementCalcule</p>
</td>
</tr>
<tr>
<td>
<p>RORHealthcareServicePatientType</p>
</td>
<td>
<p>ComplexeType</p>
</td>
<td>
<p>1..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Patient&egrave;le</p>
</td>
<td>
<p>-</p>
</td>
</tr>
<tr>
<td>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td>
<p>supportedPatientInfo</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..*</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J29-PublicPrisEnCharge-ROR/FHIR/JDV-J29-PublicPrisEnCharge-ROR">JDV_J29-PublicPrisEnCharge-ROR</a></p>
</td>
<td>
<p>Required</p>
</td>
<td>
<p>Patient&egrave;le</p>
</td>
<td>
<p>publicPrisEnCharge</p>
</td>
</tr>
<tr>
<td>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td>
<p>ageRange.low</p>
</td>
<td>
<p>Quantity</p>
</td>
<td>
<p>1..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Patient&egrave;le</p>
</td>
<td>
<p>ageMin</p>
</td>
</tr>
<tr>
<td>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td>
<p>ageRange.high</p>
</td>
<td>
<p>Quantity</p>
</td>
<td>
<p>1..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Patient&egrave;le</p>
</td>
<td>
<p>ageMax</p>
</td>
</tr>
<tr>
<td>
<p>RORHealthcareServiceContact</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Contact</p>
</td>
<td>
<p>-</p>
</td>
</tr>
<tr>
<td>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td>
<p>name</p>
</td>
<td>
<p>string</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Contact</p>
</td>
<td>
<p>name</p>
</td>
</tr>
<tr>
<td>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td>
<p>purpose</p>
</td>
<td>
<p>CodeableConcept</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J221-NatureContact-ROR/FHIR/JDV-J221-NatureContact-ROR">JDV_J221-NatureContact-ROR</a></p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Contact</p>
</td>
<td>
<p>natureContact</p>
</td>
</tr>
<tr>
<td>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td>
<p>description</p>
</td>
<td>
<p>string</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Contact</p>
</td>
<td>
<p>description</p>
</td>
</tr>
<tr>
<td>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td>
<p>RORContactFunctionContact</p>
</td>
<td>
<p>Extension</p>
</td>
<td>
<p>0..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J220-FonctionContact-ROR/FHIR/JDV-J220-FonctionContact-ROR">JDV_220-FonctionContact</a></p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Contact</p>
</td>
<td>
<p>fonctionContact</p>
</td>
</tr>
<tr>
<td>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td>
<p>RORConfidentialityLevel</p>
</td>
<td>
<p>Extension</p>
</td>
<td>
<p>1..1</p>
</td>
<td>
<p>1</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p><a href="https://mos.esante.gouv.fr/NOS/JDV_J222-NiveauConfidentialite-ROR/FHIR/JDV-J222-NiveauConfidentialite-ROR">JDV_J222-NiveauConfidentialite-ROR</a></p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Contact</p>
</td>
<td>
<p>niveauConfidentiality</p>
</td>
</tr>
<tr>
<td>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td>
<p>telecom</p>
</td>
<td>
<p>ContactPoint</p>
</td>
<td>
<p>0..*</p>
</td>
<td>
<p>0</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>-</p>
</td>
<td>
<p>&nbsp;</p>
</td>
<td>
<p>Contact</p>
</td>
<td>
<p>telecommunication</p>
</td>
</tr>
</tbody>
</table>

### Mapping profil [RORPractitioner](StructureDefinition-ror-practitioner.html)

<table width="932">
<tbody>
<tr>
<td colspan="2" width="200">
<p><strong>FHIR path</strong></p>
</td>
<td width="96">
<p><strong>FHIR type</strong></p>
</td>
<td width="33">
<p><strong>Card</strong></p>
</td>
<td width="45">
<p><strong>Status</strong></p>
</td>
<td width="87">
<p><strong>Valeur fix&eacute;e</strong></p>
</td>
<td width="175">
<p><strong>ValueSet</strong></p>
</td>
<td width="68">
<p><strong>Binding</strong></p>
</td>
<td width="97">
<p><strong>Classe ROR</strong></p>
</td>
<td width="131">
<p><strong>Attribut ROR</strong></p>
</td>
</tr>
<tr>
<td colspan="2" width="200">
<p><strong>Donn&eacute;es techniques</strong></p>
</td>
<td width="96">
<p><strong>&nbsp;</strong></p>
</td>
<td width="33">
<p><strong>&nbsp;</strong></p>
</td>
<td width="45">
<p><strong>&nbsp;</strong></p>
</td>
<td width="87">
<p><strong>&nbsp;</strong></p>
</td>
<td width="175">
<p><strong>&nbsp;</strong></p>
</td>
<td width="68">
<p><strong>&nbsp;</strong></p>
</td>
<td width="97">
<p><strong>&nbsp;</strong></p>
</td>
<td width="131">
<p><strong>&nbsp;</strong></p>
</td>
</tr>
<tr>
<td width="27">
<p>id</p>
</td>
<td width="173">
<p>&nbsp;</p>
</td>
<td width="96">
<p>Id</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="175">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="97">
<p>-</p>
</td>
<td width="131">
<p>-</p>
</td>
</tr>
<tr>
<td colspan="2" width="200">
<p>meta</p>
</td>
<td width="96">
<p>Meta</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="175">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="97">
<p>Metadonnee</p>
</td>
<td width="131">
<p>-</p>
</td>
</tr>
<tr>
<td width="27">&nbsp;</td>
<td width="173">
<p>tag (slice)</p>
</td>
<td width="96">
<p>Coding</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="175">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="97">
<p>-</p>
</td>
<td width="131">
<p>-</p>
</td>
</tr>
<tr>
<td width="27">&nbsp;</td>
<td width="173">
<p>&nbsp;&nbsp;&nbsp; codeRegion</p>
</td>
<td width="96">
<p>Coding</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="175">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR">JDV_J237-RegionOM-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="97">
<p>Metadonnee</p>
</td>
<td width="131">
<p>codeRegion</p>
</td>
</tr>
<tr>
<td colspan="2" width="200">
<p><strong>Donn&eacute;es fonctionnelles</strong></p>
</td>
<td width="96">
<p><strong>&nbsp;</strong></p>
</td>
<td width="33">
<p><strong>&nbsp;</strong></p>
</td>
<td width="45">
<p><strong>&nbsp;</strong></p>
</td>
<td width="87">
<p><strong>&nbsp;</strong></p>
</td>
<td width="175">
<p><strong>&nbsp;</strong></p>
</td>
<td width="68">
<p><strong>&nbsp;</strong></p>
</td>
<td width="97">
<p><strong>&nbsp;</strong></p>
</td>
<td width="131">
<p><strong>&nbsp;</strong></p>
</td>
</tr>
<tr>
<td colspan="2" width="200">
<p>identifier</p>
</td>
<td width="96">
<p>Identifier</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="175">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="97">
<p>Professionnel</p>
</td>
<td width="131">
<p>idNat_PS</p>
</td>
</tr>
<tr>
<td colspan="2" width="200">
<p>telecom</p>
</td>
<td width="96">
<p>ContactPoint</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="175">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="97">
<p>Professionnel</p>
</td>
<td width="131">
<p>boiteLettreMSS</p>
</td>
</tr>
</tbody>
</table>

### Mapping profil [RORPractitionerRole](StructureDefinition-ror-practitionerrole.html)

<table width="1520">
<tbody>
<tr>
<td colspan="2" width="272">
<p><strong>FHIR path</strong></p>
</td>
<td width="195">
<p><strong>FHIR type</strong></p>
</td>
<td width="33">
<p><strong>Card</strong></p>
</td>
<td width="45">
<p><strong>Status</strong></p>
</td>
<td width="87">
<p><strong>Valeur fix&eacute;e</strong></p>
</td>
<td width="405">
<p><strong>ValueSet</strong></p>
</td>
<td width="68">
<p><strong>Binding</strong></p>
</td>
<td width="168">
<p><strong>Classe ROR</strong></p>
</td>
<td width="247">
<p><strong>Attribut ROR</strong></p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p><strong>Donn&eacute;es techniques</strong></p>
</td>
<td width="195">
<p><strong>&nbsp;</strong></p>
</td>
<td width="33">
<p><strong>&nbsp;</strong></p>
</td>
<td width="45">
<p><strong>&nbsp;</strong></p>
</td>
<td width="87">
<p><strong>&nbsp;</strong></p>
</td>
<td width="405">
<p><strong>&nbsp;</strong></p>
</td>
<td width="68">
<p><strong>&nbsp;</strong></p>
</td>
<td width="168">
<p><strong>&nbsp;</strong></p>
</td>
<td width="247">
<p><strong>&nbsp;</strong></p>
</td>
</tr>
<tr>
<td width="14">
<p>id</p>
</td>
<td width="258">
<p>&nbsp;</p>
</td>
<td width="195">
<p>Id</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>-</p>
</td>
<td width="247">
<p>-</p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p>meta</p>
</td>
<td width="195">
<p>Meta</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>Metadonnee</p>
</td>
<td width="247">
<p>-</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>tag (slice)</p>
</td>
<td width="195">
<p>Coding</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>-</p>
</td>
<td width="247">
<p>-</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>&nbsp;&nbsp;&nbsp; codeRegion</p>
</td>
<td width="195">
<p>Coding</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR">JDV_J237-RegionOM-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>Metadonnee</p>
</td>
<td width="247">
<p>codeRegion</p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p><strong>References</strong></p>
</td>
<td width="195">
<p><strong>&nbsp;</strong></p>
</td>
<td width="33">
<p><strong>&nbsp;</strong></p>
</td>
<td width="45">
<p><strong>&nbsp;</strong></p>
</td>
<td width="87">
<p><strong>&nbsp;</strong></p>
</td>
<td width="405">
<p><strong>&nbsp;</strong></p>
</td>
<td width="68">
<p><strong>&nbsp;</strong></p>
</td>
<td width="168">
<p><strong>&nbsp;</strong></p>
</td>
<td width="247">
<p><strong>&nbsp;</strong></p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p>practitioner</p>
</td>
<td width="195">
<p>Reference(Practitioner)</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>-</p>
</td>
<td width="247">
<p>-</p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p>healthcareService</p>
</td>
<td width="195">
<p>Reference(HealthcareService)</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>-</p>
</td>
<td width="247">
<p>-</p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p><strong>Donn&eacute;es fonctionnelles</strong></p>
</td>
<td width="195">
<p><strong>&nbsp;</strong></p>
</td>
<td width="33">
<p><strong>&nbsp;</strong></p>
</td>
<td width="45">
<p><strong>&nbsp;</strong></p>
</td>
<td width="87">
<p><strong>&nbsp;</strong></p>
</td>
<td width="405">
<p><strong>&nbsp;</strong></p>
</td>
<td width="68">
<p><strong>&nbsp;</strong></p>
</td>
<td width="168">
<p><strong>&nbsp;</strong></p>
</td>
<td width="247">
<p><strong>&nbsp;</strong></p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p>identifier</p>
</td>
<td width="195">
<p>Identifier</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>SituationOperationnelle</p>
</td>
<td width="247">
<p>identifiantSituationOperationnelle</p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p>code</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J229-ProfessionSante-ROR/FHIR/JDV-J229-ProfessionSante-ROR">JDV_J229-ProfessionSante-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>ExerciceProfessionnel</p>
</td>
<td width="247">
<p>profession</p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p>availableTime</p>
</td>
<td width="195">
<p>BackboneElement</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>SituationOperationnelle</p>
</td>
<td width="247">
<p>precisionHoraire</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>availableStartTime</p>
</td>
<td width="195">
<p>Time</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>Horaire</p>
</td>
<td width="247">
<p>heureDebut</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>availableEndTime</p>
</td>
<td width="195">
<p>Time</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>Horaire</p>
</td>
<td width="247">
<p>heureFin</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>RORAvailableTimeTypeOfTime</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J41-TypeHoraire-ROR/FHIR/JDV-J41-TypeHoraire-ROR">JDV_J41-TypeHoraire-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>Horaire</p>
</td>
<td width="247">
<p>typePlageHoraire</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>RORAvailableTimeOpeningClosingDate</p>
</td>
<td width="195">
<p>Period</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>Horaire</p>
</td>
<td width="247">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>&nbsp;&nbsp; effectiveOpeningClosingDate.start</p>
</td>
<td width="195">
<p>DateTime</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>Horaire</p>
</td>
<td width="247">
<p>debutDateEffective</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>&nbsp;&nbsp; effectiveOpeningClosingDate.end</p>
</td>
<td width="195">
<p>DateTime</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>Horaire</p>
</td>
<td width="247">
<p>finDateEffective</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>RORAvailableTimeNumberDaysOfWeek</p>
</td>
<td width="195">
<p>Integer</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>Horaire</p>
</td>
<td width="247">
<p>jourSemaine</p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p>telecom</p>
</td>
<td width="195">
<p>ContactPoint</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>SituationOperationnelle</p>
</td>
<td width="247">
<p>telecommunication</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>value</p>
</td>
<td width="195">
<p>String</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>Telecommunication</p>
</td>
<td width="247">
<p>adresseTelecom</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>RORCommunicationChannel</p>
</td>
<td width="195">
<p>code</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR">JDV_J225-CanalCommunication-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>Telecommunication</p>
</td>
<td width="247">
<p>canal</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>RORContactUsage</p>
</td>
<td width="195">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>Telecommunication</p>
</td>
<td width="247">
<p>utilisation</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>RORConfidentialityLevel</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J222-NiveauConfidentialite-ROR/FHIR/JDV-J222-NiveauConfidentialite-ROR">JDV_J222-NiveauConfidentialite-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>Telecommunication</p>
</td>
<td width="247">
<p>niveauConfidentialite</p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p>specialty (slice)</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>-</p>
</td>
<td width="247">
<p>-</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>expertiseType</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J209-TypeSavoirFaire-ROR/FHIR/JDV-J209-TypeSavoirFaire-ROR">JDV_J209-TypeSavoirFaire-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>SavoirFaire</p>
</td>
<td width="247">
<p>typeSavoirFaire</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>speciality</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J210-SpecialiteOrdinale-ROR/FHIR/JDV-J210-SpecialiteOrdinale-ROR">JDV_J210-SpecialiteOrdinale-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>SavoirFaire</p>
</td>
<td width="247">
<p>specialite</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>competence</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J232-Competence-ROR/FHIR/JDV-J232-Competence-ROR">JDV_J232-Competence-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>SavoirFaire</p>
</td>
<td width="247">
<p>competence</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>exclusiveCompetence</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J211-CompetenceExclusive-ROR/FHIR/JDV-J211-CompetenceExclusive-ROR">JDV_J211-CompetenceExclusive-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>SavoirFaire</p>
</td>
<td width="247">
<p>competenceExclusive</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>specificOrientation</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J212-OrientationParticuliere-ROR/FHIR/JDV-J212-OrientationParticuliere-ROR">JDV_J212-OrientationParticuliere-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>SavoirFaire</p>
</td>
<td width="247">
<p>orientationParticuliere</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>expertiseCapacity</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J213-CapaciteSavoirFaire-ROR/FHIR/JDV-J213-CapaciteSavoirFaire-ROR">JDV_J213-CapaciteSavoirFaire-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>SavoirFaire</p>
</td>
<td width="247">
<p>capacite</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>qualificationPAC</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J214-QualificationPAC-ROR/FHIR/JDV-J214-QualificationPAC-ROR">JDV_J214-QualificationPAC-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>SavoirFaire</p>
</td>
<td width="247">
<p>qualificationPAC</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>nonQualifyingDESC</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J215-DESCnonQualifiant-ROR/FHIR/JDV-J215-DESCnonQualifiant-ROR">JDV_J215-DESCnonQualifiant-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>SavoirFaire</p>
</td>
<td width="247">
<p>DESCNonQualifiant</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>supplementaryExerciceRight</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J216-DroitExerciceCompl-ROR/FHIR/JDV-J216-DroitExerciceCompl-ROR/">JDV_J216-DroitExerciceCompl-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>SavoirFaire</p>
</td>
<td width="247">
<p>droitExerciceCompl&eacute;mentaire</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>specificCompetence</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J33-CompetenceSpecifique-ROR/FHIR/JDV-J33-CompetenceSpecifique-ROR">JDV_J33-CompetenceSpecifique-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>SituationOperationnelle</p>
</td>
<td width="247">
<p>competenceSpecifique</p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p><strong>Extensions</strong></p>
</td>
<td width="195">
<p><strong>&nbsp;</strong></p>
</td>
<td width="33">
<p><strong>&nbsp;</strong></p>
</td>
<td width="45">
<p><strong>&nbsp;</strong></p>
</td>
<td width="87">
<p><strong>&nbsp;</strong></p>
</td>
<td width="405">
<p><strong>&nbsp;</strong></p>
</td>
<td width="68">
<p><strong>&nbsp;</strong></p>
</td>
<td width="168">
<p><strong>&nbsp;</strong></p>
</td>
<td width="247">
<p><strong>&nbsp;</strong></p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p>RORPractitionerRoleUnitExerciseMode</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J217-ModeExercice-ROR/FHIR/JDV-J217-ModeExercice-ROR">JDV_J217-ModeExercice-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>SituationOperationnelle</p>
</td>
<td width="247">
<p>modeExerciceOffre</p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p>practitionerRole-name</p>
</td>
<td width="195">
<p>&nbsp;</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u>&nbsp;</u></p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>-</p>
</td>
<td width="247">
<p>-</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>name.suffix</p>
</td>
<td width="195">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>0</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J208-CiviliteExcercice-ROR/FHIR/JDV-J208-CiviliteExcercice-ROR/">JDV_J208-CiviliteExcercice-ROR</a></u></p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>ExerciceProfessionnel</p>
</td>
<td width="247">
<p>civiliteExercice</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>name.family</p>
</td>
<td width="195">
<p>String</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>&nbsp;</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>ExerciceProfessionnel</p>
</td>
<td width="247">
<p>nomExercice</p>
</td>
</tr>
<tr>
<td width="14">&nbsp;</td>
<td width="258">
<p>name.given</p>
</td>
<td width="195">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>&nbsp;</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>ExerciceProfessionnel</p>
</td>
<td width="247">
<p>prenomExercice</p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p>practitionerRole-contracted</p>
</td>
<td width="195">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J218-CNAMAmeliSecteurConventionnement-ROR/FHIR/JDV-J218-CNAMAmeliSecteurConventionnement-ROR">JDV_J218-CNAMAmeliSecteurConventionnement-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="168">
<p>SituationOperationnelle</p>
</td>
<td width="247">
<p>secteurConventionnement</p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p>practitionerRole-hasCAS</p>
</td>
<td width="195">
<p>Boolean</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>&nbsp;</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>SituationOperationnelle</p>
</td>
<td width="247">
<p>optionContratAcc&egrave;sAuxSoins</p>
</td>
</tr>
<tr>
<td colspan="2" width="272">
<p>practitionerRole-vitaleAccepted</p>
</td>
<td width="195">
<p>Boolean</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="405">
<p>&nbsp;</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="168">
<p>SituationOperationnelle</p>
</td>
<td width="247">
<p>carteVitaleAcceptee</p>
</td>
</tr>
</tbody>
</table>

### Mapping profil [RORLocation](StructureDefinition-ror-location.html)

<table width="1601">
<tbody>
<tr>
<td colspan="2" width="373">
<p><strong>FHIR path</strong></p>
</td>
<td width="127">
<p><strong>FHIR type</strong></p>
</td>
<td width="33">
<p><strong>Card</strong></p>
</td>
<td width="45">
<p><strong>Status</strong></p>
</td>
<td width="87">
<p><strong>Valeur fix&eacute;e</strong></p>
</td>
<td width="309">
<p><strong>ValueSet</strong></p>
</td>
<td width="92">
<p><strong>Binding</strong></p>
</td>
<td width="228">
<p><strong>Classe ROR</strong></p>
</td>
<td width="307">
<p><strong>Attribut ROR</strong></p>
</td>
</tr>
<tr>
<td colspan="2" width="373">
<p><strong>Donn&eacute;es techniques</strong></p>
</td>
<td width="127">
<p><strong>&nbsp;</strong></p>
</td>
<td width="33">
<p><strong>&nbsp;</strong></p>
</td>
<td width="45">
<p><strong>&nbsp;</strong></p>
</td>
<td width="87">
<p><strong>&nbsp;</strong></p>
</td>
<td width="309">
<p><strong>&nbsp;</strong></p>
</td>
<td width="92">
<p><strong>&nbsp;</strong></p>
</td>
<td width="228">
<p><strong>&nbsp;</strong></p>
</td>
<td width="307">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="36">
<p>id</p>
</td>
<td width="337">
<p>&nbsp;</p>
</td>
<td width="127">
<p>Id</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>-</p>
</td>
<td width="307">
<p>-</p>
</td>
</tr>
<tr>
<td width="36">
<p>meta</p>
</td>
<td width="337">
<p>&nbsp;</p>
</td>
<td width="127">
<p>Meta</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>Metadonnee</p>
</td>
<td width="307">
<p>-</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>tag (slice)</p>
</td>
<td width="127">
<p>Coding</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>-</p>
</td>
<td width="307">
<p>-</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>&nbsp;&nbsp;&nbsp; codeRegion</p>
</td>
<td width="127">
<p>Coding</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR">JDV_J237-RegionOM-ROR</a></u></p>
</td>
<td width="92">
<p>Required</p>
</td>
<td width="228">
<p>Metadonnee</p>
</td>
<td width="307">
<p>codeRegion</p>
</td>
</tr>
<tr>
<td colspan="2" width="373">
<p><strong>Donn&eacute;es fonctionnelles</strong></p>
</td>
<td width="127">
<p><strong>&nbsp;</strong></p>
</td>
<td width="33">
<p><strong>&nbsp;</strong></p>
</td>
<td width="45">
<p><strong>&nbsp;</strong></p>
</td>
<td width="87">
<p><strong>&nbsp;</strong></p>
</td>
<td width="309">
<p><strong>&nbsp;</strong></p>
</td>
<td width="92">
<p><strong>&nbsp;</strong></p>
</td>
<td width="228">
<p><strong>&nbsp;</strong></p>
</td>
<td width="307">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="2" width="373">
<p>identifer (slice)</p>
</td>
<td width="127">
<p>Identifier</p>
</td>
<td width="33">
<p>0..*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>&nbsp;</p>
</td>
<td width="307">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>idExterneSynchro</p>
</td>
<td width="127">
<p>Identifier</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>Location</p>
</td>
<td width="307">
<p>idExterneSynchro</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>idLocation</p>
</td>
<td width="127">
<p>Identifier</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>identifiant</p>
</td>
</tr>
<tr>
<td width="36">
<p>name</p>
</td>
<td width="337">
<p>&nbsp;</p>
</td>
<td width="127">
<p>string</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>nom</p>
</td>
</tr>
<tr>
<td colspan="2" width="373">
<p>description</p>
</td>
<td width="127">
<p>string</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>description</p>
</td>
</tr>
<tr>
<td width="36">
<p>type</p>
</td>
<td width="337">
<p>&nbsp;</p>
</td>
<td width="127">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J198-FonctionLieu-ROR/FHIR/JDV-J198-FonctionLieu-ROR">JDV_J198-FonctionLieu-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>fonctionLieu</p>
</td>
</tr>
<tr>
<td colspan="2" width="373">
<p>telecom</p>
</td>
<td width="127">
<p>ContactPoint</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>telecommunication</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>value</p>
</td>
<td width="127">
<p>String</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>Telecommunication</p>
</td>
<td width="307">
<p>adresseTelecom</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>RORCommunicationChannel</p>
</td>
<td width="127">
<p>code</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR">JDV_J225-CanalCommunication-ROR</a></u></p>
</td>
<td width="92">
<p>Required</p>
</td>
<td width="228">
<p>Telecommunication</p>
</td>
<td width="307">
<p>canal</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>RORContactUsage</p>
</td>
<td width="127">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>Telecommunication</p>
</td>
<td width="307">
<p>utilisation</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>RORConfidentialityLevel</p>
</td>
<td width="127">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J222-NiveauConfidentialite-ROR/FHIR/JDV-J222-NiveauConfidentialite-ROR">JDV_J222-NiveauConfidentialite-ROR</a></u></p>
</td>
<td width="92">
<p>Required</p>
</td>
<td width="228">
<p>Telecommunication</p>
</td>
<td width="307">
<p>niveauConfidentialite</p>
</td>
</tr>
<tr>
<td colspan="2" width="373">
<p>adress</p>
</td>
<td width="127">
<p>Adress</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>adresse</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>postalCode</p>
</td>
<td width="127">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>adresse/codePostal</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>city</p>
</td>
<td width="127">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>adresse/localit&eacute;</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>extension:careof</p>
</td>
<td width="127">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>adresse/pointRemise</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>extension:additionallocator</p>
</td>
<td width="127">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>adresse/complementPointGeographique</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>extension:houseNumber</p>
</td>
<td width="127">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>adresse/numeroVoie</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>extension:buildingNumberSuffix</p>
</td>
<td width="127">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>adresse</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>extension:streetNameType</p>
</td>
<td width="127">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J219-TypeVoie-ROR/FHIR/JDV-J219-TypeVoie-ROR">JDV_J219-TypeVoie-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>adresse/typeVoie</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>extension:streetNameBase</p>
</td>
<td width="127">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>0</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>adresse/libelleVoie</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>extension:streetNameBase</p>
</td>
<td width="127">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>adresse/lieuDit</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>extension:postBox</p>
</td>
<td width="127">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>adresse/mentionDistribution</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>ROROrganizationAddressLineISO21090AdxpLocality</p>
</td>
<td width="127">
<p>Coding</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J230-CommuneOM-ROR/FHIR/JDV-J230-CommuneOM-ROR">JDV_J230-CommuneOM-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="2" width="373">
<p>position</p>
</td>
<td width="127">
<p>BackboneElement</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>coordonneeGeographique</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>latitude</p>
</td>
<td width="127">
<p>decimal</p>
</td>
<td width="33">
<p>1&hellip;1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>coordonneeGeographique/latitude</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>longitude</p>
</td>
<td width="127">
<p>decimal</p>
</td>
<td width="33">
<p>1&hellip;1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>coordonneeGeographique/longitude</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>RORGeolocation</p>
</td>
<td width="127">
<p>&nbsp;</p>
</td>
<td width="33">
<p>&nbsp;</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>&nbsp;</p>
</td>
<td width="307">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>&nbsp;&nbsp;&nbsp;&nbsp; extension:geodesicSystem</p>
</td>
<td width="127">
<p>String</p>
</td>
<td width="33">
<p>1&hellip;1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>coordonneeGeographique/systemeGeodesique</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; extension:reliablePosition</p>
</td>
<td width="127">
<p>boolean</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>coordonneeGeographique/coordonneesFiables</p>
</td>
</tr>
<tr>
<td colspan="2" width="373">
<p><strong>Extensions</strong></p>
</td>
<td width="127">
<p><strong>&nbsp;</strong></p>
</td>
<td width="33">
<p><strong>&nbsp;</strong></p>
</td>
<td width="45">
<p><strong>&nbsp;</strong></p>
</td>
<td width="87">
<p><strong>&nbsp;</strong></p>
</td>
<td width="309">
<p><strong>&nbsp;</strong></p>
</td>
<td width="92">
<p><strong>&nbsp;</strong></p>
</td>
<td width="228">
<p><strong>&nbsp;</strong></p>
</td>
<td width="307">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="2" width="373">
<p>RORLocationStatus</p>
</td>
<td width="127">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J224-StatutLieu-ROR/FHIR/JDV-J224-StatutLieu-ROR">JDV_J224-StatutLieu-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LieuRealisationOffre</p>
</td>
<td width="307">
<p>statut</p>
</td>
</tr>
<tr>
<td colspan="2" width="373">
<p>RORLocationCommuneCog</p>
</td>
<td width="127">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J230-CommuneOM-ROR/FHIR/JDV-J230-CommuneOM-ROR">JDV_J230-CommuneOM-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>&nbsp;</p>
</td>
<td width="307">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="2" width="373">
<p>RORLocationEquipment</p>
</td>
<td width="127">
<p>ComplexeType</p>
</td>
<td width="33">
<p>0..*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>&nbsp;</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>EquipementSpecifique</p>
</td>
<td width="307">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>equipmentType</p>
</td>
<td width="127">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J18-EquipementSpecifique-ROR/FHIR/JDV-J18-EquipementSpecifique-ROR">JDV_J18-EquipementSpecifique-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>EquipementSpecifique</p>
</td>
<td width="307">
<p>typeEquipement</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>nbInService</p>
</td>
<td width="127">
<p>integer</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>EquipementSpecifique</p>
</td>
<td width="307">
<p>nbEquipementEnService</p>
</td>
</tr>
<tr>
<td colspan="2" width="373">
<p>RORLocationEquipmentLimit</p>
</td>
<td width="127">
<p>ComplexeType</p>
</td>
<td width="33">
<p>0..*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LimiteCaracteristiqueEquipement</p>
</td>
<td width="307">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="36">&nbsp;</td>
<td width="337">
<p>equipmentFeature</p>
</td>
<td width="127">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J228-TypeCaracteristiqueEquipement-ROR/FHIR/JDV-J228-TypeCaracteristiqueEquipement-ROR">JDV_J228-TypeCaracteristiqueEquipement-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LimiteCaracteristiqueEquipement</p>
</td>
<td width="307">
<p>typeCaracteristique</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>limitValue</p>
</td>
<td width="127">
<p>quantity</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>LimiteCaracteristiqueEquipement</p>
</td>
<td width="307">
<p>valeurLimite</p>
</td>
</tr>
<tr>
<td colspan="2" width="373">
<p>RORLocationResidentialCapacity</p>
</td>
<td width="127">
<p>ComplexeType</p>
</td>
<td width="33">
<p>0&hellip;*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapaciteHabitation</p>
</td>
<td width="307">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>residentialType</p>
</td>
<td width="127">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J32-TypeHabitation-ROR/FHIR/JDV-J32-TypeHabitation-ROR">JDV_J32-TypeHabitation-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapaciteHabitation</p>
</td>
<td width="307">
<p>typeHabitation</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>residentialNumber</p>
</td>
<td width="127">
<p>integer</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapaciteHabitation</p>
</td>
<td width="307">
<p>nbHabitation</p>
</td>
</tr>
<tr>
<td colspan="2" width="373">
<p>RORLocationSupportedCapacity</p>
</td>
<td width="127">
<p>ComplexeType</p>
</td>
<td width="33">
<p>0&hellip;*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapacitePriseCharge</p>
</td>
<td width="307">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>temporaryAssignement</p>
</td>
<td width="127">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J195-AffectationTemporaire-ROR/FHIR/JDV-J195-AffectationTemporaire-ROR">JDV_J195-AffectationTemporaire-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapacitePriseCharge</p>
</td>
<td width="307">
<p>affectationTemporaire</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>capacityType</p>
</td>
<td width="127">
<p>Code</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J187-NatureCapacite-ROR/FHIR/JDV-J187-NatureCapacite-ROR">JDV_J187-NatureCapacite-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapaciteAccueilOperationnelle</p>
</td>
<td width="307">
<p>natureCapacite</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>capacityStatus</p>
</td>
<td width="127">
<p>Code</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J188-TypeStatutCapacite-ROR/FHIR/JDV-J188-TypeStatutCapacite-ROR">JDV_J188-TypeStatutCapacite-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapaciteAccueilOperationnelle</p>
</td>
<td width="307">
<p>statutCapacite</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>temporalityCapacity</p>
</td>
<td width="127">
<p>Code</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J189-TemporaliteCapacite-ROR/FHIR/JDV-J189-TemporaliteCapacite-ROR">JDV_J189-TemporaliteCapacite-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapaciteAccueilOperationnelle</p>
</td>
<td width="307">
<p>temporaliteCapacite</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>nbCapacity</p>
</td>
<td width="127">
<p>integer</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapaciteAccueilOperationnelle</p>
</td>
<td width="307">
<p>nombreCapacite</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>capacitySourceType</p>
</td>
<td width="127">
<p>Code</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J193-TypeSourceCapacite-ROR/FHIR/JDV-J193-TypeSourceCapacite-ROR">JDV_J193-TypeSourceCapacite-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapaciteAccueilOperationnelle</p>
</td>
<td width="307">
<p>typeSourceCapacite</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>genderCapacityAvailable</p>
</td>
<td width="127">
<p>Code</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J190-GenreCapacite-ROR/FHIR/JDV-J190-GenreCapacite-ROR">JDV_J190-GenreCapacite-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapaciteAccueilOperationnelle</p>
</td>
<td width="307">
<p>genreCapaciteDispo</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>capacityUpdateDate</p>
</td>
<td width="127">
<p>DateTime</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p>-</p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapaciteAccueilOperationnelle</p>
</td>
<td width="307">
<p>dateMAJCapacite</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>capacityClosingType</p>
</td>
<td width="127">
<p>Code</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J191-TypeFermetureCapacite-ROR/FHIR/JDV-J191-TypeFermetureCapacite-ROR">JDV_J191-TypeFermetureCapacite-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapaciteAccueilOperationnelle</p>
</td>
<td width="307">
<p>typeFermetureCapacite</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>additionalBedType</p>
</td>
<td width="127">
<p>Code</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J192-TypeLitSupplementaire-ROR/FHIR/JDV-J192-TypeLitSupplementaire-ROR">JDV_J192-TypeLitSupplementaire-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapaciteAccueilOperationnelle</p>
</td>
<td width="307">
<p>typeLitsSupplementaire</p>
</td>
</tr>
<tr>
<td width="36">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>crisisType</p>
</td>
<td width="127">
<p>Code</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="309">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J194-TypeCrise-ROR/FHIR/JDV-J194-TypeCrise-ROR">JDV_J194-TypeCrise-ROR</a></u></p>
</td>
<td width="92">
<p>&nbsp;</p>
</td>
<td width="228">
<p>CapaciteAccueilOperationnelle</p>
</td>
<td width="307">
<p>typeCrise</p>
</td>
</tr>
</tbody>
</table>

### Mapping profil [ROROrganization](StructureDefinition-ror-organization.html)

<table width="1675">
<tbody>
<tr>
<td colspan="2" width="378">
<p><strong>FHIR path</strong></p>
</td>
<td width="175">
<p><strong>FHIR type</strong></p>
</td>
<td width="33">
<p><strong>Card</strong></p>
</td>
<td width="45">
<p><strong>Status</strong></p>
</td>
<td width="87">
<p><strong>Valeur fix&eacute;e</strong></p>
</td>
<td width="356">
<p><strong>ValueSet</strong></p>
</td>
<td width="68">
<p><strong>Binding</strong></p>
</td>
<td width="271">
<p><strong>Classe ROR</strong></p>
</td>
<td width="261">
<p><strong>Attribut ROR</strong></p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p><strong>Donn&eacute;es techniques</strong></p>
</td>
<td width="175">
<p><strong>&nbsp;</strong></p>
</td>
<td width="33">
<p><strong>&nbsp;</strong></p>
</td>
<td width="45">
<p><strong>&nbsp;</strong></p>
</td>
<td width="87">
<p><strong>&nbsp;</strong></p>
</td>
<td width="356">
<p><strong>&nbsp;</strong></p>
</td>
<td width="68">
<p><strong>&nbsp;</strong></p>
</td>
<td width="271">
<p><strong>&nbsp;</strong></p>
</td>
<td width="261">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="41">
<p>id</p>
</td>
<td width="337">
<p>&nbsp;</p>
</td>
<td width="175">
<p>Id</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>-</p>
</td>
<td width="261">
<p>-</p>
</td>
</tr>
<tr>
<td width="41">
<p>meta</p>
</td>
<td width="337">
<p>&nbsp;</p>
</td>
<td width="175">
<p>Meta</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>Metadonnee</p>
</td>
<td width="261">
<p>-</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>tag (slice)</p>
</td>
<td width="175">
<p>Coding</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>-</p>
</td>
<td width="261">
<p>-</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>&nbsp;&nbsp;&nbsp; codeRegion</p>
</td>
<td width="175">
<p>Coding</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR">JDV_J237-RegionOM-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>Metadonnee</p>
</td>
<td width="261">
<p>codeRegion</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p><strong>References</strong></p>
</td>
<td width="175">
<p><strong>&nbsp;</strong></p>
</td>
<td width="33">
<p><strong>&nbsp;</strong></p>
</td>
<td width="45">
<p><strong>&nbsp;</strong></p>
</td>
<td width="87">
<p><strong>&nbsp;</strong></p>
</td>
<td width="356">
<p><strong>&nbsp;</strong></p>
</td>
<td width="68">
<p><strong>&nbsp;</strong></p>
</td>
<td width="271">
<p><strong>&nbsp;</strong></p>
</td>
<td width="261">
<p><strong>&nbsp;</strong></p>
</td>
</tr>
<tr>
<td width="41">
<p>partOf</p>
</td>
<td width="337">
<p>&nbsp;</p>
</td>
<td width="175">
<p>Reference(Organization)</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>Reference</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p><strong>Donn&eacute;es fonctionnelles</strong></p>
</td>
<td width="175">
<p><strong>&nbsp;</strong></p>
</td>
<td width="33">
<p><strong>&nbsp;</strong></p>
</td>
<td width="45">
<p><strong>&nbsp;</strong></p>
</td>
<td width="87">
<p><strong>&nbsp;</strong></p>
</td>
<td width="356">
<p><strong>&nbsp;</strong></p>
</td>
<td width="68">
<p><strong>&nbsp;</strong></p>
</td>
<td width="271">
<p><strong>&nbsp;</strong></p>
</td>
<td width="261">
<p><strong>&nbsp;</strong></p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p>identifier (slice)</p>
</td>
<td width="175">
<p>Identifier</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>idNatStruct</p>
</td>
<td width="175">
<p>Identifier</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>40</p>
</td>
<td width="356">
<p>JDV-J236-TypeIdentifiant</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>idNatstruct</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>numFINESS</p>
</td>
<td width="175">
<p>Identifier</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>1</p>
</td>
<td width="356">
<p>JDV-J236-TypeIdentifiant</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>numFINESS</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>numSIREN</p>
</td>
<td width="175">
<p>Identifier</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>2</p>
</td>
<td width="356">
<p>JDV-J236-TypeIdentifiant</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>numSIREN</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>numRPPS</p>
</td>
<td width="175">
<p>Identifier</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>4</p>
</td>
<td width="356">
<p>JDV-J236-TypeIdentifiant</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>numRPPS</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>numSIRET</p>
</td>
<td width="175">
<p>Identifier</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>42</p>
</td>
<td width="356">
<p>JDV-J236-TypeIdentifiant</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>numSIRET</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>idenfitifierOI</p>
</td>
<td width="175">
<p>Identifier</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>3</p>
</td>
<td width="356">
<p>JDV-J236-TypeIdentifiant</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>identifiantOI</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>numADELI</p>
</td>
<td width="175">
<p>Identifier</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>0</p>
</td>
<td width="356">
<p>JDV-J236-TypeIdentifiant</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>numADELI</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>identifierEG</p>
</td>
<td width="175">
<p>Identifier</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>41</p>
</td>
<td width="356">
<p>JDV-J236-TypeIdentifiant</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>identifiantEG</p>
</td>
</tr>
<tr>
<td width="41">
<p>name</p>
</td>
<td width="337">
<p>&nbsp;</p>
</td>
<td width="175">
<p>string</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>raisonSociale</p>
</td>
</tr>
<tr>
<td width="41">
<p>alias</p>
</td>
<td width="337">
<p>&nbsp;</p>
</td>
<td width="175">
<p>string</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>complementRaisonSociale</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p>description</p>
</td>
<td width="175">
<p>string</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EG</p>
</td>
<td width="261">
<p>lieuEG/description</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p>type (slice)</p>
</td>
<td width="175">
<p>&nbsp;</p>
</td>
<td width="33">
<p>1..*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>statutJuridiqueINSEE</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u>JDV_J199-StatutJuridique-ROR</u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>statutJuridique</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>sousEnsembleAgregatStatutJuridique</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J200-SousEnsembleAgregatStatutJuridique-ROR/FHIR/JDV-J200-SousEnsembleAgregatStatutJuridique-ROR">JDV_J200-SousEnsembleAgregatStatutJuridique-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>sousEnsembleAgregatStatutJuridique</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>categorieEtablissement</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J55-CategorieEG-ROR/FHIR/JDV-J55-CategorieEG-ROR">JDV_J55-CategorieEG-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>EG</p>
</td>
<td width="261">
<p>categorieEG</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>SPHparticipation&nbsp;</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EG</p>
</td>
<td width="261">
<p>modaliteParticipationSPH</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>organizationType</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J203-TypeOrganisationInterne-ROR/FHIR/JDV-J203-TypeOrganisationInterne-ROR">JDV_J203-TypeOrganisationInterne-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>OI</p>
</td>
<td width="261">
<p>typeOI</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p>contact</p>
</td>
<td width="175">
<p>BackboneElement</p>
</td>
<td width="33">
<p>0..*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EJ+EG</p>
</td>
<td width="261">
<p>contact</p>
</td>
</tr>
<tr>
<td width="41">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>contact.name</p>
</td>
<td width="175">
<p>HumanName</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>Contact</p>
</td>
<td width="261">
<p>nom</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>RORContactfunctionContact</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J220-FonctionContact-ROR/FHIR/JDV-J220-FonctionContact-ROR">JDV_J220-FonctionContact-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>Contact</p>
</td>
<td width="261">
<p>fonctionContact</p>
</td>
</tr>
<tr>
<td width="41">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>contact.purpose</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J221-NatureContact-ROR/FHIR/JDV-J221-NatureContact-ROR">JDV_J221-NatureContact-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>Contact</p>
</td>
<td width="261">
<p>natureContact</p>
</td>
</tr>
<tr>
<td width="41">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>RORContactDescription</p>
</td>
<td width="175">
<p>string</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>Contact</p>
</td>
<td width="261">
<p>description</p>
</td>
</tr>
<tr>
<td width="41">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>RORContactConfidentialityLevel</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J222-NiveauConfidentialite-ROR/FHIR/JDV-J222-NiveauConfidentialite-ROR">JDV_J222-NiveauConfidentialite-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>Contact</p>
</td>
<td width="261">
<p>niveauConfidentialite</p>
</td>
</tr>
<tr>
<td width="41">
<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>contact.telecom</p>
</td>
<td width="175">
<p>ContactPoint</p>
</td>
<td width="33">
<p>0..*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>Contact</p>
</td>
<td width="261">
<p>telecommunication</p>
</td>
</tr>
<tr>
<td width="41">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>&nbsp;&nbsp;&nbsp; RORTelecomCommunicationChannel</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR">JDV_J225-CanalCommunication-ROR</a></u></p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>Contact</p>
</td>
<td width="261">
<p>telecommunication</p>
</td>
</tr>
<tr>
<td width="41">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>&nbsp;&nbsp;&nbsp; telecom.value</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>Contact</p>
</td>
<td width="261">
<p>telecommunication</p>
</td>
</tr>
<tr>
<td width="41">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>&nbsp;&nbsp;&nbsp; RORContactTelecomUsage</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>Contact</p>
</td>
<td width="261">
<p>telecommunication</p>
</td>
</tr>
<tr>
<td width="41">
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</td>
<td width="337">
<p>&nbsp;&nbsp;&nbsp; RORTelecomConfidentialityLevel</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J222-NiveauConfidentialite-ROR/FHIR/JDV-J222-NiveauConfidentialite-ROR">JDV_J222-NiveauConfidentialite-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>Contact</p>
</td>
<td width="261">
<p>telecommunication</p>
</td>
</tr>
<tr>
<td width="41">
<p>adress</p>
</td>
<td width="337">
<p>&nbsp;</p>
</td>
<td width="175">
<p>Adress</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>Adresse</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>postalCode</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>pointRemise</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>city</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>completementPointGeographique</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>extension:careof</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>numeroVoie</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>extension:additionallocator</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>extension</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>extension:houseNumber</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>typeVoie</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>extension:buildingNumberSuffix</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>libelleVoie</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>extension:streetNameType</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>lieuDit</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>extension:streetNameBase</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>0</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>mentionDistribution</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>extension:streetNameBase</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>codePostal</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>extension:postBox</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>localite</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>ROROrganizationAddressLineISO21090AdxpLocality</p>
</td>
<td width="175">
<p>Coding</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>0</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p><strong>Extensions</strong></p>
</td>
<td width="175">
<p><strong>&nbsp;</strong></p>
</td>
<td width="33">
<p><strong>&nbsp;</strong></p>
</td>
<td width="45">
<p><strong>&nbsp;</strong></p>
</td>
<td width="87">
<p><strong>&nbsp;</strong></p>
</td>
<td width="356">
<p><strong>&nbsp;</strong></p>
</td>
<td width="68">
<p><strong>&nbsp;</strong></p>
</td>
<td width="271">
<p><strong>&nbsp;</strong></p>
</td>
<td width="261">
<p><strong>&nbsp;</strong></p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p>ROROrganizationprice</p>
</td>
<td width="175">
<p>ComplexeType</p>
</td>
<td width="33">
<p>0..*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>Tarif</p>
</td>
<td width="261">
<p>/</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>priceType</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J36-TypeTarif-ROR/FHIR/JDV-J36-TypeTarif-ROR">JDV_J36-TypeTarif-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>Tarif</p>
</td>
<td width="261">
<p>typeTarif</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>amount</p>
</td>
<td width="175">
<p>Money</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>Tarif</p>
</td>
<td width="261">
<p>montantTarif</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>priceUnit</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J205-UnitePrix-ROR/FHIR/JDV-J205-UnitePrix-ROR">JDV_J205-UnitePrix-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>Tarif</p>
</td>
<td width="261">
<p>unitePrix</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>startDate</p>
</td>
<td width="175">
<p>DateTime</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>Tarif</p>
</td>
<td width="261">
<p>dateDebutValiditeTarif</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>deliveryIncluded</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J206-PrestationNonObligatoireIncluse-ROR/FHIR/JDV-J206-PrestationNonObligatoireIncluse-ROR">JDV_J206-PrestationNonObligatoireIncluse-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>ForfaitSocleHebergement</p>
</td>
<td width="261">
<p>prestationsNonObligatoiresIncluses</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>othersDeliveryIncluded</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>0..*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>ForfaitSocleHebergement</p>
</td>
<td width="261">
<p>autresPrestationsNonObligatoiresIncluses</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>under60</p>
</td>
<td width="175">
<p>Boolean</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>ForfaitSocleHebergement</p>
</td>
<td width="261">
<p>tarifMoins60Ans</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>residentialType</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J32-TypeHabitation-ROR/FHIR/JDV-J32-TypeHabitation-ROR/">JDV_J32-TypeHabitation-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>ForfaitSocleHebergement</p>
</td>
<td width="261">
<p>typeHabitation</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>welcomeType</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J30-TemporaliteAccueil-ROR/FHIR/JDV-J30-TemporaliteAccueil-ROR">JDV_J30-TemporaliteAccueil-ROR</a></u></p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>ForfaitSocleHebergement + TarifDependance</p>
</td>
<td width="261">
<p>temporaliteAccueil</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>specialPrice</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J39-ConditionTarifaire-ROR/FHIR/JDV-J39-ConditionTarifaire-ROR">JDV_J39-ConditionTarifaire-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>TarifAccueilDeJour+TarifAidesHumaines</p>
</td>
<td width="261">
<p>conditionTarifaire</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>dependencyLevel</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J27-GroupeTarifaireDependance-ROR/FHIR/JDV-J27-GroupeTarifaireDependance-ROR">JDV_J27-GroupeTarifaireDependance-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>TarifDependance</p>
</td>
<td width="261">
<p>groupeTarifaireDependance</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>humanHelpPriceName</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>TarifAidesHumaines</p>
</td>
<td width="261">
<p>nomTarifAidesHumaines</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>mealDeliveryName</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>TarifPortageRepas</p>
</td>
<td width="261">
<p>nomTarifPortageRepas</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>managementType</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J26-ModeGestion-ROR/FHIR/JDV-J26-ModeGestion-ROR">JDV_J26-ModeGestion-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>TarifAidesHumaines</p>
</td>
<td width="261">
<p>modeGestion</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>otherAdditionnalServiceName</p>
</td>
<td width="175">
<p>String</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>TarifPrestationSupplementaire</p>
</td>
<td width="261">
<p>nomAutrePrestationSupp</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>additionnalServiceName</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>0</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J206-PrestationNonObligatoireIncluse-ROR/FHIR/JDV-J206-PrestationNonObligatoireIncluse-ROR">JDV_J206-PrestationNonObligatoireIncluse-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>TarifPrestationSupplementaire</p>
</td>
<td width="261">
<p>nomPrestationSupp</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p>RORTerritorialDivision</p>
</td>
<td width="175">
<p>ComplexeType</p>
</td>
<td width="33">
<p>0..*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EG</p>
</td>
<td width="261">
<p>territoireSante</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>type</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J223-TypeDivisionTerritoriale-ROR/FHIR/JDV-J223-TypeDivisionTerritoriale-ROR">JDV_J223-TypeDivisionTerritoriale-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>OffreOp&eacute;rationnelle</p>
</td>
</tr>
<tr>
<td width="41">&nbsp;</td>
<td width="337">
<p>code</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>1..1</p>
</td>
<td width="45">
<p>0</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>OffreOp&eacute;rationnelle</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p>ROROrganizationFinancialHelpType</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..*</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J31-AideFinanciere-ROR/FHIR/JDV-J31-AideFinanciere-ROR">JDV_J31-AideFinanciere-ROR</a></u></p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EG</p>
</td>
<td width="261">
<p>aideFinanciere</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p>ROROrgnizationAccomodationFamily</p>
</td>
<td width="175">
<p>boolean</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EG</p>
</td>
<td width="261">
<p>hebergementFamille</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p>ROROrganizationNbTemporarySocialHelpPlace</p>
</td>
<td width="175">
<p>integer</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EG</p>
</td>
<td width="261">
<p>nbPlaceAideSocialTemporaire</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p>ROROrganizationNbPermanentSocialHelpPlace</p>
</td>
<td width="175">
<p>integer</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EG</p>
</td>
<td width="261">
<p>nbPlaceAideSocialPermanent</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p>ROROrganizationaccessibilityLocation</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J50-AccessibiliteLieu-ROR/FHIR/JDV-J50-AccessibiliteLieu-ROR">JDV_J50-AccessibiliteLieu-ROR/FHIR</a></u></p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EG</p>
</td>
<td width="261">
<p>accessibiliteLieu</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p>ROROrganizationlevelRecourseORSAN</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J204-NiveauRecoursORSAN-ROR/FHIR/JDV-J204-NiveauRecoursORSAN-ROR/">JDV_J204-NiveauRecoursORSAN-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>EG</p>
</td>
<td width="261">
<p>niveauRecoursORSAN</p>
</td>
</tr>
<tr>
<td width="41">
<p>period</p>
</td>
<td width="337">
<p>&nbsp;</p>
</td>
<td width="175">
<p>&nbsp;</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>&nbsp;</p>
</td>
<td width="356">
<p><u>&nbsp;</u></p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>&nbsp;</p>
</td>
<td width="261">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p>RORCommunceCOG</p>
</td>
<td width="175">
<p>CodeableConcept</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p><u><a href="https://mos.esante.gouv.fr/NOS/JDV_J201-TypeFermeture-ROR/FHIR/JDV-J201-TypeFermeture-ROR">JDV_J201-TypeFermeture-ROR</a></u></p>
</td>
<td width="68">
<p>Required</p>
</td>
<td width="271">
<p>EJ</p>
</td>
<td width="261">
<p>typeFermeture</p>
</td>
</tr>
<tr>
<td colspan="2" width="378">
<p>ROROrganizationDropZone</p>
</td>
<td width="175">
<p>boolean</p>
</td>
<td width="33">
<p>0..1</p>
</td>
<td width="45">
<p>1</p>
</td>
<td width="87">
<p>-</p>
</td>
<td width="356">
<p>-</p>
</td>
<td width="68">
<p>&nbsp;</p>
</td>
<td width="271">
<p>EG</p>
</td>
<td width="261">
<p>zonePoser</p>
</td>
</tr>
</tbody>
</table>