-- This is partial check, in absence of Macie account table, query uses aws_macie2_classification_job to validate macie is enabled for the each region.
select
  -- Required Columns
  m.arn as resource,
  case
    when count(m.job_id) < 0 or m.arn is null then 'alarm'
    else 'ok'
  end as status,
  case
    when count(m.job_id) < 0 or m.arn is null then 'Macie disabled.'
    else 'Macie enabled.'
  end as reason,
  -- Additional Dimensions
  a.region,
  a.account_id
from
  aws_region as a
  left join aws_macie2_classification_job m on m.region = a.region
  group by m.job_id, m.arn, a.region, a.account_id