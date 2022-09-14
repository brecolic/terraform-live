module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket-from-registry-09q098309182430982309812039"
  acl    = "private"

  versioning = {
    enabled = true
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-20220913154813195100000001"
    key= "terraform.tfstate"
    region="us-east-1"
    dynamodb_table="terraform-lock-table"
  }
}
  
resource "aws_dynamodb_table" "terraform_lock" {
    name           = "terraform-lock-table"
    read_capacity  = 5
    write_capacity = 5
    hash_key       = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
    tags = {
        "Name" = "State Lock Table"
    }
}

  

  

  
