variable "instances" {
  description = "List of instance configurations"
  type = list(object({
    name                    = string
    instance_spec           = object({
      ami = string
    })
    instance_type           = string
    subnet_id               = string
    vpc_security_group_ids  = list(string)
    key_name                = string
    user_data               = string
    user_data_base64        = string
    associate_public_ip_address = bool
    monitoring              = bool
    iam_instance_profile    = string
    create_iam_instance_profile = bool
    tags                    = map(string)
    instance_tags           = map(string)
    volume_tags             = map(string)
    enable_volume_tags      = bool
    root_block_device       = list(object({
      device_name = string
      volume_size = number
    }))
    ebs_block_device        = list(object({
      device_name = string
      volume_size = number
    }))
    cpu_core_count          = number
    cpu_threads_per_core    = number
    enclave_options_enabled = bool
    metadata_options        = map(string)
    private_ip              = string
    secondary_private_ips   = list(string)
    ipv6_address_count      = number
    ipv6_addresses          = list(string)
  }))
  default = []
}
