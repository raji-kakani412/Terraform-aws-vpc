# Terraform AWS VPC

## Arguments

vpc_cidr(optional)- vpc_cidr default value is 10.0.0.0/16

enable_dns_hostnames(Optional)-A boolean flag to enable/disable DNS hostnames in the VPC. Default is true

project_name(Mandatory)- This is of string type and user must provide project_name

environment (Mandatory)- This is of string type and user must provide environment information.

public_subnet_cidrs(Mandatory)- This is of list type which allows 2 valid cidr values for public subnet resource

public_subnet_tags(Optional)- A map of tags to be assigned to a public subnet resource

private_subnet_cidrs(Mandatory)- This is of list type which allows 2 valid cidr values for private subnet resource

private_subnet_tags(Optional)- A map of tags to be assigned to a private subnet resource

database_subnet_cidrs(Mandatory)- This is of list type which allows 2 valid cidr values for database subnet resource

database_subnet_tags(Optional)- A map of tags to be assigned to a database subnet resource

database_subnet_group_tag(Optional)- A map of tags to be assigned to a database subnet group resource

common_tags(Optional)- A map of tags to be assigned to a resource

vpc_tags(Optional)- A map of tags to be assigned to a vpc

igw_tags(Optional)- A map of tags to be assigned to an internet gateway

nat_gateway_tags(Optional)- A map of tags to be assigned to a NAT gateway

## Outputs

vpc_id -contains vpc_id of the vpc created

az_info - contains information of all the availablity zones of the provider region 

