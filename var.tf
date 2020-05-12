variable "ami" {
  description = "The AMI to use"
}
variable "instance_type" {
  default =  "t2.micro"
}

variable "instance_count" {
  description = "number of instances to make"
}
#This is optional if we want we can use
#variable "vpc_id" {
#  description = "AWS VPC ID"
#  type = "string"
#}
variable "subnet_id" {
  description = "Subnets to launch instnaces in"
#  default = ""
}
