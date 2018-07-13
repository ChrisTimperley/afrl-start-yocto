A Yocto Build Configuration for START
=====================================

```
$ git submodule init
$ git submodule update
$ TEMPLATECONF=meta-start-rover/conf source oe-init-build-env
$ docker build -t start/yocto-builder .
$ docker run -v images/:/images --rm -it start/yocto-builder
> . oe-init-build-env
> bitbake meta-start-rover-trusted
> bitbake meta-start-rover-locomotion
> mv tmp/deploy/images/up-board/meta-start-rover*.iso /images
```
