# Use the latest Ubuntu image as the base
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# Install PowerShell
RUN apt-get update && \
    apt-get install -y wget apt-transport-https software-properties-common && \
    wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y powershell

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Install Bicep CLI
RUN az bicep install

# Install Git
RUN apt-get install -y git

# Install Python
RUN apt-get install -y python3 python3-pip

# Install Docker
RUN apt-get install -y docker.io

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set PowerShell as the default shell
CMD ["pwsh"]
