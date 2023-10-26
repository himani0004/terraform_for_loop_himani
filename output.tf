output "output_block" {
  value = [for i in aws_s3_bucket.s3_loop : i.arn]
  # value = aws_s3_bucket.s3_count.*.id
}
