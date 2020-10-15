FROM python:3.6
<<<<<<< HEAD
RUN pip install Flask
COPY . .
=======
WORKDIR /usr/src/app
COPY requirements.txt /usr/src/app/
RUN pip install Flask -r requirements.txt
COPY . /usr/src/app
>>>>>>> d573d2078137f9cce8e5ff8e2a1d764fd9620785
EXPOSE 5000
ENTRYPOINT ["python3", "app.py"]
