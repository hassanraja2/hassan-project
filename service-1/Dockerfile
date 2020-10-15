FROM python:latest
WORKDIR /home/jenkins/.jenkins/workpace/project/service-1/Dockerfile
RUN apt update && apt install python3-pip -y
COPY . .
RUN pip3 install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3", "app.py"]
