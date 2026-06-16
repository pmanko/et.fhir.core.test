#!/bin/bash
# Build this IG once into ./output (runs SUSHI, then the IG Publisher).
# Requires ./input-cache/publisher.jar (run ./_updatePublisher.sh first).
set -e
export JAVA_TOOL_OPTIONS="$JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8"
publisher=input-cache/publisher.jar
if [ ! -f "$publisher" ]; then
  echo "IG Publisher not found. Run ./_updatePublisher.sh first." >&2
  exit 1
fi
java -Xmx4g -jar "$publisher" publisher -ig . "$@"
