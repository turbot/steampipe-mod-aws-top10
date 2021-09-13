locals {
  aws_top10_common_tags = {
    aws_top10 = "true"
    plugin    = "aws"
  }
}

benchmark "aws_top10" {
  title         = "AWS Top 10 Controls"
  description   = "Top 10 security best practices for securing data in AWS."
  children = [
    benchmark.s3_top10
  ]
  tags = local.aws_top10_common_tags
}
