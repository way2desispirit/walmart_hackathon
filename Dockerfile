FROM python:3.6.1-alpine
LABEL maintainer="piyush.raj@outlook.in"
WORKDIR /project
ADD . /project
RUN apk add --no-cache --virtual .build-deps gcc musl-dev libffi-dev \
    && pip install --upgrade pip \
    && pip install -r requirements.txt
EXPOSE 5000/tcp
CMD ["python","app.py"]