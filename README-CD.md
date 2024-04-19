### CD Project Overview:
- **What are you doing**: The project automates the process of building a Docker image for the project and pushing it to DockerHub whenever a Git tag is pushed to your GitHub repository.
- **Why**: Automation of the deployment process ensures that your Docker image is up-to-date.
- **What tools**:
    - **GitHub Actions**: Used to define workflows that automate the deployment process.
    - **Docker**: Utilized for building and managing containerized applications.
    - **DockerHub**: Used as the container registry to store and distribute Docker images.

### How to generate a tag in Git / GitHub:
To generate a tag in Git/GitHub, follow these steps:
1. **Git command**: Use the `git tag` command followed by the version number to create a new tag. For example:
   ```bash
   git tag v1.0.0

# Behavior of GitHub workflow
The GitHub workflow defined in the `.github/workflows` directory is triggered whenever a tag is pushed to the repository. Here's what it does:

- **Checkout repository**: Fetches the latest code from the repository.
- **Login to DockerHub**: Authenticates with DockerHub using provided credentials stored as secrets.
- **Build Docker image**: Builds a Docker image for the project.
- **Determine Git tag**: Retrieves the Git tag associated with the commit.
- **Push Docker image to DockerHub**: Tags the Docker image with the Git tag and `latest`, then pushes the images to DockerHub.

# What does it do and when
- **What**: Automatically builds and pushes Docker images to DockerHub.
- **When**: Whenever a Git tag is pushed to the repository. This allows you to trigger the deployment process when you're ready to deploy a new version of your project.
