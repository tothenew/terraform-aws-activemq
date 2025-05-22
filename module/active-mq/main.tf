resource "aws_mq_broker" "example" {
  broker_name       = var.broker_name
  engine_type       = "ActiveMQ"
  engine_version    = var.engine_version
  publicly_accessible = var.publicly_accessible

  host_instance_type     = var.instance_type
  auto_minor_version_upgrade = var.auto_minor_version_upgrade

  security_groups   = var.security_groups
  subnet_ids        = var.subnet_ids

  user {
    username        = var.mq_username
    password        = var.mq_password
  }

  tags              = var.tags
}
