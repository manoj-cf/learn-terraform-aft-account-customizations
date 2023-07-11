data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "security_bucket" {
  bucket = "aft-security-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
