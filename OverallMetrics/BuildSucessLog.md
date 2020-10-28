SuccessConsole Output

Started by user hassan.raja2@nationwide.co.uk
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
 > git rev-parse --is-inside-work-tree # timeout=10
Fetching changes from the remote Git repository
 > git config remote.origin.url https://github.com/hassanraja2/hassan-project.git # timeout=10
Fetching upstream changes from https://github.com/hassanraja2/hassan-project.git
 > git --version # timeout=10
 > git --version # 'git version 2.17.1'
 > git fetch --tags --progress -- https://github.com/hassanraja2/hassan-project.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/master^{commit} # timeout=10
Checking out Revision fdf9fd5a03f74e87f2b439e3c52c69d942dbec64 (refs/remotes/origin/master)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f fdf9fd5a03f74e87f2b439e3c52c69d942dbec64 # timeout=10
Commit message: "Update test_coverage.sh"
 > git rev-list --no-walk fdf9fd5a03f74e87f2b439e3c52c69d942dbec64 # timeout=10
[Checks API] No suitable checks publisher found.
[Pipeline] }
[Pipeline] // stage
[Pipeline] withEnv
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Docker-compose build images)
[Pipeline] sh
+ ./docker_build.sh
Building service1
Step 1/8 : FROM python:latest
 ---> 5336a27a9b1f
Step 2/8 : RUN apt update && apt install python3-pip -y
 ---> Using cache
 ---> 546ae3253b32
Step 3/8 : WORKDIR /home/app
 ---> Using cache
 ---> 8f7b738588db
Step 4/8 : COPY requirements.txt /home/app
 ---> Using cache
 ---> 868a6a2d2504
Step 5/8 : RUN pip3 install -r requirements.txt
 ---> Using cache
 ---> 9a21f11bc71f
Step 6/8 : COPY . /home/app/
 ---> Using cache
 ---> 04f50c474adc
Step 7/8 : EXPOSE 5000
 ---> Using cache
 ---> f4cb4ad1c76d
Step 8/8 : ENTRYPOINT ["python3", "app.py"]
 ---> Using cache
 ---> 4b8f67946f28

Successfully built 4b8f67946f28
Successfully tagged localhost:8082/service1:latest
Building service2
Step 1/8 : FROM python:latest
 ---> 5336a27a9b1f
Step 2/8 : RUN apt update && apt install python3-pip -y
 ---> Using cache
 ---> 546ae3253b32
Step 3/8 : WORKDIR /home/app
 ---> Using cache
 ---> 8f7b738588db
Step 4/8 : COPY requirements.txt /home/app
 ---> Using cache
 ---> 868a6a2d2504
Step 5/8 : RUN pip3 install -r requirements.txt
 ---> Using cache
 ---> 9a21f11bc71f
Step 6/8 : COPY . /home/app/
 ---> Using cache
 ---> b96caeadf719
Step 7/8 : EXPOSE 5001
 ---> Using cache
 ---> 4259e1c80303
Step 8/8 : ENTRYPOINT ["python3", "app.py"]
 ---> Using cache
 ---> d3a14f944f9c

Successfully built d3a14f944f9c
Successfully tagged localhost:8082/service2:latest
Building service3
Step 1/8 : FROM python:latest
 ---> 5336a27a9b1f
Step 2/8 : RUN apt update && apt install python3-pip -y
 ---> Using cache
 ---> 546ae3253b32
Step 3/8 : WORKDIR /home/app
 ---> Using cache
 ---> 8f7b738588db
Step 4/8 : COPY requirements.txt /home/app
 ---> Using cache
 ---> 868a6a2d2504
Step 5/8 : RUN pip3 install -r requirements.txt
 ---> Using cache
 ---> 9a21f11bc71f
Step 6/8 : COPY . /home/app/
 ---> Using cache
 ---> 30fcd0dcfbc5
Step 7/8 : EXPOSE 5002
 ---> Using cache
 ---> 478b7b0d6c68
Step 8/8 : ENTRYPOINT ["python3", "app.py"]
 ---> Using cache
 ---> 4e57a493c114

Successfully built 4e57a493c114
Successfully tagged localhost:8082/service3:latest
Building service4
Step 1/8 : FROM python:latest
 ---> 5336a27a9b1f
Step 2/8 : RUN apt update && apt install python3-pip -y
 ---> Using cache
 ---> 546ae3253b32
Step 3/8 : WORKDIR /home/app
 ---> Using cache
 ---> 8f7b738588db
Step 4/8 : COPY requirements.txt /home/app
 ---> Using cache
 ---> 868a6a2d2504
Step 5/8 : RUN pip3 install -r requirements.txt
 ---> Using cache
 ---> 9a21f11bc71f
Step 6/8 : COPY . /home/app/
 ---> Using cache
 ---> a80d596d192a
Step 7/8 : EXPOSE 5003
 ---> Using cache
 ---> 2251b2e23788
Step 8/8 : ENTRYPOINT ["python3", "app.py"]
 ---> Using cache
 ---> 1349462a1e86

Successfully built 1349462a1e86
Successfully tagged localhost:8082/service4:latest
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Running docker-compose)
[Pipeline] sh
+ ./docker_run.sh
service1 is up-to-date
service4 is up-to-date
service3 is up-to-date
service2 is up-to-date
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Push images to Nexus)
[Pipeline] sh
+ ./docker_push.sh
Pushing service1 (localhost:8082/service1:latest)...
The push refers to repository [localhost:8082/service1]
latest: digest: sha256:c9ffe77afaae7e0d34634dd64ac7f7746ee61f676f3a6ba2be145e33fae47b49 size: 3262
Pushing service2 (localhost:8082/service2:latest)...
The push refers to repository [localhost:8082/service2]
latest: digest: sha256:5f1f9c9fe2cd9bbdff521e7cc893a1d8d6c594f013b9e0dc1a6cd6c87a8e47b4 size: 3262
Pushing service3 (localhost:8082/service3:latest)...
The push refers to repository [localhost:8082/service3]
latest: digest: sha256:74f0d7efede87dd1f517297ddff3b6e6af37f74dd9d18564d3add80f7bdeb32c size: 3262
Pushing service4 (localhost:8082/service4:latest)...
The push refers to repository [localhost:8082/service4]
latest: digest: sha256:573616413d88717b6aa4c185f986d336a5a3f0f813c2e45aa4535ece5cb884ec size: 3262
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline
[Checks API] No suitable checks publisher found.
Triggering a new build of Test #4
Finished: SUCCESS
