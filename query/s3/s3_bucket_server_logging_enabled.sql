select
  -- Required columns
  arn as resource,
  case
    when logging is not null then 'ok'
    else 'alarm'
  end as status,
  case
    when logging is not null then title ||  ' server access logging enabled.'
    else title ||  ' server access logging disabled.'
  end as reason,
  -- Additional columns
  region,
  account_id
from
  aws_s3_bucket
