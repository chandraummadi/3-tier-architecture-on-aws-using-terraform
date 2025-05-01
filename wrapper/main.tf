module "instance_dev" {
  source = "../dev"

  name                         = var.name
  instance_spec                = var.instance_spec
  instance_type                = var.instance_type
  subnet_id                    = var.subnet_id
  vpc_security_group_ids       = var.vpc_security_group_ids

  key_name                     = var.key_name
  user_data                    = var.user_data
  associate_public_ip_address  = var.associate_public_ip_address
  tags                         = var.tags
}

module "instance_staging" {
  source = "../staging"

  name                         = var.name
  instance_spec                = var.instance_spec
  instance_type                = var.instance_type
  subnet_id                    = var.subnet_id
  vpc_security_group_ids       = var.vpc_security_group_ids

  key_name                     = var.key_name
  user_data                    = var.user_data
  associate_public_ip_address  = var.associate_public_ip_address
  tags                         = var.tags
}

module "instance_prod" {
  source = "../prod"

  name                         = var.name
  instance_spec                = var.instance_spec
  instance_type                = var.instance_type
  subnet_id                    = var.subnet_id
  vpc_security_group_ids       = var.vpc_security_group_ids

  key_name                     = var.key_name
  user_data                    = var.user_data
  associate_public_ip_address  = var.associate_public_ip_address
  tags                         = var.tags
}
