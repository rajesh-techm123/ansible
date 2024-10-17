#!/bin/bash

Get the private IP from Terraform output
vm_private_ip=$(terraform output -raw vm_private_ip)
echo "Private IP fetched: $vm_private_ip"

Check if PRIVATE_IP is not empty
if [ -z "$vm_private_ip" ]; then
    echo "Error: Could not retrieve the private IP from Terraform output."
    exit 1
fi
echo "Private IP fetched: $vm_private_ip"
Create the Ansible inventory file

#!/bin/bash

# # Check if the required directories exist
# if [ ! -d "ansible" ]; then
#     echo "Ansible directory does not exist. Creating it."
#     mkdir -p ansible
# fi

# # Get the private IP from Terraform output using jq
# PRIVATE_IP=$(terraform output -json private_ip | jq -r .)

# # Check if PRIVATE_IP is not empty
# if [ -z "$PRIVATE_IP" ]; then
#     echo "Error: Could not retrieve the private IP from Terraform output."
#     exit 1
# fi

# # Create the Ansible inventory file
# cat <<EOL > ansible/inventory.ini
# [windows]
# $PRIVATE_IP ansible_user=adminuser ansible_password=P@ssw0rd1234! ansible_connection=winrm ansible_port=5986 ansible_winrm_transport=ntlm ansible_winrm_server_cert_validation=ignore
# EOL

# echo "Inventory file created at ansible/inventory.ini"
