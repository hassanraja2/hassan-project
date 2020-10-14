FROM python:3.6
WORKDIR /home/student/hassan-project/service-1
RUN pip install Flask requirements.txt
COPY . .
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]
