data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "network_bucket" {
  bucket = "aft-network-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
