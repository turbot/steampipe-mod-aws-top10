---
repository: "https://github.com/turbot/steampipe-mod-aws-top10.git"
---

# AWS Top 10 Best Practices Mod

Run individual configuration, best practices controls or top 10 benchmarks for AWS services.

## References

[AWS](https://aws.amazon.com/) provides on-demand cloud computing platforms and APIs to authenticated customers on a metered pay-as-you-go basis.

[Top 10 security best practices for securing data in Amazon S3](https://aws.amazon.com/blogs/security/top-10-security-best-practices-for-securing-data-in-amazon-s3/) curated set of top 10 controls for securing your data in S3.

[Steampipe](https://steampipe.io) is an open source CLI to instantly query cloud APIs using SQL.

[Steampipe Mods](https://steampipe.io/docs/reference/mod-resources#mod) are collections of `named queries`, and codified `controls` that can be used to test current configuration of your cloud resources against a desired configuration.

## Documentation

- **[Benchmarks and controls →](https://hub.steampipe.io/mods/turbot/steampipe-mod-aws-top10/controls)**
- **[Named queries →](https://hub.steampipe.io/mods/turbot/steampipe-mod-aws-top10/queries)**

## Get started

Install the AWS plugin with [Steampipe](https://steampipe.io):
```shell
steampipe plugin install aws
```

Clone:
```sh
git clone https://github.com/turbot/steampipe-mod-aws-top10.git
cd steampipe-mod-aws-top10
```

Run all benchmarks:
```shell
steampipe check all
```

Run a single benchmark:
```shell
steampipe check benchmark.s3_top_10
```

Run a specific control:
```shell
steampipe check control.s3_bucket_versioning_enabled
```

### Credentials

This mod uses the credentials configured in the [Steampipe AWS plugin](https://hub.steampipe.io/plugins/turbot/aws).

### Configuration

No extra configuration is required.

## Get involved

* Contribute: [GitHub Repo](https://github.com/turbot/steampipe-mod-aws-top10)
* Community: [Slack Channel](https://join.slack.com/t/steampipe/shared_invite/zt-oij778tv-lYyRTWOTMQYBVAbtPSWs3g)