select
  -- Required Columns
  standards_arn as resource,
  case
  -- Following regions are skipped as not supported by Security Hub. Refer https://docs.aws.amazon.com/config/latest/developerguide/securityhub-enabled.html
  -- All supported AWS regions except China (Beijing), China (Ningxia), Asia Pacific (Osaka), Europe (Milan), Africa (Cape Town) Region
    when a.region = any (ARRAY ['af-south-1', 'eu-south-1', 'cn-north-1', 'cn-northwest-1', 'ap-northeast-3']) then 'skip'
    when r.name like 'AWS Foundational Security Best Practices%' and r.enabled_by_default then 'ok'
    else 'alarm'
  end as status,
  case
    when a.region = any (ARRAY ['af-south-1', 'eu-south-1', 'cn-north-1', 'cn-northwest-1', 'ap-northeast-3']) then 'Region not supported.'
    when r.name like 'AWS Foundational Security Best Practices%' and r.enabled_by_default then 'Security Hub enabled with ' || r.name || '.'
    else 'Security Hub disabled.'
  end as reason,
  -- Additional Dimensions
  a.region,
  a.account_id
from
  aws_region as a
  left join aws_securityhub_standards_subscription as r on r.region = a.name;