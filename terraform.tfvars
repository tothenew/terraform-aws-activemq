vpc_id            = "vpc-123456789"
cidr_blocks       = ["10.0.0.0/16"]
broker_name       = "test-broker-test"
instance_type     = "mq.t3.micro"
subnet_ids        = ["subnet-123456789"]
username          = "test-user"
password          = "password"
active_mq_sg_name = "test-activeMQ0sg"
common_tags = {
  "Project"     = "Internal"
  "Environment" = "Dev"
  "ManagedBy"   = "Terraform"
}
