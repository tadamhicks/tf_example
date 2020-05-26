#################################
##			Variables		   ##
#################################
# variable "access_key" {}
# variable "secret_key" {}
# variable "ami_id" {}
# variable "amazon_region" {}


#################################
##			Provider		   ##
#################################
provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "superman" {
  ami           = "ami-0edfed9d6e9a4031b"
  instance_type = "t2.micro"
}

resource "aws_instance" "batman" {
  ami           = "ami-0edfed9d6e9a4031b"
  instance_type = "t2.micro"
}