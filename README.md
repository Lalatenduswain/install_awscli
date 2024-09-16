# AWS CLI Installation Script

## Overview

This repository provides a bash script for installing AWS CLI version 2 on a Linux system. The script handles downloading, verifying, and installing the AWS CLI. 

## Prerequisites

Before running the script, ensure you have the following installed on your system:

- **`curl`**: For downloading files from the internet.
- **`unzip`**: For extracting ZIP files.
- **`gpg`**: For verifying the integrity of the downloaded file. Install it using `sudo apt-get install gnupg` if it's not already installed.
- **`sudo`**: Required for running the installation commands with administrative privileges.

## Script Name

The script name is `install_awscli.sh`.

## Installation Instructions

Follow these steps to use the script:

1. **Clone the Repository**

   Clone the repository to your local machine:

   ```bash
   git clone https://github.com/Lalatenduswain/install_awscli.git
   ```

   Navigate into the cloned directory:

   ```bash
   cd install_awscli
   ```

2. **Make the Script Executable**

   Ensure the script is executable:

   ```bash
   chmod +x install_awscli.sh
   ```

3. **Run the Script**

   Execute the script:

   ```bash
   ./install_awscli.sh
   ```

   This will download, verify, unzip, and install AWS CLI version 2.

4. **Verify the Installation**

   After running the script, check the AWS CLI version to confirm the installation:

   ```bash
   aws --version
   ```

## Script Details

- **Download AWS CLI Installer**: The script uses `curl` to download the installer from the official AWS URL.
- **Verify Download**: Optionally verifies the integrity of the downloaded file using GPG.
- **Unzip Installer**: Extracts the contents of the ZIP file.
- **Install AWS CLI**: Installs AWS CLI to `/usr/local/aws-cli` and creates a symlink in `/usr/local/bin`.
- **Cleanup**: Removes temporary files after installation.

## Disclaimer | Running the Script

**Author:** Lalatendu Swain | [GitHub](https://github.com/Lalatenduswain) | [Website](https://blog.lalatendu.info/)

This script is provided as-is and may require modifications or updates based on your specific environment and requirements. Use it at your own risk. The authors of the script are not liable for any damages or issues caused by its usage.

## Donations

If you find this script useful and want to show your appreciation, you can donate via [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain).

## Support or Contact

Encountering issues? Don't hesitate to submit an issue on our [GitHub page](https://github.com/Lalatenduswain/install_awscli/issues).
