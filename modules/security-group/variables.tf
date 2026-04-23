variable "name" {
  description = "Security group name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "ingress_rules" {
  description = "Ingress rules"
  type = list(object({
    port = number
    cidr = string
  }))
  default = []
}

variable "tags" {
  type    = map(string)
  default = {}
}