variable "controller_ip" {
  description = "Set controller ip"
  type        = string
}

variable "ctrl_password" {
    type = string
}

variable "account" {
    type = string
}

variable "name" {
    type = string
}

variable "cidr" {  
  description = "Set vpc cidr"
  type        = string
}

variable "region" {
  description = "Set regions"
  type        = string
}

variable "transit_gw" {
    type = string
}



variable "nat_attached" {
  default     = "true"
}


variable "attached" {
  default     = "true"
}

variable "ha_gw" {
  description = "Required when spoke is HA pair."
  default     = true
}
