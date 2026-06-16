# Ethiopia Core IG Conformance Test Fixtures (`et.fhir.core.test`)

The test-fixture companion to [`et.fhir.core`](http://fhir.et/core) (ETBase) — curated FHIR
test instances for validating against the **Ethiopia Base IG**. It holds both **valid** examples (expected to
pass `$validate`) and **intentionally invalid** ones (expected to fail), giving the
conformance harness a stable, versioned source of fixtures.

> Design principle: the [hapi-sandbox](https://github.com/pmanko/hapi-sandbox)
> conformance harness carries **no data** — all test fixtures live here, in an IG.

## Fixtures

| Instance | Profile | Expectation |
|---|---|---|
| `ExamplePatientGood` | `ETPatient` | validates with **0 errors** |
| `ExamplePatientBad` | `ETPatient` | **fails** (marital status outside the required ETMaritalStatusVS) |

## Build

Local (needs [SUSHI](https://fshschool.org/docs/sushi/installation/) + the
[IG Publisher](https://github.com/HL7/fhir-ig-publisher)):

```bash
./_updatePublisher.sh   # one-time: fetch publisher.jar into input-cache/
./_genonce.sh           # build the IG into output/ (runs SUSHI)
```

Just compile the fixtures (fast, no publisher): `sushi .` → `fsh-generated/resources/`.

## Publishing

`.github/workflows/build.yml` builds the IG and deploys `output/` to the `gh-pages`
branch on push to `main`. After enabling **Settings → Pages → branch `gh-pages`**, the
site and a referenceable package are served at:

- Site: `https://<owner>.github.io/et.fhir.core.test/`
- Package: `https://<owner>.github.io/et.fhir.core.test/package.tgz`

## Dependency on `et.fhir.core`

`et.fhir.core` is not yet on a package registry. `sushi-config.yaml` depends on it as
`et.fhir.core: dev`, which resolves from the local FHIR package cache
(`~/.fhir/packages/et.fhir.core#dev`) for local builds. CI pre-seeds that package from
`ET_CORE_PKG_URL` (its dev build) — update that URL once `et.fhir.core` publishes to
`fhir.et/core`, then depend on a real version.
