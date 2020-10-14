FROM python:3.6
WORKDIR /app
RUN pip install Flask requirements.txt
COPY . .
EXPOSE 5000
ENTRYPOINT ["python3", "app.py"]
