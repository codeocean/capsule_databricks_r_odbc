# hash:sha256:b26d3b9071afda7b633ee135c72957f5a888cc799807f1f9d701b5c3d1199ce5
FROM registry.apps.codeocean.com/codeocean/r-studio:2022.07.0-548-r4.2.1-ubuntu18.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        alien=8.95 \
        libiodbc2=3.52.9-2.1 \
        libsasl2-modules-gssapi-mit=2.1.27~101-g0780600+dfsg-3ubuntu2.4 \
        unixodbc=2.3.4-1.1ubuntu3 \
        unixodbc-dev=2.3.4-1.1ubuntu3 \
        wget=1.19.4-1ubuntu2.2 \
    && rm -rf /var/lib/apt/lists/*

RUN Rscript -e 'remotes::install_version("DBI", "1.1.3")' \
    && Rscript -e 'remotes::install_version("markdown", "1.7")' \
    && Rscript -e 'remotes::install_version("odbc", "1.3.4")'

COPY postInstall /
RUN /postInstall
