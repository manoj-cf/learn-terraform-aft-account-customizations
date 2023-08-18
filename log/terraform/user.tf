# resource "aws_iam_policy_attachment" "attach-policy" {
#   name       = "sagemaker-policy-attachment"
#   users      = [aws_iam_user.user.name]
#   policy_arn = data.aws_iam_policy.sagemaker_policy.arn
# }