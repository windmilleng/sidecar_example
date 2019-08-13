FROM python:3.6

ADD start.sh /
ADD restart.sh /

WORKDIR /app
ADD ./app .
RUN pip install -r requirements.txt

ENTRYPOINT ["/start.sh", "python", "/app/app.py"]
