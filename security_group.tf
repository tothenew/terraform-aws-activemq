resource "aws_security_group" "active-mq_sg" {
  name        = var.active_mq_sg_name
  description = "active-mq security group"
  vpc_id      = var.vpc_id
  tags = merge(local.common_tags, tomap({
    "Name" : local.project_name_prefix
    })
  )

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }
}