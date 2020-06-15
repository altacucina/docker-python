FROM python:3.8-slim-buster

RUN apt-get update \
  # dependencies for building Python packages
  && apt-get install -y build-essential  \
  # psycopg2 dependencies
  && apt-get install -y libpq-dev \
  # pillow dependencies
  && apt-get install -y libjpeg-dev zlib1g-dev \
  # translations dependencies
  && apt-get install -y gettext \
  # other dependencies
  && apt-get install -y ffmpeg optipng pngcrush pngquant jpegoptim gifsicle \
  # cleaning up unused files
  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
  && rm -rf /var/lib/apt/lists/*
