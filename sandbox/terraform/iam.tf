#data "aws_caller_identity" "currentUser" {}

resource "aws_iam_group_policy" "s3_policy" {
  name  = "s3_policy"
  group = aws_iam_group.sys_analysts.name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_group" "sys_analysts" {
  name = "System-Analysts"
  path = "/"
}

resource "aws_iam_user_group_membership" "IT_Membership" {
 user = data.aws_caller_identity.current.user_id.name
 groups = [
   aws_iam_group.sys_analysts.name
 ]
}