################# Create Group #################
resource "aws_iam_group" "sys_analysts" {
  name = "System-Analysts"
  path = "/"
}

################# Create Permission Set #################
resource "aws_sso_permission_set" "s3radonly" {
  name        = "AWSS3ReadOnly"
  description = "Created by Terraform"
  instance_arn = "arn:aws:sso:::instance/ssoins-9f671d9da4"
}

# data "aws_iam_policy_document" "s3radonlypolicydoc" {
#   statement {
#     sid = "1"

#     actions = [
#       "s3:ListAllMyBuckets",
#       "s3:GetBucketLocation",
#     ]

#     resources = [
#       "arn:aws:s3:::*",
#     ]
#   }
# }

################# Attach Group and Permission Set to Account #################