FROM debian:9-slim

RUN apt-get update && apt-get install -y makepp python-virtualenv python-pip curl && \
    rm -rf /var/lib/apt/lists/*

RUN pip install feedparser staticjinja pelican pelican_alias markdown pygal pillow beautifulsoup4 bs4 pysvg-py3 cssutils

push_to_registry:
    title: Pushing to Docker Registry (with credentials)
    type: push

    #A candidate is the image that we want to push to registry
    candidate: '${{build_image}}'

    # You can push the image with whatever tag you want. In our example we use CF_BRANCH, which is a variable in
    # the build process, accessible throughout the entire flow.
    tag: '${{CF_BRANCH}}'

    credentials:
      #make sure that you have a dockerUsername and dockerPassword define on the pipeline.
      username: '${{dockerUsername}}'
      password: '${{dockerPassword}}'
