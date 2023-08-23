data "aws_iam_policy" "awsadministratoraccess_policy" {
  #arn = "arn:aws:iam::aws:policy/AWSAdministratorAccess"
  arn = "arn:aws:sso:::permissionSet/ssoins-72237210185a1c22/ps-d8218cb6d461b51e"
}