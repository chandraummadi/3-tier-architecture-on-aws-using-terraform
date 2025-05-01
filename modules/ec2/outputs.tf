output "instance_id" {
  value = aws_instance.this[0].id
}

output "private_ip" {
  value = aws_instance.this[0].private_ip
}

output "public_ip" {
  value = aws_instance.this[0].public_ip
  condition = aws_instance.this[0].associate_public_ip_address
}

output "arn" {
  value = aws_instance.this[0].arn
}