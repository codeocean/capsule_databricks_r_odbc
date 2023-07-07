# hash:sha256:89faa2995169eafa8c82f4ed1ba3ad3ed2f57d7366047acf2c7bb7f34b88c94c
FROM registry.apps.codeocean.com/codeocean/py-r:python3.10-R4.2.2-IRkernel-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        alien=8.95.5 \
        libiodbc2=3.52.9-2.1 \
        libsasl2-modules-gssapi-mit=2.1.27+dfsg2-3ubuntu1.2 \
        unixodbc=2.3.9-5 \
        unixodbc-dev=2.3.9-5 \
        wget=1.21.2-2ubuntu1 \
    && rm -rf /var/lib/apt/lists/*

RUN mamba install -y \
        r-dbi==1.1.3 \
        r-markdown==1.7 \
        r-odbc==1.3.5 \
    && mamba clean -ya

RUN echo 'options(repos = c(CRAN = "http://cran.us.r-project.org"), download.file.method = "libcurl")' >> $(Rscript -e 'cat(R.home())')/etc/Rprofile.site

COPY postInstall /
RUN /postInstall
