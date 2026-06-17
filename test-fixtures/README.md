# Test fixtures (negative + workflow bundles)

These are conformance **test data** for the ET validation sandbox, kept here in the
test IG repo (not split into the harness repo). They live **outside `input/`** on
purpose, so the IG Publisher ships/renders the IG without QA-validating them — an
intentionally-invalid instance in `input/` would fail the build.

- `invalid/` — single resources that **declare a `meta.profile`** but deliberately
  violate it (e.g. an HIV Patient with no ART number). The harness POSTs each to
  `$validate` and asserts it is **rejected**.
- `bundles/` — good/bad transaction bundles, POSTed to `Bundle/$validate`.

Valid single-resource examples live alongside the profiles as FSH in
`input/fsh/examples/` (they double as the IG's published, conformant examples).

The Karate runner that consumes these lives in the separate `hapi-sandbox` repo
(`harness/run-tests.sh`); point it here with `TEST_IG_FIXTURES=/path/to/test-fixtures`.
