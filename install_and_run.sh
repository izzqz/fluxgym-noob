#!/bin/bash

set -xeuo pipefail

git clone https://github.com/izzqz/fluxgym-noob.git
cd fluxgym
git clone -b sd3 https://github.com/kohya-ss/sd-scripts

python -m venv env
./env/bin/activate

cd sd-scripts
pip install -r requirements.txt

cd ..
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
pip install -r requirements.txt

python app.py

