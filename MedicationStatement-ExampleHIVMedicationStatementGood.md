# Valid HIV ART MedicationStatement - Ethiopia Core IG Conformance Test Fixtures v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Valid HIV ART MedicationStatement**

## Example MedicationStatement: Valid HIV ART MedicationStatement

Profile: [HIV ART Medication Statement](file:///github/workspace/output/StructureDefinition-hiv-medication-statement.html)

**status**: Active

**medication**: AZT-3TC-EFV

**subject**: [Challa Male, DoB Unknown ( http://ethiori.moh.gov.et/hiv/art-number#ART-G-1)](Patient-ExampleHIVPatientGood.md)

**effective**: 2026-01-01



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "ExampleHIVMedicationStatementGood",
  "meta" : {
    "profile" : ["http://fhir.et/hiv/StructureDefinition/hiv-medication-statement"]
  },
  "status" : "active",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.et/hiv/CodeSystem/arv-regimen-cs",
      "code" : "1d",
      "display" : "AZT-3TC-EFV"
    }]
  },
  "subject" : {
    "reference" : "Patient/ExampleHIVPatientGood"
  },
  "effectiveDateTime" : "2026-01-01"
}

```
