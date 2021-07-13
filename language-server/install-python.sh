set -e

VENV_PATH="$HOME/.emacs.d/language-server/pyls-venv"
INSTALL_CMD="pip install -U"

# Setup
python -m venv $VENV_PATH
source $VENV_PATH/bin/activate
$INSTALL_CMD pip setuptools

# Pyls
$INSTALL_CMD 'python-lsp-server[all]'

# pyls-mypy
$INSTALL_CMD pylsp-mypy
