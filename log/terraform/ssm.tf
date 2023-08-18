resource "aws_ssm_parameter" "ssmparameteraccid" {
  name  = "/accID"
  type  = "String"
  value = "${data.aws_caller_identity.current.account_id}"
}