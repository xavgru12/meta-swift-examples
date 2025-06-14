#!/bin/bash

# Set the version of Neovim you want to install
NEOVIM_VERSION="v0.9.5"  # Change this to the desired version

# Set the download URL based on the version
DOWNLOAD_URL="https://github.com/neovim/neovim/releases/download/$NEOVIM_VERSION/nvim-linux64.tar.gz"

# Set installation directory
INSTALL_DIR="/opt/nvim"

# Download the specific version of Neovim
echo "Downloading Neovim version $NEOVIM_VERSION..."
curl -LO $DOWNLOAD_URL

# Extract the tarball
echo "Extracting Neovim..."
tar -xvzf "nvim-linux64.tar.gz"

# Move the extracted files to the installation directory
echo "Installing Neovim to $INSTALL_DIR..."
sudo mv nvim-linux64 $INSTALL_DIR

# Create a symbolic link for easy access
echo "Creating symbolic link to /usr/local/bin/nvim..."
sudo ln -sf $INSTALL_DIR/bin/nvim /usr/local/bin/nvim

# Verify the installation
#echo "Neovim version:"
#nvim --version

# Clean up downloaded files
echo "Cleaning up..."
rm -f "nvim-linux64.tar.gz"

echo "Neovim $NEOVIM_VERSION installation completed!"
