variable "instance_type" {
    default = "t2.micro"
}

variable "instance_count" {
    default = 2
}
variable "availability_zone" {

}
variable "access_key" {
    default = "***************************************"
}

variable "secret_key" {
    default = "*****************************************"
}

variable "ami" {
    default = "ami-00dfe2c7ce89a450b"
}

variable "region" {
    default = "us-east-2"
}
