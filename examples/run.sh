#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_chart_html info
PYTHONPATH=src python -m gbt_chart_html check --payload '{}'
PYTHONPATH=src python -m gbt_chart_html run   --payload '{}'
