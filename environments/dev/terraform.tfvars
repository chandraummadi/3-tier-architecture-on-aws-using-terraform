## Single instance (Linux EC2 example):

instances = [
  {
    name                    = "dev-instance-1"
    instance_spec           = { ami = "ami-12345678" }
    instance_type           = "t3.micro"
    subnet_id               = "subnet-abcdef12"
    vpc_security_group_ids  = ["sg-12345678"]
    key_name                = "dev-key"
    user_data               = "echo Hello World"
    user_data_base64        = ""
    associate_public_ip_address = true
    monitoring              = false
    iam_instance_profile    = ""
    create_iam_instance_profile = false
    tags                    = {}
    instance_tags           = {}
    volume_tags             = {}
    enable_volume_tags      = true
    root_block_device       = []
    ebs_block_device        = []
    cpu_core_count          = 1
    cpu_threads_per_core    = 1
    enclave_options_enabled = false
    metadata_options        = {}
    private_ip              = ""
    secondary_private_ips   = []
    ipv6_address_count      = 0
    ipv6_addresses          = []
  }
]


############################################
Multiple instances (3 Linux + 2 Windows):
######################################

instances = [
  # Linux Instances
  {
    name                    = "dev-linux-instance-1"
    instance_spec           = { ami = "ami-linux-12345678" }
    instance_type           = "t3.micro"
    subnet_id               = "subnet-abcdef12"
    vpc_security_group_ids  = ["sg-12345678"]
    key_name                = "dev-key"
    user_data               = "echo Hello Linux"
    user_data_base64        = ""
    associate_public_ip_address = true
    monitoring              = false
    iam_instance_profile    = ""
    create_iam_instance_profile = false
    tags                    = {}
    instance_tags           = {}
    volume_tags             = {}
    enable_volume_tags      = true
    root_block_device       = []
    ebs_block_device        = []
    cpu_core_count          = 1
    cpu_threads_per_core    = 1
    enclave_options_enabled = false
    metadata_options        = {}
    private_ip              = ""
    secondary_private_ips   = []
    ipv6_address_count      = 0
    ipv6_addresses          = []
  },
  {
    name                    = "dev-linux-instance-2"
    instance_spec           = { ami = "ami-linux-12345678" }
    instance_type           = "t3.micro"
    subnet_id               = "subnet-abcdef12"
    vpc_security_group_ids  = ["sg-12345678"]
    key_name                = "dev-key"
    user_data               = "echo Hello Linux"
    user_data_base64        = ""
    associate_public_ip_address = true
    monitoring              = false
    iam_instance_profile    = ""
    create_iam_instance_profile = false
    tags                    = {}
    instance_tags           = {}
    volume_tags             = {}
    enable_volume_tags      = true
    root_block_device       = []
    ebs_block_device        = []
    cpu_core_count          = 1
    cpu_threads_per_core    = 1
    enclave_options_enabled = false
    metadata_options        = {}
    private_ip              = ""
    secondary_private_ips   = []
    ipv6_address_count      = 0
    ipv6_addresses          = []
  },
  # Windows Instances
  {
    name                    = "dev-windows-instance-1"
    instance_spec           = { ami = "ami-windows-12345678" }
    instance_type           = "t3.micro"
    subnet_id               = "subnet-abcdef12"
    vpc_security_group_ids  = ["sg-12345678"]
    key_name                = "dev-key"
    user_data               = "echo Hello Windows"
    user_data_base64        = ""
    associate_public_ip_address = true
    monitoring              = false
    iam_instance_profile    = ""
    create_iam_instance_profile = false
    tags                    = {}
    instance_tags           = {}
    volume_tags             = {}
    enable_volume_tags      = true
    root_block_device       = []
    ebs_block_device        = []
    cpu_core_count          = 1
    cpu_threads_per_core    = 1
    enclave_options_enabled = false
    metadata_options        = {}
    private_ip              = ""
    secondary_private_ips   = []
    ipv6_address_count      = 0
    ipv6_addresses          = []
  },
  {
    name                    = "dev-windows-instance-2"
    instance_spec           = { ami = "ami-windows-12345678" }
    instance_type           = "t3.micro"
    subnet_id               = "subnet-abcdef12"
    vpc_security_group_ids  = ["sg-12345678"]
    key_name                = "dev-key"
    user_data               = "echo Hello Windows"
    user_data_base64        = ""
    associate_public_ip_address = true
    monitoring              = false
    iam_instance_profile    = ""
    create_iam_instance_profile = false
    tags                    = {}
    instance_tags           = {}
    volume_tags             = {}
    enable_volume_tags      = true
    root_block_device       = []
    ebs_block_device        = []
    cpu_core_count          = 1
    cpu_threads_per_core    = 1
    enclave_options_enabled = false
    metadata_options        = {}
    private_ip              = ""
    secondary_private_ips   = []
    ipv6_address_count      = 0
    ipv6_addresses          = []
  }
]
