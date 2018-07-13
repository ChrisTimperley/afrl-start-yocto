FROM ubuntu:16.04
RUN apt-get update \
 && apt-get install -y \
      python \
      build-essential \
      gcc \
      git \
      wget \
      gawk \
      cpio \
      texinfo \
      chrpath \
      diffstat

COPY . /yocto
RUN useradd yocto \
 && chown -R yocto yocto
USER yocto
WORKDIR yocto

ENV TEMPLATECONF meta-start-rover/conf
# CMD . oe-init-build-env && bitbake meta-start-rover-trusted
