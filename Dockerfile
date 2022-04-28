FROM python:3.8-slim-buster
WORKDIR /app
RUN apt-get update -y && apt install handbrake-cli -y
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
ENTRYPOINT [ "python3", "main.py"]