locals {
  top_10_s3_common_tags = merge(local.top_10_common_tags, {
    service = "s3"
  })
}

benchmark "top_10_s3" {
  title         = "S3"
  #documentation = file("docs/s3.md")
  children = [
    benchmark.top_10_s3_bucket
  ]
  tags = local.top_10_s3_common_tags
}
