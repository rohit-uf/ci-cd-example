FROM python:3.9-alpine

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

COPY . .

RUN apk update && \
    pip3 install --upgrade pip && \
    pip3 install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["sh", "entrypoint.sh"]