/*

*/

variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}


// Variables to create compartments 


variable "root_compartment_variables" {
  description = "Root Compartments"
  
}

variable "ebs_compartment_variables" {
  description = "EBS Compartments"
}

variable "peoplesoft_compartment_variables" {
  description = "PeopleSoft Compartments"
}