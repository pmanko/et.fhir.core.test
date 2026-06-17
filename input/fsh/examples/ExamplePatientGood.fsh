Instance: ExamplePatientGood
InstanceOf: ETPatient
Usage: #example
Title: "Valid ETPatient example"
Description: "A Patient that conforms to the Ethiopia base Patient profile (ETPatient). The conformance harness expects this fixture to validate with zero errors."

* identifier[nationalIdentifier].value = "ET-987654321"
* identifier[mrn].value = "MRN-123456"

* name.given = "Abebe"
* name.family.extension[fathersName].valueString = "Challa"
* name.family.extension[grandfathersName].valueString = "Mohammed"

* birthDate = "2019-08-15"
* birthDate.extension[dobEstimated].valueBoolean = false

* gender = #male

* address.state = #AA
* address.district = "Woreda 5"
* address.line = "Near Atlas Hotel"
* address.extension[zone].valueString = "Bole Subcity"
* address.extension[kebele].valueString = "Kebele 03"
* address.extension[ketena_Gott].valueString = "Ketena 12"

* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"

* extension[EducationStatusExtension].valueCodeableConcept = http://fhir.et/core/CodeSystem/education-status-cs#secondary "Secondary school"
* extension[Occupation].valueCodeableConcept = http://fhir.et/core/CodeSystem/occupation#emp "Employed"

* telecom[email].value = "Challa.kebede@example.com"
