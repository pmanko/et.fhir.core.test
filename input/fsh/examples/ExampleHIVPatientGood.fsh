Instance: ExampleHIVPatientGood
InstanceOf: HIVPatient
Usage: #example
Title: "Valid HIVPatient example"
Description: "HIV-program patient conforming to HIVPatient (carries the required ART number). Must validate with 0 errors."
* identifier[nationalIdentifier].value = "HIV-G-1"
* identifier[artNumber].value = "ART-G-1"
* name.family = "Challa"
* gender = #male
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"
