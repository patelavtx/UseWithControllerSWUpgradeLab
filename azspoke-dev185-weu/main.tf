
# AZURE spoke - dev 

# https://registry.terraform.io/modules/terraform-aviatrix-modules/mc-overlap-nat-spoke/aviatrix/latest
# https://registry.terraform.io/modules/terraform-aviatrix-modules/mc-spoke/aviatrix/latest


#For spoke manually updated downloaded module whilst transit used locally source module (use this as reference)
# *************************************************************************************************************
module "spoke_azure_1" {
  source         = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  #version        = "1.5.2"
  version        = "1.6.6"
  cloud          = "Azure" 
  transit_gw     = var.transit_gw
  attached       = var.attached
  cidr           = var.cidr
  region         = var.region
  ha_gw          = var.ha_gw
  account        = var.account
  insane_mode    = "false"
  #enable_bgp     = "true"
  #local_as_number = "65185"
  #  name of existing RG
  resource_group = "atulrg-spoke185"
  name = var.name
  subnet_pairs = "2"
  software_version = "7.1.2131"
  ha_software_version = "7.1.2131"
  image_version = "aviatrix-companion-gateway-v16"
  ha_image_version = "aviatrix-companion-gateway-v16"
  # Test out updating spoke gw RT to modify
  #included_advertised_spoke_routes = "10.185.1.0/24,10.255.185.1/32,10.255.185.2/32,10.255.185.251/32,10.255.185.252/32"
  #included_advertised_spoke_routes = "0.0.0.0/0, 10.20.0.0/24"  
  #filtered_spoke_vpc_routes = "10.185.1.0/25"
  #software_version = "7.1.2131"
  #ha_software_version = "7.1.2131"
}

