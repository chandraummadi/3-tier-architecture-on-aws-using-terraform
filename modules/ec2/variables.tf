variable "name" {}
variable "instance_spec" {
  type = object({
    ami = string
  })
  default = {
    ami = null
  }
}

variable "instance_type" {}
variable "cpu_core_count" { default = null }
variable "cpu_threads_per_core" { default = null }
variable "hibernation" { default = false }
variable "user_data" { default = null }
variable "user_data_base64" { default = null }
variable "user_data_replace_on_change" { default = false }
variable "availability_zone" { default = null }
variable "subnet_id" {}
variable "vpc_security_group_ids" { type = list(string) }
variable "key_name" { default = null }
variable "monitoring" { default = false }
variable "get_password_data" { default = false }
variable "iam_instance_profile" { default = null }
variable "create_iam_instance_profile" { default = false }
variable "associate_public_ip_address" { default = true }
variable "private_ip" { default = null }
variable "secondary_private_ips" { default = [] }
variable "ipv6_address_count" { default = null }
variable "ipv6_addresses" { default = [] }
variable "ebs_optimized" { default = false }
variable "cpu_options" { default = {} }
variable "capacity_reservation_specification" { default = {} }
variable "root_block_device" { default = [] }
variable "ebs_block_device" { default = [] }
variable "ephemeral_block_device" { default = [] }
variable "metadata_options" { default = {} }
variable "network_interface" { default = [] }
variable "private_dns_name_options" { default = {} }
variable "launch_template" { default = {} }
variable "maintenance_options" { default = {} }
variable "enclave_options_enabled" { default = false }
variable "source_dest_check" { default = true }
variable "disable_api_termination" { default = false }
variable "disable_api_stop" { default = false }
variable "instance_initiated_shutdown_behavior" { default = "stop" }
variable "placement_group" { default = null }
variable "tenancy" { default = null }
variable "host_id" { default = null }
variable "cpu_credits" { default = "standard" }
variable "timeouts" {
  default = {
    create = null
    update = null
    delete = null
  }
}
variable "tags" { default = {} }
variable "instance_tags" { default = {} }
variable "volume_tags" { default = {} }
variable "enable_volume_tags" { default = true }
variable "ignore_ami_changes" { default = false }
variable "create_spot_instance" { default = false }