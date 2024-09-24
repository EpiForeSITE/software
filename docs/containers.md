# Containers 

This file will include documentation on using containerization development tools, such as Podman. 
It will be expanded and refined over time.

## Using Podman
Podman is a free container management tool that is very helpful and user-friendly.

### Getting Started
See the [Podman documentation](https://podman.io/docs) to download, install, and get started with Podman.

### Running a Python Container
If you are running Python code with Podman, you can select a container image that already has Python installed, such as `docker.io/library/python:3.12`.

**Note:** The `python:3.12` container does not appear to have `h5py` installed, which can cause trouble with installing some packages.
To install `h5py`, run the following commands in the *container's* Terminal:
```
apt update
apt-get install libhdf5-dev
```
