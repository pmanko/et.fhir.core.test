Instance: ExampleHIVMedicationDispenseGood
InstanceOf: HIVMedicationDispense
Usage: #example
Title: "Valid HIV ART MedicationDispense"
* status = #completed
* medicationCodeableConcept.text = "Antiretroviral therapy (ART)"
* quantity.value = 30
* quantity.unit = "tablets"
* quantity.system = "http://unitsofmeasure.org"
* quantity.code = #{tablet}
* subject = Reference(ExampleHIVPatientGood)
