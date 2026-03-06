#!/bin/sh
set -eu

ROOT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
cd "$ROOT_DIR"

rm -f \
  main.aux \
  main.bbl \
  main.bcf \
  main.blg \
  main.lof \
  main.log \
  main.lot \
  main.out \
  main.pdf \
  main.run.xml \
  main.toc \
  missfont.log
