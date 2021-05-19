locals {
  top_10_common_tags = {
    framework = "top_10"
    plugin    = "aws"
  }
}

benchmark "top_10" {
  title         = "Top 10 Controls"
  description   = "Top 10 controls for AWS resources."
  #documentation = file("./docs/top-10-overview.md")
  children = [
    benchmark.top_10_ec2,
    benchmark.top_10_s3
  ]
  tags = local.top_10_common_tags
}
