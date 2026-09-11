resource "aws_wafv2_rule_group" "rate_limit" {
  name     = "rate-limit-rule-group"
  scope    = "REGIONAL"
  capacity = 100
  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "RateLimitMetric"
    sampled_requests_enabled   = true
  }
}
