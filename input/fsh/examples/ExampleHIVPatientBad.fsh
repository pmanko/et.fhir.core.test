Instance: ExampleHIVPatientBad
InstanceOf: HIVPatient
Usage: #example
Title: "INVALID HIVPatient (missing ART number)"
Description: "Valid as an ETPatient but omits the ART number that HIVPatient requires — an HIV-specific failure. Must FAIL validation."
* identifier[nationalIdentifier].value = "HIV-B-1"
* name.family = "Challa"
* gender = #male
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"
