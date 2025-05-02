instance_specs = {
  app-server-1 = {
    ami                             = "ami-1234567890abcdef0"
    instance_type                   = "t3.micro"
    subnet_id                       = "subnet-abc123"
    key_name                        = "my-key"
    associate_public_ip_address     = true
    private_ip                      = null
    secondary_private_ips           = []
    ipv6_address_count              = null
    ipv6_addresses                  = []
    vpc_security_group_ids          = ["sg-0123456789abcdef0"]
    user_data                       = ""
    user_data_base64                = null
    user_data_replace_on_change     = false
    availability_zone               = null
    monitoring                      = false
    get_password_data               = false
    iam_instance_profile            = null
    ebs_optimized                   = false
    disable_api_termination         = false
    disable_api_stop                = false
    instance_initiated_shutdown_behavior = "stop"
    placement_group                 = null
    tenancy                         = "default"
    host_id                         = null
    cpu_credits                     = "standard"
    cpu_core_count                  = null
    cpu_threads_per_core            = null
    capacity_reservation_specification = {}
    root_block_device               = []
    ebs_block_device                = []
    metadata_options                = {}
    enclave_options_enabled         = false
    source_dest_check               = true
    timeouts = {
      create = "10m"
      update = "10m"
      delete = "10m"
    }
    tags = {
      Environment = "dev"
      Name        = "app-server-1"
    }
    depends_on = []
  }
}

common_tags = {
  Project     = "Demo"
  Environment = "dev"
}
