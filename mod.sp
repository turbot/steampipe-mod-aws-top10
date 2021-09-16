mod "aws_top10" {
  # hub metadata
  title         = "AWS Top 10"
  description   = "Steampipe mod for checking if Amazon Web Services (AWS) resources are compliant with top 10 recommended best practices."
  color         = "#FF9900"
  documentation = file("./docs/index.md")
  icon          = "/images/mods/turbot/aws-top-ten.svg"
  categories    = ["aws", "top10", "compliance", "public cloud", "security"]

  opengraph {
    title       = "Steampipe Mod for AWS Top 10"
    description = "Steampipe mod for checking Amazon Web Services (AWS) resources are compliant with top 10 recommended best practices for most used services. Open source CLI. No DB required."
    image       = "/images/mods/turbot/aws-top-ten-social-graphic.png"
  }
}
