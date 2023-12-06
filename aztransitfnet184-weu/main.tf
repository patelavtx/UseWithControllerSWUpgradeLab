
# https://registry.terraform.io/modules/terraform-aviatrix-modules/mc-transit/aviatrix/latest

# Step1 - deploy transit
module "mc-transit" {
  #source  = "terraform-aviatrix-modules/mc-transit/aviatrix"
  #version = "2.5.1"
  source = "../local_taf-testswupgrade"
  cloud = "Azure"        
  cidr = var.cidr
  region = var.region
  account = var.account
  resource_group = var.rg 
  local_as_number = var.localasn
  insane_mode = "true"
  name = "aztransit184-weu"
  enable_advertise_transit_cidr = "true"
  enable_segmentation    = "true"
  tags  =  var.tags
  # enable_transit_firenet = "true"       
  # enable_bgp_over_lan    = "true"
  #instance_size = "Standard_D4_v2"
  #bgp_lan_interfaces_count = "4"
  #single_az_ha = false
  #  SW and Image upgrade testing
  #software_version = "7.0.2004"
  #ha_software_version = "7.0.2004"
  #image_version = "aviatrix-companion-gateway-v16"
  #ha_image_version = "aviatrix-companion-gateway-v16"
}


# Step2 -  Run this code after mc-transit has been deployed,  use the 'resource.tf.orig' file to introduce this resource ***
/*
# Create an Aviatrix Controller Config with Controller Upgrade Without Upgrading Gateways
resource "aviatrix_controller_config" "test_controller_config" {
  http_access             = true
  fqdn_exception_rule     = false
  target_version          = "latest"
  manage_gateway_upgrades = true
}
*/
