FROM python:3.6
WORKDIR /usr/src/app
COPY requirements.txt /usr/src/app/
RUN pip install Flask -r requirements.txt
COPY . /usr/src/app
EXPOSE 5000
ENTRYPOINT ["python3", "app.py"]
