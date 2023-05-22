terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "name" {
  ami           = "ami-03d5c68bab01f3496"
  instance_type = "t2.micro"
  key_name      = "iac-renan"
  #   user_data     = <<-EOF
  #                     #!/bin/bash
  #                     cd /home/ubuntu
  #                     echo "<h1> Olá Mundo </h1>" > index.html
  #                     nohup busybox httpd -f -p 8080 &
  #                     EOF
  tags = {
    Name = "TesteAWS"
  }
}
