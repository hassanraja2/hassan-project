#! /bin/bash

python3 -m venv python-testing-venv
. ./python-testing-venv/bin/activate

pytest ./service-1 --cov ./service-1/application/



