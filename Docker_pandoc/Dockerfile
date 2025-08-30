# File: Dockerfile
FROM ubuntu:22.04

# noninteractive installs
ENV DEBIAN_FRONTEND=noninteractive

# Install Pandoc, XeLaTeX engine and core TeX Live collections
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    pandoc \
    texlive-full \
    # texlive-xetex \
    # texlive-latex-recommended \
    # texlive-latex-extra \
    # texlive-fonts-recommended \
    # fonts-dejavu-core \
    && rm -rf /var/lib/apt/lists/*

# Workdir where your repo will be mounted
WORKDIR /data

# Default entrypoint is pandoc; you still pass arguments on `docker run`
ENTRYPOINT ["pandoc"]
