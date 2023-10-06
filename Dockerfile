FROM python:3.9-alpine

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

COPY . .

RUN apk update && pip3 install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD ["gunicorn", "--bind", "localhost:80", "--workers", "3", "--reload", "ci_cd_example.wsgi"]