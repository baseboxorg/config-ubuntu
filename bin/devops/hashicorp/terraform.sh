#!/bin/bash
if [[ ! $INSTALL_SCRIPT ]]; then
    echo "(!) Error: You must use the installer script."
    exit
fi

echo "(+) Downloading Hashicorp Terraform"

curl -o terraform.zip https://releases.hashicorp.com/terraform/0.10.4/terraform_0.10.4_linux_amd64.zip

unzip terraform.zip
sudo mv terraform /usr/local/bin
rm terraform.zip

echo "(+) Complete! Run with $ terraform"

if [ $SKIP_SLEEP == false ]; then
    sleep 4
fi

