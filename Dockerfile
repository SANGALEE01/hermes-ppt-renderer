# Custom Hermes image: PPTX visual-rendering dependencies
FROM ghcr.io/hostinger/hvps-hermes-agent:latest

# The base image's init flow starts as root and drops services to hermes.
USER root

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    libreoffice-impress \
    poppler-utils \
    fonts-noto-cjk \
 && rm -rf /var/lib/apt/lists/*
