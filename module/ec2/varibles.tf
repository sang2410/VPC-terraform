variable "sg_id" {
  description = "id-sg for ec2"
  type = string
}
variable "instance_type" {
  description = "type for ec2 instance"
  type        = string
  
}
variable "subnet_id" {
  description = "sb for ec2"
  type =list(string)
}
variable "ec2_name" {
  description = "name of ec2"
  type = list(string)
  default = [ "web1","web2" ]
}
variable "instance_keypair" {
  description = "keypair for ec2"
  type = string
}