provider "aws" {
  version = "~> 2.7"
  region  = "us-east-1"
}

resource "aws_instance" "web" {  
  ami = "ami-0ac80df6eff0e70b5"
  instance_type = "t2.micro"
  
   tags = {
   Name = "devops-one"
  }
}

output "public_ip" {
  value = "${aws_instance.web.public_ip}"
}

// output "private_ip" {
//   value = "${aws_instance.web.private_ip}"
// }

