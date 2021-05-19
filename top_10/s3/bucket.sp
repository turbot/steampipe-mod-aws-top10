locals {
  top_10_s3_bucket_common_tags = merge(local.top_10_s3_common_tags, {
    resource = "bucket"
  })
}

benchmark "top_10_s3_bucket" {
  title         = "S3 Bucket"
  #documentation = file("docs/s3_bucket.md")
  children = [
    control.top_10_s3_bucket_1,
    control.top_10_s3_bucket_2,
    control.top_10_s3_bucket_3,
  ]
  tags = local.top_10_s3_bucket_common_tags
}

control "top_10_s3_bucket_1" {
  title         = "1 Buckets should have versioning enabled"
  description   = "List buckets that do not have versioning enabled."
  sql           = query.s3_bucket_versioning_enabled.sql
  #documentation = file("docs/s3_bucket.md")

  tags = local.top_10_s3_bucket_common_tags
}

control "top_10_s3_bucket_2" {
  title         = "2 Buckets should have default encryption enabled"
  description   = "List buckets that do not have default encryption enabled."
  sql           = query.s3_bucket_default_encryption_enabled.sql
  #documentation = file("docs/s3_bucket.md")

  tags = local.top_10_s3_bucket_common_tags
}

control "top_10_s3_bucket_3" {
  title         = "3 Buckets should block public access"
  description   = "List buckets that do not block public access."
  sql           = query.s3_bucket_public_access_blocked.sql
  #documentation = file("docs/s3_bucket.md")

  tags = local.top_10_s3_bucket_common_tags
}
