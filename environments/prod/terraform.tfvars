name = "prod-instance"
instance_spec = {
  ami = "ami-11223344"
}
instance_type = "t3.large"
subnet_id = "subnet-98765432"
vpc_security_group_ids = ["sg-34567890"]
key_name = "prod-key"
tags = {
  "Environment" = "prod"
}