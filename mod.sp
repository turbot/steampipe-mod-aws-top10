mod "aws_top_10" {
  # hub metadata
  title          = "AWS Top 10"
  description    = "Steampipe mod for checking if Amazon Web Services (AWS) resources are compliant with top 10 recommended benchmarks."
  color          = "#FF9900"
  documentation  = file("./docs/index.md")
  icon           = "/images/mods/turbot/aws-compliance.svg"
  categories     = ["AWS", "CIS", "Compliance", "PCI DSS", "Public Cloud", "Security"]

  opengraph {
    title         = "Steampipe Mod for AWS Top 10"
    description   = "Compliance and audit reports, queries, and actions for AWS. Open source CLI. No DB required."
  }
}
