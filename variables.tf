variable "aws_region" {
  description = "Region for the VPC"
  default = "us-east-1"
}

variable "access_key" {
  default = ""
 }

variable "secret_key" {
  default = ""
 }

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default = "10.0.0.0/16,10.0.0.0/18,10.0.0.0/24"
}

variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
  default = ""
}

variable "private_subnet_cidr" {
  description = "CIDR for the private subnet"
  default = ""
}
