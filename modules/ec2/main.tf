module "ec2_instance" {
  for_each = var.instance_specs

  source = "./instance"

  name                         = each.key
  instance_spec                = each.value
  instance_type                = each.value.instance_type
  subnet_id                    = each.value.subnet_id
  key_name                     = each.value.key_name
  associate_public_ip_address  = each.value.associate_public_ip_address
  private_ip                   = each.value.private_ip
  secondary_private_ips        = each.value.secondary_private_ips
  ipv6_address_count           = each.value.ipv6_address_count
  ipv6_addresses               = each.value.ipv6_addresses
  vpc_security_group_ids       = each.value.vpc_security_group_ids
  user_data                    = each.value.user_data
  user_data_base64             = each.value.user_data_base64
  user_data_replace_on_change  = each.value.user_data_replace_on_change
  availability_zone            = each.value.availability_zone
  monitoring                   = each.value.monitoring
  get_password_data            = each.value.get_password_data
  iam_instance_profile         = each.value.iam_instance_profile
  ebs_optimized                = each.value.ebs_optimized
  disable_api_termination      = each.value.disable_api_termination
  disable_api_stop             = each.value.disable_api_stop
  instance_initiated_shutdown_behavior = each.value.instance_initiated_shutdown_behavior
  placement_group              = each.value.placement_group
  tenancy                      = each.value.tenancy
  host_id                      = each.value.host_id
  cpu_credits                  = each.value.cpu_credits
  cpu_core_count               = each.value.cpu_core_count
  cpu_threads_per_core         = each.value.cpu_threads_per_core
  capacity_reservation_specification = each.value.capacity_reservation_specification
  root_block_device            = each.value.root_block_device
  ebs_block_device             = each.value.ebs_block_device
  metadata_options             = each.value.metadata_options
  enclave_options_enabled      = each.value.enclave_options_enabled
  source_dest_check            = each.value.source_dest_check
  timeouts                     = each.value.timeouts
  instance_tags                = each.value.tags
  tags                         = merge(var.common_tags, each.value.tags)
  ignore_ami_changes           = contains(keys(each.value), "ignore_ami_changes") ? each.value.ignore_ami_changes : false
}
