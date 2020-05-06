provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}


// Create Root Compartment
module "CreateRootCompartment" {
  source                = "../modules/module-compartments"
  parent_ocid           = var.tenancy_ocid
  compartment_variables = var.root_compartment_variables
}

// Get the OCID for the parent ebs compartment

locals {
  ebs_root_compartment_id = [
    for i in module.CreateRootCompartment.compartmentinfo : i.id if i.name == "ebs_compartment"
  ]
}

module "CreateCompartmentEBS" {
  source                ="../modules/module-compartments"
  parent_ocid           = local.ebs_root_compartment_id[0]
  compartment_variables = var.ebs_compartment_variables
}
// Get the OCID for the parent peoplesoft compartment

locals {
  peoplesoft_root_compartment_id = [
    for i in module.CreateRootCompartment.compartmentinfo : i.id if i.name == "peoplesoft_compartment"
  ]
}

module "CreateCompartmentPeopleSoft" {
  source                = "../modules/module-compartments"
  parent_ocid           = local.peoplesoft_root_compartment_id[0]
  compartment_variables = var.peoplesoft_compartment_variables
}
