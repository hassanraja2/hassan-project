Started by user hassan raja
Obtained Jenkinsfile from git https://github.com/hassanraja2/hassan-project.git
Running in Durability level: MAX_SURVIVABILITY
[Pipeline] Start of Pipeline
[Pipeline] node
Running on Jenkins in /home/jenkins/.jenkins/workspace/project
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Declarative: Checkout SCM)
[Pipeline] checkout
The recommended git tool is: git
No credentials specified
Cloning the remote Git repository
Cloning repository https://github.com/hassanraja2/hassan-project.git
 > git init /home/jenkins/.jenkins/workspace/project # timeout=10
Fetching upstream changes from https://github.com/hassanraja2/hassan-project.git
 > git --version # timeout=10
 > git --version # 'git version 2.17.1'
 > git fetch --tags --progress -- https://github.com/hassanraja2/hassan-project.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git config remote.origin.url https://github.com/hassanraja2/hassan-project.git # timeout=10
 > git config --add remote.origin.fetch +refs/heads/*:refs/remotes/origin/* # timeout=10
Avoid second fetch
 > git rev-parse refs/remotes/origin/master^{commit} # timeout=10
Checking out Revision afc6dc3ae70e1f7f1d95172efec8d0d23517b942 (refs/remotes/origin/master)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f afc6dc3ae70e1f7f1d95172efec8d0d23517b942 # timeout=10
Commit message: "Update Jenkinsfile"
First time build. Skipping changelog.
[Pipeline] }
[Pipeline] // stage
[Pipeline] withEnv
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Install Docker using ansible)
[Pipeline] sh
+ ./scripts/playbook.sh

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

Reading package lists...
Building dependency tree...
Reading state information...
ansible is already the newest version (2.5.1+dfsg-1ubuntu0.1).
0 to upgrade, 0 to newly install, 0 to remove and 35 not to upgrade.
 [WARNING]: provided hosts list is empty, only localhost is available. Note
that the implicit localhost does not match 'all'

PLAY [127.0.0.1] ***************************************************************

TASK [Gathering Facts] *********************************************************
ok: [127.0.0.1]

TASK [Install depedencies] *****************************************************
ok: [127.0.0.1]

TASK [Adding Docker Apr Key] ***************************************************
ok: [127.0.0.1]

TASK [Adding Docker apt repository] ********************************************
ok: [127.0.0.1]

TASK [Install docker-ce] *******************************************************
ok: [127.0.0.1]

TASK [Start docker service] ****************************************************
ok: [127.0.0.1]

PLAY RECAP *********************************************************************
127.0.0.1                  : ok=6    changed=0    unreachable=0    failed=0   

[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Docker-compose build images)
[Pipeline] sh
+ ./scripts/docker_build.sh
Building service1
Step 1/8 : FROM python:latest
latest: Pulling from library/python
Digest: sha256:a92277812574a36601064c2863e19185989a0348fe9554a236f2b7cbe69d7fd0
Status: Downloaded newer image for python:latest
 ---> 768307cdb962
Step 2/8 : RUN apt update && apt install python3-pip -y
 ---> Running in 6c2d5c679ead
[91m
WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

[0mGet:1 http://security.debian.org/debian-security buster/updates InRelease [65.4 kB]
Get:2 http://deb.debian.org/debian buster InRelease [121 kB]
Get:3 http://deb.debian.org/debian buster-updates InRelease [51.9 kB]
Get:4 http://security.debian.org/debian-security buster/updates/main amd64 Packages [244 kB]
Get:5 http://deb.debian.org/debian buster/main amd64 Packages [7906 kB]
Get:6 http://deb.debian.org/debian buster-updates/main amd64 Packages [7856 B]
Fetched 8397 kB in 5s (1661 kB/s)
Reading package lists...
Building dependency tree...
Reading state information...
10 packages can be upgraded. Run 'apt list --upgradable' to see them.
[91m
WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

[0mReading package lists...
Building dependency tree...
Reading state information...
The following additional packages will be installed:
  build-essential dbus dh-python libapparmor1 libdbus-1-3 libpython3-dev
  libpython3.7 libpython3.7-dev python-pip-whl python3-asn1crypto
  python3-cffi-backend python3-crypto python3-cryptography python3-dbus
  python3-dev python3-entrypoints python3-gi python3-keyring
  python3-keyrings.alt python3-pkg-resources python3-secretstorage
  python3-setuptools python3-six python3-wheel python3-xdg python3.7-dev
Suggested packages:
  default-dbus-session-bus | dbus-session-bus python-crypto-doc
  python-cryptography-doc python3-cryptography-vectors python-dbus-doc
  python3-dbus-dbg gnome-keyring libkf5wallet-bin gir1.2-gnomekeyring-1.0
  python-secretstorage-doc python-setuptools-doc
The following NEW packages will be installed:
  build-essential dbus dh-python libapparmor1 libdbus-1-3 libpython3-dev
  libpython3.7 libpython3.7-dev python-pip-whl python3-asn1crypto
  python3-cffi-backend python3-crypto python3-cryptography python3-dbus
  python3-dev python3-entrypoints python3-gi python3-keyring
  python3-keyrings.alt python3-pip python3-pkg-resources python3-secretstorage
  python3-setuptools python3-six python3-wheel python3-xdg python3.7-dev
0 upgraded, 27 newly installed, 0 to remove and 10 not upgraded.
Need to get 54.4 MB of archives.
After this operation, 101 MB of additional disk space will be used.
Get:1 http://deb.debian.org/debian buster/main amd64 libapparmor1 amd64 2.13.2-10 [94.7 kB]
Get:2 http://deb.debian.org/debian buster/main amd64 libdbus-1-3 amd64 1.12.20-0+deb10u1 [215 kB]
Get:3 http://deb.debian.org/debian buster/main amd64 dbus amd64 1.12.20-0+deb10u1 [236 kB]
Get:4 http://deb.debian.org/debian buster/main amd64 build-essential amd64 12.6 [7576 B]
Get:5 http://deb.debian.org/debian buster/main amd64 dh-python all 3.20190308 [99.3 kB]
Get:6 http://deb.debian.org/debian buster/main amd64 libpython3.7 amd64 3.7.3-2+deb10u2 [1498 kB]
Get:7 http://deb.debian.org/debian buster/main amd64 libpython3.7-dev amd64 3.7.3-2+deb10u2 [48.4 MB]
Get:8 http://deb.debian.org/debian buster/main amd64 libpython3-dev amd64 3.7.3-1 [20.1 kB]
Get:9 http://deb.debian.org/debian buster/main amd64 python-pip-whl all 18.1-5 [1591 kB]
Get:10 http://deb.debian.org/debian buster/main amd64 python3-asn1crypto all 0.24.0-1 [78.2 kB]
Get:11 http://deb.debian.org/debian buster/main amd64 python3-cffi-backend amd64 1.12.2-1 [79.7 kB]
Get:12 http://deb.debian.org/debian buster/main amd64 python3-crypto amd64 2.6.1-9+b1 [263 kB]
Get:13 http://deb.debian.org/debian buster/main amd64 python3-six all 1.12.0-1 [15.7 kB]
Get:14 http://deb.debian.org/debian buster/main amd64 python3-cryptography amd64 2.6.1-3+deb10u2 [219 kB]
Get:15 http://deb.debian.org/debian buster/main amd64 python3-dbus amd64 1.2.8-3 [103 kB]
Get:16 http://deb.debian.org/debian buster/main amd64 python3.7-dev amd64 3.7.3-2+deb10u2 [510 kB]
Get:17 http://deb.debian.org/debian buster/main amd64 python3-dev amd64 3.7.3-1 [1264 B]
Get:18 http://deb.debian.org/debian buster/main amd64 python3-entrypoints all 0.3-1 [5508 B]
Get:19 http://deb.debian.org/debian buster/main amd64 python3-gi amd64 3.30.4-1 [180 kB]
Get:20 http://deb.debian.org/debian buster/main amd64 python3-secretstorage all 2.3.1-2 [14.2 kB]
Get:21 http://deb.debian.org/debian buster/main amd64 python3-keyring all 17.1.1-1 [43.1 kB]
Get:22 http://deb.debian.org/debian buster/main amd64 python3-keyrings.alt all 3.1.1-1 [18.2 kB]
Get:23 http://deb.debian.org/debian buster/main amd64 python3-pip all 18.1-5 [171 kB]
Get:24 http://deb.debian.org/debian buster/main amd64 python3-pkg-resources all 40.8.0-1 [153 kB]
Get:25 http://deb.debian.org/debian buster/main amd64 python3-setuptools all 40.8.0-1 [306 kB]
Get:26 http://deb.debian.org/debian buster/main amd64 python3-wheel all 0.32.3-2 [19.4 kB]
Get:27 http://deb.debian.org/debian buster/main amd64 python3-xdg all 0.25-5 [35.9 kB]
[91mdebconf: delaying package configuration, since apt-utils is not installed
[0mFetched 54.4 MB in 8s (6612 kB/s)
Selecting previously unselected package libapparmor1:amd64.
(Reading database ... 
(Reading database ... 5%
(Reading database ... 10%
(Reading database ... 15%
(Reading database ... 20%
(Reading database ... 25%
(Reading database ... 30%
(Reading database ... 35%
(Reading database ... 40%
(Reading database ... 45%
(Reading database ... 50%
(Reading database ... 55%
(Reading database ... 60%
(Reading database ... 65%
(Reading database ... 70%
(Reading database ... 75%
(Reading database ... 80%
(Reading database ... 85%
(Reading database ... 90%
(Reading database ... 95%
(Reading database ... 100%
(Reading database ... 24603 files and directories currently installed.)
Preparing to unpack .../00-libapparmor1_2.13.2-10_amd64.deb ...
Unpacking libapparmor1:amd64 (2.13.2-10) ...
Selecting previously unselected package libdbus-1-3:amd64.
Preparing to unpack .../01-libdbus-1-3_1.12.20-0+deb10u1_amd64.deb ...
Unpacking libdbus-1-3:amd64 (1.12.20-0+deb10u1) ...
Selecting previously unselected package dbus.
Preparing to unpack .../02-dbus_1.12.20-0+deb10u1_amd64.deb ...
Unpacking dbus (1.12.20-0+deb10u1) ...
Selecting previously unselected package build-essential.
Preparing to unpack .../03-build-essential_12.6_amd64.deb ...
Unpacking build-essential (12.6) ...
Selecting previously unselected package dh-python.
Preparing to unpack .../04-dh-python_3.20190308_all.deb ...
Unpacking dh-python (3.20190308) ...
Selecting previously unselected package libpython3.7:amd64.
Preparing to unpack .../05-libpython3.7_3.7.3-2+deb10u2_amd64.deb ...
Unpacking libpython3.7:amd64 (3.7.3-2+deb10u2) ...
Selecting previously unselected package libpython3.7-dev:amd64.
Preparing to unpack .../06-libpython3.7-dev_3.7.3-2+deb10u2_amd64.deb ...
Unpacking libpython3.7-dev:amd64 (3.7.3-2+deb10u2) ...
Selecting previously unselected package libpython3-dev:amd64.
Preparing to unpack .../07-libpython3-dev_3.7.3-1_amd64.deb ...
Unpacking libpython3-dev:amd64 (3.7.3-1) ...
Selecting previously unselected package python-pip-whl.
Preparing to unpack .../08-python-pip-whl_18.1-5_all.deb ...
Unpacking python-pip-whl (18.1-5) ...
Selecting previously unselected package python3-asn1crypto.
Preparing to unpack .../09-python3-asn1crypto_0.24.0-1_all.deb ...
Unpacking python3-asn1crypto (0.24.0-1) ...
Selecting previously unselected package python3-cffi-backend.
Preparing to unpack .../10-python3-cffi-backend_1.12.2-1_amd64.deb ...
Unpacking python3-cffi-backend (1.12.2-1) ...
Selecting previously unselected package python3-crypto.
Preparing to unpack .../11-python3-crypto_2.6.1-9+b1_amd64.deb ...
Unpacking python3-crypto (2.6.1-9+b1) ...
Selecting previously unselected package python3-six.
Preparing to unpack .../12-python3-six_1.12.0-1_all.deb ...
Unpacking python3-six (1.12.0-1) ...
Selecting previously unselected package python3-cryptography.
Preparing to unpack .../13-python3-cryptography_2.6.1-3+deb10u2_amd64.deb ...
Unpacking python3-cryptography (2.6.1-3+deb10u2) ...
Selecting previously unselected package python3-dbus.
Preparing to unpack .../14-python3-dbus_1.2.8-3_amd64.deb ...
Unpacking python3-dbus (1.2.8-3) ...
Selecting previously unselected package python3.7-dev.
Preparing to unpack .../15-python3.7-dev_3.7.3-2+deb10u2_amd64.deb ...
Unpacking python3.7-dev (3.7.3-2+deb10u2) ...
Selecting previously unselected package python3-dev.
Preparing to unpack .../16-python3-dev_3.7.3-1_amd64.deb ...
Unpacking python3-dev (3.7.3-1) ...
Selecting previously unselected package python3-entrypoints.
Preparing to unpack .../17-python3-entrypoints_0.3-1_all.deb ...
Unpacking python3-entrypoints (0.3-1) ...
Selecting previously unselected package python3-gi.
Preparing to unpack .../18-python3-gi_3.30.4-1_amd64.deb ...
Unpacking python3-gi (3.30.4-1) ...
Selecting previously unselected package python3-secretstorage.
Preparing to unpack .../19-python3-secretstorage_2.3.1-2_all.deb ...
Unpacking python3-secretstorage (2.3.1-2) ...
Selecting previously unselected package python3-keyring.
Preparing to unpack .../20-python3-keyring_17.1.1-1_all.deb ...
Unpacking python3-keyring (17.1.1-1) ...
Selecting previously unselected package python3-keyrings.alt.
Preparing to unpack .../21-python3-keyrings.alt_3.1.1-1_all.deb ...
Unpacking python3-keyrings.alt (3.1.1-1) ...
Selecting previously unselected package python3-pip.
Preparing to unpack .../22-python3-pip_18.1-5_all.deb ...
Unpacking python3-pip (18.1-5) ...
Selecting previously unselected package python3-pkg-resources.
Preparing to unpack .../23-python3-pkg-resources_40.8.0-1_all.deb ...
Unpacking python3-pkg-resources (40.8.0-1) ...
Selecting previously unselected package python3-setuptools.
Preparing to unpack .../24-python3-setuptools_40.8.0-1_all.deb ...
Unpacking python3-setuptools (40.8.0-1) ...
Selecting previously unselected package python3-wheel.
Preparing to unpack .../25-python3-wheel_0.32.3-2_all.deb ...
Unpacking python3-wheel (0.32.3-2) ...
Selecting previously unselected package python3-xdg.
Preparing to unpack .../26-python3-xdg_0.25-5_all.deb ...
Unpacking python3-xdg (0.25-5) ...
Setting up python3-pkg-resources (40.8.0-1) ...
Setting up python3-entrypoints (0.3-1) ...
Setting up dh-python (3.20190308) ...
Setting up libapparmor1:amd64 (2.13.2-10) ...
Setting up python3-setuptools (40.8.0-1) ...
Setting up libpython3.7:amd64 (3.7.3-2+deb10u2) ...
Setting up libpython3.7-dev:amd64 (3.7.3-2+deb10u2) ...
Setting up python3-xdg (0.25-5) ...
Setting up python3-wheel (0.32.3-2) ...
Setting up python3.7-dev (3.7.3-2+deb10u2) ...
Setting up python3-six (1.12.0-1) ...
Setting up libdbus-1-3:amd64 (1.12.20-0+deb10u1) ...
Setting up dbus (1.12.20-0+deb10u1) ...
invoke-rc.d: could not determine current runlevel
invoke-rc.d: policy-rc.d denied execution of start.
Setting up python3-gi (3.30.4-1) ...
Setting up build-essential (12.6) ...
Setting up python3-crypto (2.6.1-9+b1) ...
Setting up python-pip-whl (18.1-5) ...
Setting up python3-asn1crypto (0.24.0-1) ...
Setting up python3-cffi-backend (1.12.2-1) ...
Setting up python3-dbus (1.2.8-3) ...
Setting up libpython3-dev:amd64 (3.7.3-1) ...
Setting up python3-cryptography (2.6.1-3+deb10u2) ...
Setting up python3-dev (3.7.3-1) ...
Setting up python3-pip (18.1-5) ...
Setting up python3-keyrings.alt (3.1.1-1) ...
Setting up python3-secretstorage (2.3.1-2) ...
Setting up python3-keyring (17.1.1-1) ...
Processing triggers for libc-bin (2.28-10) ...
Removing intermediate container 6c2d5c679ead
 ---> e28dc6b264aa
Step 3/8 : WORKDIR /home/app
 ---> Running in 23d9947cce52
Removing intermediate container 23d9947cce52
 ---> 1702029dad69
Step 4/8 : COPY requirements.txt /home/app
 ---> ef04b1469a6c
Step 5/8 : RUN pip3 install -r requirements.txt
 ---> Running in b4ede2aee902
Collecting Flask==1.1.2
  Downloading Flask-1.1.2-py2.py3-none-any.whl (94 kB)
Collecting Flask-Testing==0.8.0
  Downloading Flask-Testing-0.8.0.tar.gz (45 kB)
Collecting Werkzeug==1.0.1
  Downloading Werkzeug-1.0.1-py2.py3-none-any.whl (298 kB)
Collecting pytest==5.4.3
  Downloading pytest-5.4.3-py3-none-any.whl (248 kB)
Collecting pytest-cov==2.10.0
  Downloading pytest_cov-2.10.0-py2.py3-none-any.whl (19 kB)
Collecting requests==2.22.0
  Downloading requests-2.22.0-py2.py3-none-any.whl (57 kB)
Collecting requests-mock==1.8.0
  Downloading requests_mock-1.8.0-py2.py3-none-any.whl (23 kB)
Collecting Jinja2>=2.10.1
  Downloading Jinja2-2.11.2-py2.py3-none-any.whl (125 kB)
Collecting itsdangerous>=0.24
  Downloading itsdangerous-1.1.0-py2.py3-none-any.whl (16 kB)
Collecting click>=5.1
  Downloading click-7.1.2-py2.py3-none-any.whl (82 kB)
Collecting attrs>=17.4.0
  Downloading attrs-20.3.0-py2.py3-none-any.whl (49 kB)
Collecting wcwidth
  Downloading wcwidth-0.2.5-py2.py3-none-any.whl (30 kB)
Collecting packaging
  Downloading packaging-20.4-py2.py3-none-any.whl (37 kB)
Collecting more-itertools>=4.0.0
  Downloading more_itertools-8.6.0-py3-none-any.whl (45 kB)
Collecting py>=1.5.0
  Downloading py-1.9.0-py2.py3-none-any.whl (99 kB)
Collecting pluggy<1.0,>=0.12
  Downloading pluggy-0.13.1-py2.py3-none-any.whl (18 kB)
Collecting coverage>=4.4
  Downloading coverage-5.3-cp39-cp39-manylinux1_x86_64.whl (228 kB)
Collecting chardet<3.1.0,>=3.0.2
  Downloading chardet-3.0.4-py2.py3-none-any.whl (133 kB)
Collecting certifi>=2017.4.17
  Downloading certifi-2020.6.20-py2.py3-none-any.whl (156 kB)
Collecting urllib3!=1.25.0,!=1.25.1,<1.26,>=1.21.1
  Downloading urllib3-1.25.11-py2.py3-none-any.whl (127 kB)
Collecting idna<2.9,>=2.5
  Downloading idna-2.8-py2.py3-none-any.whl (58 kB)
Collecting six
  Downloading six-1.15.0-py2.py3-none-any.whl (10 kB)
Collecting MarkupSafe>=0.23
  Downloading MarkupSafe-1.1.1.tar.gz (19 kB)
Collecting pyparsing>=2.0.2
  Downloading pyparsing-2.4.7-py2.py3-none-any.whl (67 kB)
Building wheels for collected packages: Flask-Testing, MarkupSafe
  Building wheel for Flask-Testing (setup.py): started
  Building wheel for Flask-Testing (setup.py): finished with status 'done'
  Created wheel for Flask-Testing: filename=Flask_Testing-0.8.0-py3-none-any.whl size=8169 sha256=7dac81efff44981ee79eac343c11fc67797e5badddec7705f2f6ef2124a1d30f
  Stored in directory: /root/.cache/pip/wheels/4c/df/40/8968e7cb63a6d246f1a97c59bd210e8313764a4a58ccad6f15
  Building wheel for MarkupSafe (setup.py): started
  Building wheel for MarkupSafe (setup.py): finished with status 'done'
  Created wheel for MarkupSafe: filename=MarkupSafe-1.1.1-cp39-cp39-linux_x86_64.whl size=32204 sha256=710be2529e68ce17fb84e0e5add488fb7eedfac7da8b11783637947f7a146420
  Stored in directory: /root/.cache/pip/wheels/e0/19/6f/6ba857621f50dc08e084312746ed3ebc14211ba30037d5e44e
Successfully built Flask-Testing MarkupSafe
Installing collected packages: MarkupSafe, Jinja2, Werkzeug, itsdangerous, click, Flask, Flask-Testing, attrs, wcwidth, six, pyparsing, packaging, more-itertools, py, pluggy, pytest, coverage, pytest-cov, chardet, certifi, urllib3, idna, requests, requests-mock
Successfully installed Flask-1.1.2 Flask-Testing-0.8.0 Jinja2-2.11.2 MarkupSafe-1.1.1 Werkzeug-1.0.1 attrs-20.3.0 certifi-2020.6.20 chardet-3.0.4 click-7.1.2 coverage-5.3 idna-2.8 itsdangerous-1.1.0 more-itertools-8.6.0 packaging-20.4 pluggy-0.13.1 py-1.9.0 pyparsing-2.4.7 pytest-5.4.3 pytest-cov-2.10.0 requests-2.22.0 requests-mock-1.8.0 six-1.15.0 urllib3-1.25.11 wcwidth-0.2.5
Removing intermediate container b4ede2aee902
 ---> 616225045a47
Step 6/8 : COPY . /home/app/
 ---> 30211b13fb8e
Step 7/8 : EXPOSE 5000
 ---> Running in 283ef2c29a2f
Removing intermediate container 283ef2c29a2f
 ---> ef1a48400996
Step 8/8 : ENTRYPOINT ["python3", "app.py"]
 ---> Running in ba18a2dc1254
Removing intermediate container ba18a2dc1254
 ---> afcf23c8a135

Successfully built afcf23c8a135
Successfully tagged localhost:8082/service1:latest
Building service2
Step 1/8 : FROM python:latest
 ---> 768307cdb962
Step 2/8 : RUN apt update && apt install python3-pip -y
 ---> Using cache
 ---> e28dc6b264aa
Step 3/8 : WORKDIR /home/app
 ---> Using cache
 ---> 1702029dad69
Step 4/8 : COPY requirements.txt /home/app
 ---> Using cache
 ---> ef04b1469a6c
Step 5/8 : RUN pip3 install -r requirements.txt
 ---> Using cache
 ---> 616225045a47
Step 6/8 : COPY . /home/app/
 ---> 394e9b1d397c
Step 7/8 : EXPOSE 5001
 ---> Running in 01ee88e14692
Removing intermediate container 01ee88e14692
 ---> e6a806aa2a7f
Step 8/8 : ENTRYPOINT ["python3", "app.py"]
 ---> Running in 26c34b392835
Removing intermediate container 26c34b392835
 ---> e54158c94c5d

Successfully built e54158c94c5d
Successfully tagged localhost:8082/service2:latest
Building service3
Step 1/8 : FROM python:latest
 ---> 768307cdb962
Step 2/8 : RUN apt update && apt install python3-pip -y
 ---> Using cache
 ---> e28dc6b264aa
Step 3/8 : WORKDIR /home/app
 ---> Using cache
 ---> 1702029dad69
Step 4/8 : COPY requirements.txt /home/app
 ---> Using cache
 ---> ef04b1469a6c
Step 5/8 : RUN pip3 install -r requirements.txt
 ---> Using cache
 ---> 616225045a47
Step 6/8 : COPY . /home/app/
 ---> 13e08f65c086
Step 7/8 : EXPOSE 5002
 ---> Running in 311e7d0b3f03
Removing intermediate container 311e7d0b3f03
 ---> 28735f5bc8df
Step 8/8 : ENTRYPOINT ["python3", "app.py"]
 ---> Running in e019c5fa5dc3
Removing intermediate container e019c5fa5dc3
 ---> 515a77f8cb73

Successfully built 515a77f8cb73
Successfully tagged localhost:8082/service3:latest
Building service4
Step 1/8 : FROM python:latest
 ---> 768307cdb962
Step 2/8 : RUN apt update && apt install python3-pip -y
 ---> Using cache
 ---> e28dc6b264aa
Step 3/8 : WORKDIR /home/app
 ---> Using cache
 ---> 1702029dad69
Step 4/8 : COPY requirements.txt /home/app
 ---> Using cache
 ---> ef04b1469a6c
Step 5/8 : RUN pip3 install -r requirements.txt
 ---> Using cache
 ---> 616225045a47
Step 6/8 : COPY . /home/app/
 ---> e1f12d1a264f
Step 7/8 : EXPOSE 5003
 ---> Running in 0006fa403aca
Removing intermediate container 0006fa403aca
 ---> b2987cba2967
Step 8/8 : ENTRYPOINT ["python3", "app.py"]
 ---> Running in 4f62a3b9adb8
Removing intermediate container 4f62a3b9adb8
 ---> 4a78fb1ab695

Successfully built 4a78fb1ab695
Successfully tagged localhost:8082/service4:latest
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Running docker-compose)
[Pipeline] sh
+ ./scripts/docker_run.sh
Creating network "project_default" with the default driver
Creating service1 ... 
Creating service2 ... 
Creating service3 ... 
Creating service4 ... 
[2A[2K
Creating service3 ... [32mdone[0m
[2B[1A[2K
Creating service4 ... [32mdone[0m
[1B[3A[2K
Creating service2 ... [32mdone[0m
[3B[4A[2K
Creating service1 ... [32mdone[0m
[4B
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Push images to Nexus)
[Pipeline] sh
+ ./scripts/docker_push.sh
Pushing service1 (localhost:8082/service1:latest)...
The push refers to repository [localhost:8082/service1]
latest: digest: sha256:02efd730c6f9f65635dd2afa2d117646278748c6fe747d4748b381368ae2b1ac size: 3262
Pushing service2 (localhost:8082/service2:latest)...
The push refers to repository [localhost:8082/service2]
latest: digest: sha256:a57e07e065b777098330046827aa45d45d0b73d82cbb7e6dc6e58c237eb2b9eb size: 3262
Pushing service3 (localhost:8082/service3:latest)...
The push refers to repository [localhost:8082/service3]
latest: digest: sha256:bf8345c02a2d0e5e96005d6ccec8818565239044629fef00ca41c1a2b95fee94 size: 3262
Pushing service4 (localhost:8082/service4:latest)...
The push refers to repository [localhost:8082/service4]
latest: digest: sha256:95f115457cd9b27a3b269e8cbddcdbd3e7343d545cb86b70467d0c1766d7ed69 size: 3262
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline
Finished: SUCCESS
