output "instance_ids" {
  description = "Map of instance IDs by instance name"
  value       = module.ec2.instance_ids
}

output "private_ips" {
  description = "Map of private IPs by instance name"
  value       = module.ec2.private_ips
}

output "public_ips" {
  description = "Map of public IPs by instance name"
  value       = module.ec2.public_ips
}
