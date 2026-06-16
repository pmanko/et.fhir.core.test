#!/bin/bash
# Download the latest HL7 IG Publisher into ./input-cache/publisher.jar
set -e
mkdir -p input-cache
echo "Downloading the IG Publisher (~150 MB)..."
curl -L https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar \
  -o input-cache/publisher.jar --create-dirs
echo "Done."
