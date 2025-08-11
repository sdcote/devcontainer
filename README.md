# devcontainer

A Docker image (Dockerfile) used to create Ubuntu development environments for Infrastructure as Code (IaC) development.

If you use `devcontainers` in Visual Studio Code or GitHub Codespaces, you normally start from a base image for those containerized environments. This is one of my base images for those environments. THis contains all the tools I might need for my IaC development.

# What's Installed

- Ansible - allows you to automate tasks such as provisioning, configuration management, application deployment, and orchestration.
- Ansible lint - atool that checks your Ansible playbooks, roles, and collections for syntax errors, best practices, and potential issues.
- Atlantis - A self-hosted golang application that listens for Terraform pull request events via webhooks.
- AWS CLI -  tool that allows you to manage and interact with your Amazon Web Services (AWS) from your terminal.
- AWS Copilot - a command-line tool that simplifies the deployment and management of containerized applications on AWS.
- Azure CLI - command-line tools for creating and managing Azure resources. 
- AWS CDK - AWS Cloud Development Kit (and projen - a project generator and configuration management tool).
- Checkov - static code analysis tool specifically designed for Infrastructure as Code (IaC) security.
- direnv - a tool that helps manage environment variables on a per-directory basis.
- Docker - building, shipping, and running applications using containers.
- e1sh - Easily Manage AWS ECS Resources in Terminal.
- eksctl - The official CLI for Amazon EKS.
- Google Cloud CLI - The Google Cloud CLI (gcloud) is a set of command-line tools for creating and managing Google Cloud resources. 
- GitHub CLI -  tool that brings many GitHub features to your terminal.
- goenv - switch between different versions of the Go programming language.
- gomplate - command-line tool for template rendering.
- helm - a tool for managing Charts. Charts are packages of pre-configured Kubernetes resources.
- infracost - shows cloud cost estimates and FinOps best practices for Terraform.
- k9s - provides a terminal UI to interact with your Kubernetes clusters.
- kubectl - kubectl is the primary command-line tool for interacting with a Kubernetes cluster.
- ngrok - reverse proxy; a tool that creates a secure tunnel from a public endpoint on the internet to a locally running web service on your machine.
- Oh My Zsh - framework for managing your Zsh configuration.
- Packer - create identical machine images for multiple platforms from a single source configuration.
- precommit - a tool for managing and maintaining Git pre-commit hooks. 
- sops - an editor of encrypted files that supports YAML, JSON, ENV, INI and BINARY formats and encrypts with AWS KMS, GCP KMS, Azure Key Vault, age, and PGP.
- Terraform -  Infrastructure as Code (IaC) tool developed by HashiCorp.
- Terraform Docs - a command-line tool that automatically generates documentation from your Terraform modules. 
- terragrunt - managing Terraform remote state, locking, and command-line arguments in a more structured way.
- tflint - a linter for Terraform.
- tfsec - static analysis security scanner for Terraform code. 
- tofu - an open-source fork of HashiCorp Terraform.

# Build Variables

There are three secrets currently used in this project to automatically build the image:

- You need to set your Docker Hub user name and password in the repository secrets: `secrets.DOCKER_USERNAME` and `secrets.DOCKER_PASSWORD`.

 - You will also need your GitHub API credentials (Personal Access Token) stored in `secrets.GH_CREDENTIAL`. This is the token the container will present when calling the GitHub API. This will help you specify what the container can do when interacting with GitHub, unless otherwise over-ridden during development activities.