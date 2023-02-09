# docker-buildx

I can docker buildx on CircleCI

This explores how we can use `docker buildx` commands.
In particular, I would like to showcase how to build images with Docker buildx on CircleCI.

⚠️ TODO: showcase how to build cross-platform images

In addition, this project shows how we can take advantage of **cache options** with [the `docker buildx build` command](https://docs.docker.com/engine/reference/commandline/buildx_build/).

> By leveraging the cache options, [CircleCI's Docker Layer Caching (DLC) feature](https://circleci.com/docs/docker-layer-caching) is no longer necessary.

In our `i-can-buildx` workflow, we have the following distinct jobs, where:

| job name | executor | buildx cache type | pushed image |
| --- | --- | --- | --- |
| build-push-registry-machine | Machine | [Registry on Docker Hub](https://hub.docker.com/r/kelvintaywlcircleci/hello-buildx-registry-cache) | `docker.io/kelvintaywlcircleci/hello-buildx:registry-machine` |
| build-push-registry-docker | Docker + Remote Docker | [Registry on Docker Hub](https://hub.docker.com/r/kelvintaywlcircleci/hello-buildx-registry-cache) | `docker.io/kelvintaywlcircleci/hello-buildx:local-machine` |
| build-push-local-machine | Machine | local (CircleCI cache) | `docker.io/kelvintaywlcircleci/hello-buildx:registry-docker` |
| build-push-local-docker | Docker + Remote Docker | local (CircleCI cache) | `docker.io/kelvintaywlcircleci/hello-buildx:local-docker` |
| build-push-inline-machine | Machine | inline | `docker.io/kelvintaywlcircleci/hello-buildx:inline-machine` |

## Helpful References

- https://docs.docker.com/engine/reference/commandline/buildx_build/
- https://docs.google.com/presentation/d/1UpRyHsdx4bpBWE9P0VWznVCcupmjVWfmEXRoMbcAeIQ/edit
- https://github.com/docker/buildx/issues/166#issuecomment-592811561
