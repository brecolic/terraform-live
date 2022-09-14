module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket-from-registry-0309182430982309812039-q0394-0afsdd"
  acl    = "private"

  versioning = {
    enabled = true
  }
}


  

  
