#!/bin/bash

set -xeuo pipefail

git clone https://github.com/cocktailpeanut/fluxgym
cd fluxgym
git clone -b sd3 https://github.com/kohya-ss/sd-scripts

python -m venv env
source env/bin/activate

cd sd-scripts
pip install -r requirements.txt

cd ..
pip install -r requirements.txt
python -m venv env
source env/bin/activate

pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

python app.py

