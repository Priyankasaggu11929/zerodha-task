# [SOLVED] Zerodha Ops Task 

## Description

This is a sample `Go` application which connects to Redis. The app increments a `counter` on an incoming request.

### Setting up the app

- Use `make build` to compile the binary.
- Set the environment variables:
    - `DEMO_APP_ADDR`: Address where the app should listen to
    - `DEMO_REDIS_ADDR`: Address where Redis is running

## Tasks

- [X] Create a `Dockerfile` for the app. [**[SOLUTION]()**]

- [X] Create a `docker-compose.yml` for the app which includes [**[SOLUTION]()**]

  - [X] `redis` service, with the data directory of `redis` mounted at `/data` in your VM.
  - [X] `app` service running with port `8000` exposed to the host.

- [X] Write a bash script that creates and boots [Vagrant box](https://vagrant.io) with Ubuntu. [**[SOLUTION](https://github.com/Priyankasaggu11929/zerodha-task/blob/master/vagrant_boot.sh)**]

- Using Ansible provision the VM to: [**[SOLUTION]()**]

  - [X] Setup hostname of VM as `demo-ops`
  - [X] Create a user `demo`
  - [X] Configure `sysctl` for sane defaults. For eg: increasing open files limit. Configure a variety of `sysctl` settings to make the VM a production grade one.
  - [X] Set the system's timezone to "Asia/Kolkata"
  - [X] Install Docker and Docker-Compose
  - [ ] Configure Docker Daemon to have sane defaults. For eg: to keep logs size in check.
  - [X] Deploy the `docker-compose.yml` in `/etc/demo-ops` and start the services

- [X] Commit the scripts to Github and share the link.

### Bonus Section

If you have experience working with Kubernetes, you can attempt the bonus scenario: [**[SOLUTION](https://github.com/Priyankasaggu11929/zerodha-task/tree/master/kubernetes-deployment)**]

- [X] Create a namespace `demo-ops`
- [X] Create a deployment and service manifest for the app.
- [X] Configure liveliness check, resource quotas for the deployment.
