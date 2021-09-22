mod "aws_top10" {
  # hub metadata
  title         = "AWS Top 10"
  description   = "This Steampipe mod checks your Amazon Web Services (AWS) resources are compliant with top 10 recommended best practices."
  color         = "#FF9900"
  documentation = file("./docs/index.md")
  icon          = "/images/mods/turbot/aws-top-ten.svg"
  categories    = ["aws", "compliance", "public cloud", "security"]

  opengraph {
    title       = "Steampipe Mod for AWS Top 10"
    description = "This Steampipe mod checks your Amazon Web Services (AWS) resources are compliant with top 10 recommended best practices."
    image       = "/images/mods/turbot/aws-top-ten-social-graphic.png"
  }
}
