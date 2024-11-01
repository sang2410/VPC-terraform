variable "sg_id" {
    description = "sg for lb"
    type = string
  
}
variable "subnets" {
    description = "sg for lb"
    type = list(string)
  
}
variable "vpc_id" {
    description = "id for lb"
    type = string
  
}
variable "instance_id" {
    description = "id for lb"
    type = list(string)
  
}