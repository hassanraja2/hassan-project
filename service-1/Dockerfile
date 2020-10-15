FROM python:latest
RUN apt update && apt install python3-pip -y
WORKDIR /home/jenkins/.jenkins/workspace/project/service-1/
COPY requirements.txt /home/jenkins/.jenkins/workspace/project/service-1/
RUN pip3 install -r requirements.txt
COPY . /home/jenkins/.jenkins/workspace/project/service-1/
EXPOSE 5000
ENTRYPOINT ["python3", "app.py"]
