locals {
  top_10_ec2_common_tags = merge(local.top_10_common_tags, {
    service = "ec2"
  })
}

benchmark "top_10_ec2" {
  title         = "EC2"
  #documentation = file("docs/ec2.md")
  children = [
    benchmark.top_10_ec2_instance
  ]
  tags = local.top_10_ec2_common_tags
}
