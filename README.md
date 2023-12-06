# Basic setup to test controller and gw SW (Image) upgrade

### Description

**azspoke-dev185-weu**        :   use downloaded module to set sw and image parameters by referencing transit gateway locally sourced module.

**aztransitfnet184-weu**      :   references local sourced module to deploy which has the sw and image paramters added

**resource.tf.orig'  ->  rename to leverage the controller configuration for sw upgrade and also gw management  (Run after gateways have been deployed)**



**./local_taf-testswupgrade** :   locally sourced 'mc-transit' module updated to accommodate sw and image parameters and used by 'aztransitfnet184-weu


### How to use

1. Deploy controller 
2. Deploy transit gateway
3. Optional deploy spoke gateway  (update downloaded module to reflect changes made in transit gateway)
4. rename 'resource.tf.orig'  -> *tf ;  update and apply  (i.e. controller/gw managed or not)


REF : https://coda.io/d/Controller-Gateway-SW-Image-Upgrade-via-TF_dx_RU5RSZmE





### Changes

./local_taf-testswupgrade  has following added to main.tf (and variables.tf)

```
#  Update - sw and image support
  software_version                 = var.software_version
  ha_software_version              = var.ha_software_version
  image_version                    = var.image_version
  ha_image_version                 = var.ha_image_version
  ```



aztransitfnet184-weu - references the upgrade parameters

```
  #software_version = "7.0.2004"
  #ha_software_version = "7.0.2004"
  #image_version = "aviatrix-companion-gateway-v16"
  #ha_image_version = "aviatrix-companion-gateway-v16"

```
