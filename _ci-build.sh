#!/usr/bin/env bash
# CI build: runs inside the hl7fhir/ig-publisher-base container.
# The IG Publisher invokes SUSHI itself, and SUSHI resolves dependencies from
# ~/.fhir/packages *in this container* — so seed the (unpublished) et.fhir.core
# dev build there before building. The publisher fetches the rest (r4.core and
# et.fhir.core's transitive deps) from the registry.
set -euo pipefail

ET_CORE_PKG_URL="https://moh-ethiopia.github.io/ETBase/package.tgz"
ET_CORE_VERSION="0.9.0"

dir="$HOME/.fhir/packages/et.fhir.core#${ET_CORE_VERSION}"
echo "Seeding et.fhir.core#${ET_CORE_VERSION} from ${ET_CORE_PKG_URL}"
mkdir -p "$dir"
curl -fsSL "$ET_CORE_PKG_URL" | tar -xz -C "$dir"
test -f "$dir/package/package.json"

echo "Fetching IG Publisher"
curl -sSL https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o publisher.jar

echo "Building IG"
java -Xmx4g -jar publisher.jar publisher -ig .
