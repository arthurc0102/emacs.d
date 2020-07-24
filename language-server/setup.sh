set -e

WORKING_DIR=$(dirname "$0")
echo "Moving to $WORKING_DIR."
cd $WORKING_DIR

# Python
echo "Setting up Python."
mkdir -p python
cd python
python -m venv env
source ./env/bin/activate
pip install python-language-server[yapf]
cd ..
echo "Done.\n"

echo "Move back."
cd -
