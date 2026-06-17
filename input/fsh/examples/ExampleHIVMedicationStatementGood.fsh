Instance: ExampleHIVMedicationStatementGood
InstanceOf: HIVMedicationStatement
Usage: #example
Title: "Valid HIV ART MedicationStatement"
* status = #active
* medicationCodeableConcept = http://fhir.et/hiv/CodeSystem/arv-regimen-cs#1d "AZT-3TC-EFV"
* effectiveDateTime = "2026-01-01"
* subject = Reference(ExampleHIVPatientGood)
