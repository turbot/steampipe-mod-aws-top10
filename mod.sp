mod "aws_top10" {
  # hub metadata
  title         = "AWS Top 10"
  description   = "Run individual configuration and security controls or full benchmarks for top 10 best practices controls across all your AWS accounts using Steampipe."
  color         = "#FF9900"
  documentation = file("./docs/index.md")
  icon          = "/images/mods/turbot/aws-top-ten.svg"
  categories    = ["aws", "compliance", "public cloud", "security"]

  opengraph {
    title       = "Steampipe Mod for AWS Top 10"
    description = "Run individual configuration and security controls or full benchmarks for top 10 best practices controls across all your AWS accounts using Steampipe."
    image       = "/images/mods/turbot/aws-top-ten-social-graphic.png"
  }
}
