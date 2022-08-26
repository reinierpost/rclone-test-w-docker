Purpose
=======

A simple way of testing rclone with various operating systems.

Usage
=====

- Clone this repository, which will give you the files
    - `docker-compose.yml`
    - `Dockerfile`
- Go into that directory and put a valid `rclone.conf` file (created with `rclone config`) there.
- Install `docker`, if possible with the `docker compose` subcommand, or install `docker-compose`.
  See https://docs.docker.com/engine/install/
- Run the test:
    - `docker[-]compose up -d --build`
- Inspect the results:
    - `docker[-]compose logs`
- Shut down:
    - `docker[-]compose down`
- To test with different OSes or versions, set the `OS_IMAGE` environment variable, e.g.
    - `env OS_IMAGE=ubuntu:22.10 docker[-]compose up -d --build`
- To specify a password for your configuration file, set `RCLONE_CONFIG_PASS`, e.g.
    - `env RCLONE_CONFIG_PASS=testing123 docker[-]compose up -d --build`
- Tweak to your liking.

Limitations
===========

This has only been tested with two Fedora and two Ubuntu versions.

Clearly, it will not work with arbitrary versions of arbitrary Linux distributions,
let alone other operating systems.

If you want to improve it, don't hesitate.
