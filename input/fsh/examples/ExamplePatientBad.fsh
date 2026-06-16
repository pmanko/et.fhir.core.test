Instance: ExamplePatientBad
InstanceOf: ETPatient
Usage: #example
Title: "INTENTIONALLY INVALID ETPatient example"
Description: "A Patient that deliberately VIOLATES the Ethiopia base Patient profile (ETPatient): maritalStatus uses a code outside the required ETMaritalStatusVS binding. The conformance harness expects this fixture to FAIL validation (>=1 error). It is fine for the IG publisher QA to flag it — that is the point."

* identifier[nationalIdentifier].value = "ET-000000000"
* name.given = "Test"
* gender = #male

// VIOLATION: maritalStatus is bound (required) to ETMaritalStatusVS in ETPatient;
// this code is not in that value set, so $validate against ETPatient errors.
* maritalStatus = http://example.org/not-a-real-system#BOGUS "Not a valid marital status"
