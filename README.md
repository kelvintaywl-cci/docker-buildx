# docker-buildx
I can docker buildx on CircleCI

This explores how we can use `docker buildx` commands.
In particular, I would like to showcase how to build images with Docker buildx on CircleCI.

In addition, this project shows how we can take advantage of cache options with [the `docker buildx build` command](https://docs.docker.com/engine/reference/commandline/buildx_build/).

> By leveraging the cache options, [CircleCI's Docker Layer Caching (DLC) feature](https://circleci.com/docs/docker-layer-caching) is no longer necessary.

## Helpful References

- https://docs.docker.com/engine/reference/commandline/buildx_build/
- https://docs.google.com/presentation/d/1UpRyHsdx4bpBWE9P0VWznVCcupmjVWfmEXRoMbcAeIQ/edit
- https://github.com/docker/buildx/issues/166#issuecomment-592811561
