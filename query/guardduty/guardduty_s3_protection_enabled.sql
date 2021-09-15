select
  -- Required Columns
  'arn:' || r.partition || ':guardduty:' || r.region || ':' || r.account_id || ':detector/' || detector_id as resource,
  case
    when a.region = any (
      ARRAY ['af-south-1', 'eu-south-1', 'cn-north-1', 'cn-northwest-1', 'me-south-1', 'us-gov-east-1']
    ) then 'skip'
    --  AWS  guardduty update-detector --detector-id 12abc34d567e8fa901bc2d34e56789f0 --data-sources '{"S3Logs":{"Enable":true}}' is used to enable / disable S3 Protection
    when status = 'ENABLED' and data_sources -> 'S3Logs' ->> 'Status' = 'ENABLED' then 'ok'
    else 'alarm'
  end as status,
  case
    -- https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-fsbp-controls.html (unsupported regions will be skipped )
    when a.region = any ( ARRAY ['af-south-1', 'eu-south-1', 'cn-north-1', 'cn-northwest-1', 'me-south-1', 'us-gov-east-1'] ) then 'Region not supported.'
    when status is null then 'No guardduty detector found.'
    when status = 'ENABLED' and data_sources -> 'S3Logs' ->> 'Status' = 'ENABLED' then r.title || ' enabled.'
    else r.title || ' disabled.'
  end as reason,
  -- Additional Dimensions
  a.region,
  a.account_id
from
  aws_region as a
  left join aws_guardduty_detector r on r.region = a.name;