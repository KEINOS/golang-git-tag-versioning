[![](https://images.microbadger.com/badges/image/keinos/alpine.svg)](https://microbadger.com/images/keinos/alpine "View image info on microbadger.com")
[![](https://img.shields.io/docker/cloud/automated/keinos/get-my-version.svg)](https://hub.docker.com/r/keinos/get-my-version "View on Docker Hub")
[![](https://img.shields.io/docker/cloud/build/keinos/get-my-version.svg)](https://hub.docker.com/r/keinos/get-my-version/builds "View tags on Docker Hub")

# Golang versioning with git-tag on Docker Cloud

> Don't want to define app version statically in your files?

I don't. I want to **use the version defined in `git tag` and include them during the automated build** on Docker Cloud.

So, this is a sample to see how to include them during the build on Docker Cloud and release it on Docker Hub.

```bash
docker pull keinos/get-my-version
```

```shellsession
$ docker pull keinos/get-my-version
...
$ docker run --rm keinos/get-my-version
v0.0.1-20190531.1548
$
$ docker run --rm -it --entrypoint /bin/sh keinos/get-my-version
/ # which get-my-version
/usr/local/bin/get-my-version
/ #
/ # get-my-version
/ # v0.0.1-20190531.1548
/ #
/ # exit
$
```
