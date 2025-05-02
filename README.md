# 3-tier-architecture-on-aws-using-terraform
## Terraform code to create 3 tier architecture on aws

## AWS EC2 Instance Terraform module
### Structure Summary
```hcl
•	modules/ec2-instance/
Base module that provisions a single EC2 instance with all advanced options.
•	modules/ec2/
Wrapper module using for_each to create multiple EC2 instances using instance_specs.
•	environments/dev/
Example environment calling the wrapper module and providing instance specifications.
```


## Usage

### Single EC2 Instance
```hcl
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
```


### Multiple EC2 Instance

### Example – 3 Linux + 2 Windows Instances
```hcl
instance_specs = {
  # Linux Instances
  linux-1 = {
    ami                             = "ami-linux123"
    instance_type                   = "t3.micro"
    subnet_id                       = "subnet-abc123"
    key_name                        = "linux-key"
    associate_public_ip_address     = true
    private_ip                      = null
    secondary_private_ips           = []
    ipv6_address_count              = null
    ipv6_addresses                  = []
    vpc_security_group_ids          = ["sg-linux"]
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
      OS          = "Linux"
      Name        = "linux-1"
    }
    depends_on = []
  }

  linux-2 = linux-1
  linux-2.tags.Name = "linux-2"

  linux-3 = linux-1
  linux-3.tags.Name = "linux-3"

  # Windows Instances
  windows-1 = {
    ami                             = "ami-windows123"
    instance_type                   = "t3.large"
    subnet_id                       = "subnet-def456"
    key_name                        = "windows-key"
    associate_public_ip_address     = true
    private_ip                      = null
    secondary_private_ips           = []
    ipv6_address_count              = null
    ipv6_addresses                  = []
    vpc_security_group_ids          = ["sg-windows"]
    user_data                       = ""
    user_data_base64                = null
    user_data_replace_on_change     = false
    availability_zone               = null
    monitoring                      = false
    get_password_data               = true
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
      OS          = "Windows"
      Name        = "windows-1"
    }
    depends_on = []
  }

  windows-2 = windows-1
  windows-2.tags.Name = "windows-2"
}

common_tags = {
  Project     = "Demo"
  Environment = "dev"
}```
