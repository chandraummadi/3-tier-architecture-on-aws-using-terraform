output "instance_id_dev" {
  value = module.instance_dev.instance_id
}

output "private_ip_dev" {
  value = module.instance_dev.private_ip
}

output "public_ip_dev" {
  value = module.instance_dev.public_ip
}

output "instance_id_staging" {
  value = module.instance_staging.instance_id
}

output "private_ip_staging" {
  value = module.instance_staging.private_ip
}

output "public_ip_staging" {
  value = module.instance_staging.public_ip
}

output "instance_id_prod" {
  value = module.instance_prod.instance_id
}

output "private_ip_prod" {
  value = module.instance_prod.private_ip
}

output "public_ip_prod" {
  value = module.instance_prod.public_ip
}
