// Variables to create compartments 

root_compartment_variables = {
  c1 = { 
     compartment_name = "network_compartment" 
     compartment_description = "Compartment for Network resources"
     }
  c2 = { 
     compartment_name = "ebs_compartment" 
     compartment_description = "Compartment for EBS resources"
      }
  c3 = { 
     compartment_name = "peoplesoft_compartment" 
     compartment_description = "Compartment for PeopleSoft resources"
}
}

ebs_compartment_variables = {
  c1 = { 
     compartment_name = "ebs_apps_compartment" 
     compartment_description = "Compartment for EBS Apps resources"
     }
  c2 = { 
     compartment_name = "ebs_db_compartment" 
     compartment_description = "Compartment for EBS DB resources"
      }
  }

peoplesoft_compartment_variables = {
  c1 = { 
     compartment_name = "peoplesoft_apps_compartment" 
     compartment_description = "Compartment for PeopleSoft Apps resources"
     }
  c2 = { 
     compartment_name = "peoplesoft_db_compartment" 
     compartment_description = "Compartment for Peoplesoft DB resources"
      }
  }
