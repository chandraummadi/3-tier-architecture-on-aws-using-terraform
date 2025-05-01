variable "name" {}
variable "instance_spec" {
  type = object({
    ami = string
  })
}
variable "instance_type" {}
variable "subnet_id" {}
variable "vpc_security_group_ids" {
  type = list(string)
}
variable "key_name" { default = null }
variable "user_data" { default = null }
variable "user_data_base64" { default = null }
variable "associate_public_ip_address" { default = true }
variable "monitoring" { default = false }
variable "iam_instance_profile" { default = null }
variable "create_iam_instance_profile" { default = false }
variable "tags" { default = {} }
variable "instance_tags" { default = {} }
variable "volume_tags" { default = {} }
variable "enable_volume_tags" { default = true }
variable "root_block_device" { default = [] }
variable "ebs_block_device" { default = [] }
variable "cpu_core_count" { default = null }
variable "cpu_threads_per_core" { default = null }
variable "enclave_options_enabled" { default = false }
variable "metadata_options" { default = {} }
variable "private_ip" { default = null }
variable "secondary_private_ips" { default = [] }
variable "ipv6_address_count" { default = null }
variable "ipv6_addresses" { default = [] }
