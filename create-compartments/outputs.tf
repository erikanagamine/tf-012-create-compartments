output "root_compartment_info" {
  value = module.CreateRootCompartment.compartmentinfo
}

output "ebs_compartment_info" {
  value = module.CreateCompartmentEBS.compartmentinfo
}

output "peoplesoft_compartment_info" {
  value = module.CreateCompartmentPeopleSoft.compartmentinfo
}