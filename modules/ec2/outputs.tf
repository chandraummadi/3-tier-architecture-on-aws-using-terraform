output "instance_ids" {
  description = "Map of instance IDs by instance name"
  value = {
    for k, v in aws_instance.this :
    k => v.id
  }
}

output "private_ips" {
  description = "Map of private IPs by instance name"
  value = {
    for k, v in aws_instance.this :
    k => v.private_ip
  }
}

output "public_ips" {
  description = "Map of public IPs by instance name"
  value = {
    for k, v in aws_instance.this :
    k => v.public_ip
  }
}
