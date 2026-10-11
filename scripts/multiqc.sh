#!/bin/bash
set -euo pipefail

CONTAINER="oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20"

input_dir="$1"
output_dir="$2"

echo "Starting script multiqc.sh"
date
echo "Input directory: $input_dir"
echo "Output directory: $output_dir"

mkdir -p "$output_dir"

apptainer exec "$CONTAINER" multiqc \
    --outdir "$output_dir" \
    "$input_dir"

echo "Successfully finished script multiqc.sh"
date