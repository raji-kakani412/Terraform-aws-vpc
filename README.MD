# Terraform AWS VPC Module Customised
    This module is going to create the following resources. For High Availability we are going to get first 2 AZ
* VPC
* Internet Gateway associated with VPC
* 2 Public subnets
* 2 Private subnets
* 2 Database subnets
* Database subnet group
* EIP
* NAT Gateway
* Public Route table
* Private Route table
* Database Route table
* Routes
* Route table associations with subnets
* peering with default VPC (if required)
* Peering routes in acceptor and requestor route tables    

## Inputs

* project_name(Mandatory)- user must provide their project_name

* environment (Mandatory)-user must provide their environment information.

* vpc_cidr(Mandatory)- user must supply their vpc_cidr

* enable_dns_hostnames(Optional)- Default is true

* public_subnet_cidrs(Mandatory)- User must provide 2 valid cidr values for public subnet resource

* public_subnet_tags(Optional)-Default is empty.User can supply tags in map format

* public_route_table_tags(Optional)-Default is empty.User can supply tags in map format

* private_subnet_cidrs(Mandatory)- User must provide 2 valid cidr values for private subnet resource

* private_subnet_tags(Optional)- Default is empty.User can supply tags in map format

* private_route_table_tags(Optional)- Default is empty.User can supply tags in map format

* database_subnet_cidrs(Mandatory)- User must provide 2 valid cidr values for database subnet resource

* database_subnet_tags(Optional)-Default is empty.User can supply tags in map format

* database_subnet_group_tags(Optional)- Default is empty.User can supply tags in map format

* database_route_table_tags(Optional)- Default is empty.User can supply tags in map format

* common_tags(Optional)- Default is empty.User can supply tags in map format

* vpc_tags(Optional)- Default is empty.User can supply tags in map format

* igw_tags(Optional)- Default is empty.User can supply tags in map format

* nat_gateway_tags(Optional)-Default is empty.User can supply tags in map format

* vpc_peering_tags(Optional)-Default is empty.User can supply tags in map format

* is_peering_required(optional)- default is false.User must set to true if peering is required

## Outputs

* vpc_id: vpc_id of the vpc created

* public_subnet_ids: list of 2 public subnet id's created

* private_subnet_ids: list of 2 private subnet id's created

* database_subnet_ids: list of 2 database subnet id's created

