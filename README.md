# aws-ecs-docker-sock

Nullstone capability to bind the docker socket from the host ECS into the ECS service.

## Purpose

If you want to build docker images from within a docker container, there are 2 ways to achieve:
1. Connect with the host docker daemon by mounting a volume `-v /var/run/docker.sock:/var/run/docker.sock`.
2. Run the container as `--privileged` and run another instance of docker.

This capability module provides a prebuilt Terraform module to implement #1 using AWS ECS.
The module automatically configures a Nullstone ECS app with access to the docker daemon.

## Local

To simulate the same effect of this capability on your local machine, configure a `docker-compose.yml`.

```yaml
# other configuration
  api:
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
    # other configuration
```
