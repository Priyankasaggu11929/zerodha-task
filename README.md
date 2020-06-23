# Zerodha Ops Task

## Description

This is a sample `Go` application which connects to Redis. The app increments a `counter` on an incoming request.

### Setting up the app

- [X] Use `make build` to compile the binary.
- [X] Set the environment variables:
    - [X] `DEMO_APP_ADDR`: Address where the app should listen to
    - [X] `DEMO_REDIS_ADDR`: Address where Redis is running

## Tasks

- [X] Create a `Dockerfile` for the app.

- [X] Create a `docker-compose.yml` for the app which includes

  - [X] `redis` service, with the data directory of `redis` mounted at `/data` in your VM.
  - [X] `app` service running with port `8000` exposed to the host.

- [X] Write a bash script that creates and boots [Vagrant box](https://vagrant.io) with Ubuntu.

- Using Ansible provision the VM to:

  - Setup hostname of VM as `demo-ops`
  - Create a user `demo`
  - Configure `sysctl` for sane defaults. For eg: increasing open files limit. Configure a variety of `sysctl` settings to make the VM a production grade one.
  - Set the system's timezone to "Asia/Kolkata"
  - Install Docker and Docker-Compose
  - Configure Docker Daemon to have sane defaults. For eg: to keep logs size in check.
  - Deploy the `docker-compose.yml` in `/etc/demo-ops` and start the services

- [X] Commit the scripts to Github and share the link.

### Bonus Section

If you have experience working with Kubernetes, you can attempt the bonus scenario:

- [X] Create a namespace `demo-ops`
- [X] Create a deployment and service manifest for the app.
- [X] Configure liveliness check, resource quotas for the deployment.
