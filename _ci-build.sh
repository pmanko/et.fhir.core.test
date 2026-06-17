#!/usr/bin/env bash
# CI build inside hl7fhir/ig-publisher-base. Seeds the (unpublished) ET deps into
# the FHIR package cache (SUSHI/publisher resolve from ~/.fhir), then builds.
set -euo pipefail
seed() { # id version url
  local dir="$HOME/.fhir/packages/$1#$2"
  echo "seeding $1#$2 from $3"
  mkdir -p "$dir"; curl -fsSL "$3" | tar -xz -C "$dir"; test -f "$dir/package/package.json"
}
seed et.fhir.core 0.9.0 https://moh-ethiopia.github.io/ETBase/package.tgz
seed et.fhir.surveillance 0.1.0 https://pmanko.github.io/et.fhir.surveillance/package.tgz
seed et.fhir.hiv 0.1.0 https://pmanko.github.io/et.fhir.hiv/package.tgz

curl -sSL https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o publisher.jar
java -Xmx4g -jar publisher.jar publisher -ig .
