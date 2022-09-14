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
  }
}

  

  

  
