FROM debian:slim-latest

RUN apt-get update && apt-get install -y && \
    makepp && \
    python-virtualenv && \
    curl && \
    rm -rf /var/lib/apt/lists/*

RUN pip install feedparser staticjinja pelican pelican_alias markdown pygal pillow beautifulsoup4 bs4 pysvg-py3 cssutils
