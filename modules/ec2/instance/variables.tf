variable "name" {}
variable "instance_spec" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "key_name" {}
variable "associate_public_ip_address" {}
variable "private_ip" {}
variable "secondary_private_ips" {
  default = []
}
variable "ipv6_address_count" {
  default = null
}
variable "ipv6_addresses" {
  default = []
}
variable "vpc_security_group_ids" {}
variable "user_data" {
  default = ""
}
variable "user_data_base64" {
  default = null
}
variable "user_data_replace_on_change" {
  default = false
}
variable "availability_zone" {
  default = null
}
variable "monitoring" {
  default = false
}
variable "get_password_data" {
  default = false
}
variable "iam_instance_profile" {
  default = null
}
variable "ebs_optimized" {
  default = false
}
variable "disable_api_termination" {
  default = false
}
variable "disable_api_stop" {
  default = false
}
variable "instance_initiated_shutdown_behavior" {
  default = "stop"
}
variable "placement_group" {
  default = null
}
variable "tenancy" {
  default = "default"
}
variable "host_id" {
  default = null
}
variable "cpu_credits" {
  default = "standard"
}
variable "cpu_core_count" {
  default = null
}
variable "cpu_threads_per_core" {
  default = null
}
variable "capacity_reservation_specification" {
  type    = map(any)
  default = {}
}
variable "root_block_device" {
  type    = list(map(any))
  default = []
}
variable "ebs_block_device" {
  type    = list(map(any))
  default = []
}
variable "metadata_options" {
  type    = map(any)
  default = {}
}
variable "enclave_options_enabled" {
  default = false
}
variable "source_dest_check" {
  default = true
}
variable "timeouts" {
  type = object({
    create = string
    update = string
    delete = string
  })
}
variable "tags" {
  type    = map(string)
  default = {}
}
variable "instance_tags" {
  type    = map(string)
  default = {}
}
variable "ignore_ami_changes" {
  default = false
}
variable "depends_on" {
  default = []
}
