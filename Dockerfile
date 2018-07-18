FROM python:3.6-stretch

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get update && apt-get install -y nodejs makepp python3-virtualenv curl exiv2 graphviz && \
    npm i -D purify-css && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install feedparser staticjinja pelican pelican_alias markdown pygal pillow beautifulsoup4 bs4 pysvg-py3 cssutils
