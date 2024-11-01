variable "vpc_cidr" {
  description = "VPC CIDR range"
  type        = string
}
variable "subnet_cidr" {
    description = "SUBNET CIDR"
    type        = list(string)
  
}
variable "subnet_name" {
  description = "SUBNET NAME"
  type = list(string)
  default = [ "Pubpic_subnet1","Pubpic_subnet2" ]
}