module "mq_broker" {
  source                     = "./module/active-mq"
  broker_name                = var.broker_name
  instance_type              = var.instance_type
  security_groups            = [aws_security_group.active-mq_sg.id]
  subnet_ids                 = var.subnet_ids
  mq_username                = var.username
  mq_password                = var.password
  engine_version             = var.engine_version
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
  publicly_accessible        = var.publicly_accessible
  tags = merge(local.common_tags, tomap({
    "Name" : local.project_name_prefix
    })
  )

}