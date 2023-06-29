data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "backup_bucket" {
  bucket = "aft-backup-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
