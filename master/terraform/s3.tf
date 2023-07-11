data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "master_bucket" {
  bucket = "aft-master-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
