provider "aws"  {
    access_key = "INFORME-SUA-ACCESS-KEY"
    secret_key = "INFORME-SUA-SECRET-KEY"
    region     = "us-east-1"

}



#Provisionar EC2
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] 
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "TAG-PARA-EC2"
  }
}



#Provisionar S3
resource "aws_s3_bucket" "b" {
  bucket = "INFORME-UM-NOME-PARA-BUCKET"
  acl    = "private"

  tags = {
    Name        = "INFORME-UMA-TAG-PARA-BUCKET
    Environment = "Dev"
  }
}
