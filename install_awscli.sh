#!/bin/bash

# Variables
AWS_CLI_ZIP="awscliv2.zip"
AWS_CLI_URL="https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"
AWS_CLI_SIG_URL="https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip.sig"
GPG_PUBLIC_KEY_URL="https://d1uj6qtbmh3dt5.cloudfront.net/awscli-public-key.asc"
GPG_KEY_ID="A6310ACC4672475C"

# Download AWS CLI
echo "Downloading AWS CLI..."
curl -o $AWS_CLI_ZIP $AWS_CLI_URL

# Optional: Download the AWS CLI signature and public key
echo "Downloading AWS CLI signature..."
curl -o awscliv2.sig $AWS_CLI_SIG_URL
echo "Downloading AWS CLI public key..."
curl -o awscli-public-key.asc $GPG_PUBLIC_KEY_URL

# Import the public key
echo "Importing the AWS CLI public key..."
gpg --import awscli-public-key.asc

# Verify the downloaded file
echo "Verifying the downloaded file..."
gpg --verify awscliv2.sig $AWS_CLI_ZIP

# Unzip the installer
echo "Unzipping AWS CLI installer..."
unzip -o $AWS_CLI_ZIP

# Install AWS CLI
echo "Installing AWS CLI..."
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update

# Verify installation
echo "Verifying AWS CLI installation..."
aws --version

# Cleanup
echo "Cleaning up..."
rm -f $AWS_CLI_ZIP awscliv2.sig awscli-public-key.asc
rm -rf aws

echo "AWS CLI installation complete."
