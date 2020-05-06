variable "parent_ocid" {}
variable "compartment_variables" {type = map}


resource "oci_identity_compartment" "CreateCompartment" {
  for_each      =  var.compartment_variables 
  compartment_id = var.parent_ocid
  name           = each.value.compartment_name
  description    = each.value.compartment_description
  }
  

