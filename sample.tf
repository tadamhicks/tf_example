#################################
##			Variables		   ##
#################################
variable "access_key" {}
variable "secret_key" {}
variable "ami_id" {}
variable "amazon_region" {}


#################################
##			Provider		   ##
#################################
provider "aws" {
	region = "${var.amazon_region}"
	access_key = "${var.access_key}"
	secret_key = "${var.secret_key}"
}

resource "aws_instance" "example" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"
}

resource "aws_instance" "second_example" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"
}