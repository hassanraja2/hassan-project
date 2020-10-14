FROM python:3.6
WORKDIR /home/student/hassan-project/service-1/
RUN pip install Flask
COPY . .
EXPOSE 5000
ENTRYPOINT ["python3", "app.py"]
