variable "vpc_cidr" {
  description = "VPC CIDR range"
  type        = string
}
variable "subnet_cidr" {
  description = "SUBNET CIDR"
  type        = list(string)

}
variable "instance_type" {
  description = "type for ec2 instance"
  type        = string

}
variable "instance_keypair" {
  description = "keypair for ec2"
  type        = string
}