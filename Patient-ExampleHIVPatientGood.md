# Valid HIVPatient example - Ethiopia Core IG Conformance Test Fixtures v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Valid HIVPatient example**

## Example Patient: Valid HIVPatient example

Profile: [HIV Program Patient](file:///github/workspace/output/StructureDefinition-HIVPatient.html)

Challa Male, DoB Unknown ( http://ethiori.moh.gov.et/hiv/art-number#ART-G-1)

-------

| | |
| :--- | :--- |
| Marital Status: | Married |
| Other Id: | `http://id.gov.et/nationalidentifier`/HIV-G-1 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ExampleHIVPatientGood",
  "meta" : {
    "profile" : ["http://fhir.et/hiv/StructureDefinition/HIVPatient"]
  },
  "identifier" : [{
    "system" : "http://ethiori.moh.gov.et/hiv/art-number",
    "value" : "ART-G-1"
  },
  {
    "system" : "http://id.gov.et/nationalidentifier",
    "value" : "HIV-G-1"
  }],
  "name" : [{
    "family" : "Challa"
  }],
  "gender" : "male",
  "maritalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
      "code" : "M",
      "display" : "Married"
    }]
  }
}

```
