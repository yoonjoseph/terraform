provider "aws" {}

# Create a web server
resource "aws_instance" "base" {
  ami           = "ami-76227116"
  instance_type = "t2.micro"
}

resource "aws_eip" "base" {
  instance = "${aws_instance.base.id}"
}
