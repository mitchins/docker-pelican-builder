FROM python:3.6-stretch

RUN apt-get update && apt-get install -y makepp python3-virtualenv curl && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install feedparser staticjinja pelican pelican_alias markdown pygal pillow beautifulsoup4 bs4 pysvg-py3 cssutils
