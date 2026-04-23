variable "vpc_cidr"{
    description = "VPC CIDR Block"
    type = string
}

variable "azs"{
    description = "AZ of VPC"
    type = list(string)
}

variable "public_subnet_cidrs"{
    description = "Public Subnet CIDR"
    type = list(string)
}

variable "tags"{
    description ="Tags for VPC"
    type = map(string)
    default = {}
}

