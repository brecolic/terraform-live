module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket-from-registry-09q12831098309182430982309812039"
  acl    = "private"

  versioning = {
    enabled = true
  }
}


  

  
