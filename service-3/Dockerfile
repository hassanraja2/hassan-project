FROM python:latest
RUN apt update && apt install python3-pip -y
WORKDIR /home/app
COPY requirements.txt /home/app
RUN pip3 install -r requirements.txt
COPY . /home/app/
EXPOSE 5002
ENTRYPOINT ["python3", "app.py"]
