#################################
##			Variables		   ##
#################################
variable "access_key" {}
variable "secret_key" {}
# variable "ami_id" {}
# variable "amazon_region" {}


#################################
##			Provider		   ##
#################################
provider "aws" {
	region = "us-east-1"
	access_key = "${var.access_key}"
	secret_key = "${var.secret_key}"
}

resource "aws_instance" "example" {
  ami           = "ami-0edfed9d6e9a4031b"
  instance_type = "t2.micro"
}

resource "aws_instance" "second_example" {
  ami           = "ami-0edfed9d6e9a4031b"
  instance_type = "t2.micro"
}