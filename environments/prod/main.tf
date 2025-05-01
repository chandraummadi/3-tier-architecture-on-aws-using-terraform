module "example_instance" {
  source = "../modules/ec2-instance"

  name                         = var.name
  instance_spec                = var.instance_spec
  instance_type                = var.instance_type
  subnet_id                    = var.subnet_id
  vpc_security_group_ids       = var.vpc_security_group_ids

  key_name                     = var.key_name
  user_data                    = var.user_data
  user_data_base64             = var.user_data_base64
  associate_public_ip_address  = var.associate_public_ip_address
  monitoring                   = var.monitoring
  iam_instance_profile         = var.iam_instance_profile
  create_iam_instance_profile  = var.create_iam_instance_profile
  tags                         = var.tags
  instance_tags                = var.instance_tags
  volume_tags                  = var.volume_tags
  enable_volume_tags           = var.enable_volume_tags
  root_block_device            = var.root_block_device
  ebs_block_device             = var.ebs_block_device
  cpu_core_count               = var.cpu_core_count
  cpu_threads_per_core         = var.cpu_threads_per_core
  enclave_options_enabled      = var.enclave_options_enabled
  metadata_options             = var.metadata_options
  private_ip                   = var.private_ip
  secondary_private_ips        = var.secondary_private_ips
  ipv6_address_count           = var.ipv6_address_count
  ipv6_addresses               = var.ipv6_addresses
  ...
}
