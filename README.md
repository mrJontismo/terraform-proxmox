# Terraform Proxmox K3s Server

This is my Terraform configuration for creating a K3s cluster with 3 server nodes. The configuration is split into two files:

- `provider.tf`: Provider configuration for Proxmox VE
- `kube-servers.tf`: Configuration for creating 3 Kubernetes server nodes using Proxmox VE

## Variables
Remember to add file `variables.pkrvars.hcl` into the root of this repo.
The file should contain: 
```text
proxmox_api_url = "your-proxmox-host"
proxmox_api_token_id = "your-token-id"
proxmox_api_token_secret = "your-secret"
```

## Usage

1. Install Terraform on your local machine.
2. Clone this repository to your local machine.
3. Update the `variables.pkrvars.hcl` file with your desired settings.
4. Run `terraform init` to initialize the configuration.
5. Run `terraform apply -auto-approve` to provision the server nodes.