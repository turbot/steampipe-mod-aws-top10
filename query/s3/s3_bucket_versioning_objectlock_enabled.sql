select
  -- Required Columns
  arn as resource,
  case
    when versioning_enabled or object_lock_configuration ->> 'ObjectLockEnabled' = 'Enabled' then 'ok'
    else 'alarm'
  end status,
  case
    when object_lock_configuration ->> 'ObjectLockEnabled' = 'Enabled' then name || ' object lock enabled.'
    when versioning_enabled then name || ' versioning enabled.'
    else name || ' neither versioning nor object lock enabled.'
  end reason,
  -- Additional Dimensions
  region,
  account_id
from
  aws_s3_bucket;