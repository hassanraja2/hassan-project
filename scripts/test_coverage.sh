#! /bin/bash
sudo apt install python3-pip python3-venv -y
pip3 install pytest
pip3 install pytest-cov

python3 -m venv python-testing-venv
. ./python-testing-venv/bin/activate

pytest /home/student/hassan-project/service-1 --cov /home/student/hassan-project/service-1/application

pytest /home/student/hassan-project/service-2 --cov /home/student/hassan-project/service-2/application

pytest /home/student/hassan-project/service-3 --cov /home/student/hassan-project/service-3/application

pytest /home/student/hassan-project/service-4 --cov /home/student/hassan-project/service-4/application

rm -rf python-testing-venv
