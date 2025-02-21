variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_cidr" {
  
}

variable "enable_dns_hostnames" {
  default = true
}

#optional
variable "common_tags" {
  default = {}
}

variable "vpc_tags" {
  default = {}
}
variable "igw_tags" {
  default = {}
}
#public variables
variable "public_subnet_tags" {
  default = {}
}
variable "public_route_table_tags" {
  default = {}
}
variable "public_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "Enter any 2 valid cidr values for public subnet"
  }
}
#private variables
variable "private_subnet_tags" {
  default = {}
}
variable "private_route_table_tags" {
  default = {}
}
variable "private_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "Enter any 2 valid cidr values for private subnet"
  }
}
#database variables
variable "database_subnet_tags" {
  default = {}
}
variable "database_subnet_group_tags" {
  default = {}
}
variable "database_route_table_tags" {
  default = {}
}
variable "database_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "Enter any 2 valid cidr values for database subnet"
  }
}

variable "eip_tags" {
  default = {}
}
variable "nat_gateway_tags" {
  default = {}
}
   
variable "vpc_peering_tags"{
    default={}
}
variable "is_peering_required"{
  type= bool
  default= false
}

