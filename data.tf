data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = [local.account_name_prefix]
  }
}

data "aws_subnets" "private" {
  filter {
    name   = "tag:Name"
    values = ["${local.account_name_prefix}-private-*"]
  }
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }
}

data "aws_subnet" "private_details" {
  for_each = toset(data.aws_subnets.private.ids)
  id       = each.key
}