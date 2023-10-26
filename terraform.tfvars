# bucket_name = ["bucket-s3-01-himani", "bucket-s3-02-himani"] //set

# bucket_name = {
#   bucket-1 = "bucket-s3-01-himani" 
#   bucket-2 = "bucket-s3-02-himani"
#   bucket-3 = "bucket-s3-03-himani"
# }

tag_himani = {
  name    = "himani sharma"
  owner   = "himani.sharma@cloudeq.com"
  purpose = "training"
}

bucket_config = {
  "bucket-s3-01-himani" = {
    force_destroy    = true
    acl              = "private"
    object_ownership = "BucketOwnerPreferred"
    status           = "Enabled"
  }

  "bucket-s3-02-himani" = {
    force_destroy    = false
    acl              = "private"
    object_ownership = "BucketOwnerPreferred"
    status           = "Disabled"
  }


  "bucket-s3-03-himani" = {
    force_destroy    = true
    acl              = "public-read"
    object_ownership = "ObjectWriter"
    status           = "Enabled"
  }
}