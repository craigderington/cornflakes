FROM python:3.6-alpine
MAINTAINER Craig Derington
RUN echo "Building Docker Flask App Image"
RUN apk update && apk upgrade
RUN apk add redis
WORKDIR /home/flaskapp
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . /home/flaskapp
EXPOSE 5580
CMD ["gunicorn", "-w=4", "-b 0.0.0.0:5580","wsgi:app"]



