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
variable "associate_public_ip_address" { default = true }
variable "tags" { default = {} }

