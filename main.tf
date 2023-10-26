resource "aws_s3_bucket" "s3_loop" {
  for_each      = var.bucket_config
  bucket        = each.key
  force_destroy = each.value.force_destroy
  tags          = var.tag_himani

}

resource "aws_s3_bucket_acl" "himani_acl" {
  for_each = var.bucket_config
  bucket   = aws_s3_bucket.s3_loop[each.key].id
  acl      = each.value.acl
}

resource "aws_s3_bucket_ownership_controls" "himani_ownership" {
  for_each = var.bucket_config
  bucket   = each.key
  rule {
    object_ownership = each.value.object_ownership
  }
}

resource "aws_s3_bucket_versioning" "himani_versioning" {

  for_each = var.bucket_config
  bucket   = each.key
  versioning_configuration {
    status = each.value.status
  }
}