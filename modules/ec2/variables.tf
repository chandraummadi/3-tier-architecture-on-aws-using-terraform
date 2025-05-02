variable "instance_specs" {
  description = "Map of instance specifications"
  type        = map(any)
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default     = {}
}