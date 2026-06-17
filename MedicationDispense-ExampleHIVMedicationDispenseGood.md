# Valid HIV ART MedicationDispense - Ethiopia Core IG Conformance Test Fixtures v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Valid HIV ART MedicationDispense**

## Example MedicationDispense: Valid HIV ART MedicationDispense

Profile: [HIV ART Medication Dispense](file:///github/workspace/output/StructureDefinition-hiv-medication-dispense.html)

**status**: Completed

**medication**: Antiretroviral therapy (ART)

**subject**: [Challa Male, DoB Unknown ( http://ethiori.moh.gov.et/hiv/art-number#ART-G-1)](Patient-ExampleHIVPatientGood.md)

**quantity**: 30 tablets (Details: UCUM code{tablet} = '{tablet}')



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "ExampleHIVMedicationDispenseGood",
  "meta" : {
    "profile" : ["http://fhir.et/hiv/StructureDefinition/hiv-medication-dispense"]
  },
  "status" : "completed",
  "medicationCodeableConcept" : {
    "text" : "Antiretroviral therapy (ART)"
  },
  "subject" : {
    "reference" : "Patient/ExampleHIVPatientGood"
  },
  "quantity" : {
    "value" : 30,
    "unit" : "tablets",
    "system" : "http://unitsofmeasure.org",
    "code" : "{tablet}"
  }
}

```
