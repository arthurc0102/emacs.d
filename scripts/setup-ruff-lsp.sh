#!/bin/bash

set -e

RUFF_ENV="${HOME}/.emacs.d/.venvs/ruff-lsp"

mkdir -pv "${RUFF_ENV}"
python3 -m venv "${RUFF_ENV}"
"${RUFF_ENV}/bin/pip" install -U pip setuptools ruff-lsp
