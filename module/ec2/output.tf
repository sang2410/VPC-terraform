output "id_ec2" {
  value = aws_instance.web.*.id
}