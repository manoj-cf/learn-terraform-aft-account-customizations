data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "log_bucket" {
  bucket = "aft-log-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
