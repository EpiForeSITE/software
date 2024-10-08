# Containers 

This file will include documentation on using containerization development tools, such as Podman. 
It will be expanded and refined over time.

## Using Podman
Podman is a free container management tool that is very helpful and user-friendly.

### Getting Started
See the [Podman documentation](https://podman.io/docs) to download, install, and get started with Podman.

### Running a Python Container
If you are running Python code with Podman, you can select a container image that already has Python installed, such as `docker.io/library/python:3.12`.

**Troubleshooting Note:** If the package you want to install uses `h5py`, you may need to run the following commands in the *container's* Terminal before installing the desired package:
```
apt update
apt-get install libhdf5-dev
```

## Using Dev Containers
Development containers are Docker containers configured for development that can be launched in a codespace, such as GitHub Codespaces or VSCode.
The dev container build instructions live in the `.devcontainer/` folder in the `devcontainer.json` file, and the container can be built from existing images or from a custom Dockerfile included in the project.

For more information, see GitHub's [Introduction to dev containers](https://docs.github.com/en/codespaces/setting-up-your-project-for-codespaces/adding-a-dev-container-configuration/introduction-to-dev-containers) and VSCode's [Developing inside a Container](https://code.visualstudio.com/docs/devcontainers/containers).