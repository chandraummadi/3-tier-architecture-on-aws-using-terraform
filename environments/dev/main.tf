module "example_instance" {
  for_each = { for idx, instance in var.instances : instance.name => instance }

  source = "../modules/ec2-instance"

  name                         = each.value.name
  instance_spec                = each.value.instance_spec
  instance_type                = each.value.instance_type
  subnet_id                    = each.value.subnet_id
  vpc_security_group_ids       = each.value.vpc_security_group_ids
  key_name                     = each.value.key_name
  user_data                    = each.value.user_data
  user_data_base64             = each.value.user_data_base64
  associate_public_ip_address  = each.value.associate_public_ip_address
  monitoring                   = each.value.monitoring
  iam_instance_profile         = each.value.iam_instance_profile
  create_iam_instance_profile  = each.value.create_iam_instance_profile
  tags                         = each.value.tags
  instance_tags                = each.value.instance_tags
  volume_tags                  = each.value.volume_tags
  enable_volume_tags           = each.value.enable_volume_tags
  root_block_device            = each.value.root_block_device
  ebs_block_device             = each.value.ebs_block_device
  cpu_core_count               = each.value.cpu_core_count
  cpu_threads_per_core         = each.value.cpu_threads_per_core
  enclave_options_enabled      = each.value.enclave_options_enabled
  metadata_options             = each.value.metadata_options
  private_ip                   = each.value.private_ip
  secondary_private_ips        = each.value.secondary_private_ips
  ipv6_address_count           = each.value.ipv6_address_count
  ipv6_addresses               = each.value.ipv6_addresses
}

