#Provisionar S3
resource "aws_s3_bucket" "b" {
  bucket = "INFORME-UM-NOME-PARA-BUCKET"
  acl    = "private"

  tags = {
    Name        = "INFORME-UMA-TAG-PARA-BUCKET
    Environment = "Dev"
  }
}
