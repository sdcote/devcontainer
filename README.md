# devcontainer

A Docker image (Dockerfile) used to create Ubuntu development environments.

If you use `devcontainers` in Visual Studio Code or GitHub Codespaces, you normally start for a base image for those containerized environments. This is one of my base images for those environments.

You need to set your Docker Hub user name and password in the repository secrets: `secrets.DOCKER_USERNAME` and `secrets.DOCKER_PASSWORD`.

You will also need your GitHub API credentials (Personal Access Token) stored in `secrets.GH_CREDENTIAL`. This is the token the container will present when calling the GitHub API. This will help you specify what the container can do when interacting with GitHub, unless otherwise over-ridden during development activities.