# tf-012-create-compartments

Creates multiple compartments in Oracle Cloud Infrastructure with Terraform 0.12

Running this creates following resources:


* Three compartments in tenancy root and two subcompartments for eBS and Peoplesoft

## Requirements and install instructions

1. Valid OCI account to install these components
2. Download these files
3. Set following environment variables to your environment:

* TF_VAR_tenancy_ocid - Your tenancy OCID
* TF_VAR_user_ocid - Your user OCID which you are connecting to OCI
* TF_VAR_fingerprint - Fingerprint for your key found from user details
* TF_VAR_private_key_path - Path to your private key on your machine
* TF_VAR_region - region which you are using

4. Running Terraform:

* terraform init
* terraform plan !! Remember to review the plan !!
* terraform apply

## Removal of stack

In case you want to remove created resources:

* terraform destroy

## Additional notes

You can freely change the variables in the terraform.tfvars depending what you need.Try and test!







