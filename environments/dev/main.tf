module "ec2" {
  source         = "../../modules/ec2"
  instance_specs = var.instance_specs
  common_tags    = var.common_tags
}