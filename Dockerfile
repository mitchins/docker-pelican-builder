FROM python:3.6-stretch

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get update && apt-get install -y nodejs makepp python3-virtualenv curl exiv2 graphviz && \
    npm install -g purify-css && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install feedparser staticjinja pelican pelican_alias markdown pygal pillow beautifulsoup4 bs4 pysvg-py3 cssutils

RUN mkdir -p /opt/pelican-lib && \
cd /opt/pelican-lib && \
sh -c "curl  -L https://github.com/getpelican/pelican-plugins/archive/master.tar.gz | tar xz" && \
sh -c "curl  -L https://github.com/pR0Ps/pelican-yaml-metadata/archive/master.tar.gz | tar xz"
