# Golang versioning with git-tag on Docker Cloud

> Don't want to define app version statically in your files?

I don't. I want to **use the version defined in `git tag` and include them during the automated build** on Docker Cloud.

So, this is a sample to see how to include them during the build on Docker Cloud and release it on Docker Hub.

```shellsession
$ docker run --rm keinos/git-tag-versioning
v0.0.1-20190531.1548
$
$ docker run --rm -it --entrypoint /bin/sh keinos/git-tag-versioning
/ # which get-my-version
/usr/local/bin/get-my-version
/ #
/ # get-my-version
/ # v0.0.1-20190531.1548
/ #
/ # exit
$
```
