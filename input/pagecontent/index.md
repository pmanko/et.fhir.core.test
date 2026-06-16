### Ethiopia FHIR Conformance Test Fixtures

This IG holds curated **test instances** used to validate conformance against the
[Ethiopia Base IG (`et.fhir.core`)](http://fhir.et/core). It deliberately contains
both **valid** examples (expected to pass `$validate`) and **intentionally invalid**
examples (expected to fail), so automated conformance testing has a stable, versioned
source of fixtures.

These fixtures are consumed by the `hapi-sandbox` conformance harness; the harness
itself carries no data. The published package (`package.tgz`) is referenceable at this
IG's dev site.

Current fixtures:

- **ExamplePatientGood** — conforms to `ETPatient`; must validate with zero errors.
- **ExamplePatientBad** — violates `ETPatient` (marital status outside the required
  value set); must fail validation.
