FROM python:3.6.8-alpine

RUN apk update \
  && apk add --virtual build-deps make gcc python3-dev musl-dev \
  && apk add postgresql-dev \
  && apk add jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev \
  && apk add libffi-dev py-cffi \
  && apk add gettext \
  && apk add ffmpeg \
  && apk add optipng pngcrush pngquant jpegoptim gifsicle \
  && rm /var/cache/apk/*
