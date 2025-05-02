resource "aws_instance" "this" {
  count = 1

  ami           = var.instance_spec.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  associate_public_ip_address = var.associate_public_ip_address
  private_ip                  = var.private_ip
  secondary_private_ips       = var.secondary_private_ips
  ipv6_address_count          = var.ipv6_address_count
  ipv6_addresses              = var.ipv6_addresses

  vpc_security_group_ids = var.vpc_security_group_ids

  user_data                   = var.user_data
  user_data_base64            = var.user_data_base64
  user_data_replace_on_change = var.user_data_replace_on_change

  availability_zone = var.availability_zone

  monitoring           = var.monitoring
  get_password_data    = var.get_password_data
  iam_instance_profile = var.iam_instance_profile

  ebs_optimized = var.ebs_optimized

  disable_api_termination = var.disable_api_termination
  disable_api_stop        = var.disable_api_stop

  instance_initiated_shutdown_behavior = var.instance_initiated_shutdown_behavior

  placement_group = var.placement_group
  tenancy         = var.tenancy
  host_id         = var.host_id

  credit_specification {
    cpu_credits = var.cpu_credits
  }

  dynamic "cpu_options" {
    for_each = var.cpu_core_count != null && var.cpu_threads_per_core != null ? [1] : []
    content {
      core_count       = var.cpu_core_count
      threads_per_core = var.cpu_threads_per_core
    }
  }

  dynamic "capacity_reservation_specification" {
    for_each = length(var.capacity_reservation_specification) > 0 ? [1] : []
    content {
      capacity_reservation_preference = lookup(var.capacity_reservation_specification, "capacity_reservation_preference", null)
      capacity_reservation_target {
        capacity_reservation_id = lookup(var.capacity_reservation_specification, "capacity_reservation_id", null)
      }
    }
  }

  dynamic "root_block_device" {
    for_each = var.root_block_device
    content {
      volume_type           = lookup(root_block_device.value, "volume_type", null)
      volume_size           = lookup(root_block_device.value, "volume_size", null)
      delete_on_termination = lookup(root_block_device.value, "delete_on_termination", true)
      encrypted             = lookup(root_block_device.value, "encrypted", false)
      iops                  = lookup(root_block_device.value, "iops", null)
      throughput            = lookup(root_block_device.value, "throughput", null)
    }
  }

  dynamic "ebs_block_device" {
    for_each = var.ebs_block_device
    content {
      device_name           = ebs_block_device.value.device_name
      volume_type           = ebs_block_device.value.volume_type
      volume_size           = ebs_block_device.value.volume_size
      delete_on_termination = lookup(ebs_block_device.value, "delete_on_termination", true)
      encrypted             = lookup(ebs_block_device.value, "encrypted", false)
      iops                  = lookup(ebs_block_device.value, "iops", null)
      throughput            = lookup(ebs_block_device.value, "throughput", null)
    }
  }

  dynamic "metadata_options" {
    for_each = length(var.metadata_options) > 0 ? [1] : []
    content {
      http_endpoint               = lookup(var.metadata_options, "http_endpoint", null)
      http_tokens                 = lookup(var.metadata_options, "http_tokens", null)
      http_put_response_hop_limit = lookup(var.metadata_options, "http_put_response_hop_limit", null)
      instance_metadata_tags      = lookup(var.metadata_options, "instance_metadata_tags", null)
    }
  }

  enclave_options {
    enabled = var.enclave_options_enabled
  }

  source_dest_check = var.source_dest_check

  timeouts {
    create = var.timeouts.create
    update = var.timeouts.update
    delete = var.timeouts.delete
  }

  tags = merge({
    Name = var.name
  }, var.tags, var.instance_tags)

  lifecycle {
    ignore_changes = var.ignore_ami_changes ? ["ami"] : []
  }
}

### modules/ec2/variable.tf

variable "instance_specs" {
  description = "Map of instance specifications"
  type        = map(any)
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default     = {}
}