# AWS Top 10 Best Practices For Most Used Services

Multiple checks covering industry defined best practices for AWS most used services.


![image](https://raw.githubusercontent.com/turbot/steampipe-mod-aws-top10/main/docs/aws-top-ten-social-graphic.png)

Includes support for:

- [Top 10 security best practices for securing data in Amazon S3](https://aws.amazon.com/blogs/security/top-10-security-best-practices-for-securing-data-in-amazon-s3/)

## Quick start

1. Download and install Steampipe (https://steampipe.io/downloads). Or use Brew:

```shell
brew tap turbot/tap
brew install steampipe

steampipe -v
steampipe version 0.7.3
```

2. Install the AWS plugin

```shell
steampipe plugin install aws
```

3. Clone this repo

```sh
git clone https://github.com/turbot/steampipe-mod-aws-top10.git
cd steampipe-mod-aws-top10
```

4. Run all benchmarks:

```shell
steampipe check all
```

### Other things to checkout

Run an individual benchmark:

```shell
steampipe check benchmark.s3_top10
```

Use Steampipe introspection to view all current controls:

```
steampipe query "select resource_name from steampipe_control;"
```

Run a specific control:

```shell
steampipe check control.s3_bucket_versioning_objectlock_enabled
```

## Contributing

If you have an idea for additional compliance controls, or just want to help maintain and extend this mod ([or others](https://github.com/topics/steampipe-mod)) we would love you to join the community and start contributing. (Even if you just want to help with the docs.)

- **[Join our Slack community →](https://join.slack.com/t/steampipe/shared_invite/zt-oij778tv-lYyRTWOTMQYBVAbtPSWs3g)** and hang out with other Mod developers.
- **[Mod developer guide →](https://steampipe.io/docs/using-steampipe/writing-controls)**

Please see the [contribution guidelines](https://github.com/turbot/steampipe/blob/main/CONTRIBUTING.md) and our [code of conduct](https://github.com/turbot/steampipe/blob/main/CODE_OF_CONDUCT.md). All contributions are subject to the [Apache 2.0 open source license](https://github.com/turbot/steampipe-mod-aws-top10/blob/main/LICENSE).

`help wanted` issues:

- [Steampipe](https://github.com/turbot/steampipe/labels/help%20wanted)
- [AWS Top 10](https://github.com/turbot/steampipe-mod-aws-top10/labels/help%20wanted)
