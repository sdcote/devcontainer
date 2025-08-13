# devcontainer

A Docker image (Dockerfile) used to create Ubuntu development environments for Infrastructure as Code (IaC) development.

If you use `devcontainers` in Visual Studio Code or GitHub Codespaces, you normally start from a base image for those containerized environments. This is one of my base images for those environments. This contains all the tools I might need for my IaC development.

### It's Big
Yeah, this image is large (5.6 GB), and contains many (80) layers. It is not designed for size, it is designed for maintainability.

Once this image is stable, we'll optimize it a bit. But for now, it's fine for our corporate infrastructure.

# What's Installed

- Ansible - Allows you to automate tasks such as provisioning, configuration management, application deployment, and orchestration.
- Ansible Lint - A tool that checks your Ansible playbooks, roles, and collections for syntax errors, best practices, and potential issues.
- Atlantis - A self-hosted golang application that listens for Terraform pull request events via webhooks.
- AWS CLI - A tool that allows you to manage and interact with your Amazon Web Services (AWS) from your terminal.
- AWS Copilot - A command-line tool that simplifies the deployment and management of containerized applications on AWS.
- Azure CLI - Command-line tools for creating and managing Azure resources. 
- AWS CDK - AWS Cloud Development Kit (and projen - a project generator and configuration management tool).
- Checkov - Static code analysis tool specifically designed for Infrastructure as Code (IaC) security.
- direnv - A tool that helps manage environment variables on a per-directory basis.
- Docker - Building, shipping, and running applications using containers.
- e1sh - Easily Manage AWS ECS Resources in Terminal.
- eksctl - The official CLI for Amazon EKS.
- Google Cloud CLI - The Google Cloud CLI (gcloud) is a set of command-line tools for creating and managing Google Cloud resources. 
- GitHub CLI - A tool that brings many GitHub features to your terminal.
- goenv - Switch between different versions of the Go programming language.
- gomplate - Command-line tool for template rendering.
- helm - A tool for managing Charts. Charts are packages of pre-configured Kubernetes resources.
- infracost - Shows cloud cost estimates and FinOps best practices for Terraform.
- k9s - Provides a terminal UI to interact with your Kubernetes clusters.
- kubectl - `kubectl` is the primary command-line tool for interacting with a Kubernetes cluster.
- ngrok - A reverse proxy; a tool that creates a secure tunnel from a public endpoint on the internet to a locally running web service on your machine.
- Oh My Zsh - A framework for managing your Zsh configuration.
- Packer - Create identical machine images for multiple platforms from a single source configuration.
- precommit - A tool for managing and maintaining Git pre-commit hooks. 
- sops - An editor of encrypted files that supports YAML, JSON, ENV, INI and BINARY formats and encrypts with AWS KMS, GCP KMS, Azure Key Vault, age, and PGP.
- Terraform -  Infrastructure as Code (IaC) tool developed by HashiCorp.
- Terraform Docs - A command-line tool that automatically generates documentation from your Terraform modules. 
- terragrunt - Manages Terraform remote state, locking, and command-line arguments in a more structured way.
- tflint - A linter for Terraform.
- tfsec - A static analysis security scanner for Terraform code. 
- tofu - An open-source fork of HashiCorp Terraform.

# Build Variables

## Running From the Command Line

When running `make build` from the command line, you will need the following environment variables set:

- `GITHUB_CREDENTIAL` - The Personal Access Token (PAT) for GitHub API interactions (optional)

### Build and Push

Just run `make pushtodockerhub` to build the image and push it to Docker Hub.

You should already be logged into Docker Hub with the account you intend to publish to the registry as.

## GitHub Actions

There are three secrets currently used in this project to automatically build the image using GitHub Actions:

- You need to set your Docker Hub user name and password in the repository secrets: `secrets.DOCKER_USERNAME` and `secrets.DOCKER_PASSWORD`.

 - You will also need your GitHub API credentials (Personal Access Token) stored in `secrets.GH_CREDENTIAL`. This is the token the container will present when calling the GitHub API. This will help you specify what the container can do when interacting with GitHub, unless otherwise over-ridden during development activities.