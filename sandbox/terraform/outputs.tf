output "name" {
  description = "The name of the Permission Set."
  value       = "${data.aws_caller_identity.current.account_id}"
}