variable "project_name"{
    type= string
}

variable "environment"{
    type= string
}

variable "vpc_cidr"{
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames"{
    default= true
}

#optional
variable "common_tags"{
    default = {}
}

variable "vpc_tags"{
    default={}
}
variable "igw_tags"{
    default={}
}
#public variables
variable "public_subnet_tags"{
    default={}
}
variable "public_route_tags"{
    default={}
}
variable "public_subnet_cidrs"{
    type= list
    validation{
        condition= length(var.public_subnet_cidrs) == 2
        error_message= "Enter any 2 valid cidr values for public subnet"
    }
}
#private variables
variable "private_subnet_tags"{
    default={}
}
variable "private_route_tags"{
    default={}
}
variable "private_subnet_cidrs"{
    type= list
    validation{
        condition= length(var.private_subnet_cidrs) == 2
        error_message= "Enter any 2 valid cidr values for private subnet"
    }
}
#database variables
variable "database_subnet_tags"{
    default={}
}
variable "database_subnet_group_tags"{
    default={}
}
variable "database_route_tags"{
    default={}
}
variable "database_subnet_cidrs"{
    type= list    
    validation{
        condition= length(var.database_subnet_cidrs) == 2
        error_message= "Enter any 2 valid cidr values for database subnet"
    }
}

variable "nat_gateway_tags"{
    default={}
}

