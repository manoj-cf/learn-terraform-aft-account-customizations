data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "shared_bucket" {
  bucket = "aft-shared-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
