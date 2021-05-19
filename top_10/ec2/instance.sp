locals {
  top_10_ec2_instance_common_tags = merge(local.top_10_ec2_common_tags, {
    resource = "instance"
  })
}

benchmark "top_10_ec2_instance" {
  title         = "EC2 Instance"
  #documentation = file("docs/ec2_instance.md")
  children = [
    control.top_10_ec2_instance_1,
    control.top_10_ec2_instance_2,
    control.top_10_ec2_instance_3
  ]
  tags = local.top_10_ec2_instance_common_tags
}

control "top_10_ec2_instance_1" {
  title         = "1 Instances should not be publicly accessible"
  description   = "List instances that are publicly accessible."
  sql           = query.ec2_instance_not_publicly_accessible.sql
  #documentation = file("docs/ec2_instance.md")

  tags = local.top_10_ec2_instance_common_tags
}

control "top_10_ec2_instance_2" {
  title         = "2 Instances should have detailed monitoring enabled"
  description   = "List instances that do not have detailed monitoring enabled."
  sql           = query.ec2_instance_detailed_monitoring_enabled.sql
  #documentation = file("docs/ec2_instance.md")

  tags = local.top_10_ec2_instance_common_tags
}

control "top_10_ec2_instance_3" {
  title         = "3 Instances should have termination protection enabled"
  description   = "List instances that do not have termination protection enabled."
  sql           = query.ec2_instance_termination_protection_enabled.sql
  #documentation = file("docs/ec2_instance.md")

  tags = local.top_10_ec2_instance_common_tags
}

