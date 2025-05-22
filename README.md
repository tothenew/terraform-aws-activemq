# terraform-aws-activemq

[![Lint Status](https://github.com/tothenew/terraform-aws-activemq/workflows/Lint/badge.svg)](https://github.com/tothenew/terraform-aws-activemq/actions)
[![LICENSE](https://img.shields.io/github/license/tothenew/terraform-aws-activemq)](https://github.com/tothenew/terraform-aws-activemq/blob/master/LICENSE)

This module provisions and configures Amazon MQ for ActiveMQ, enabling secure and scalable message brokering within a region.

The following resources will be created:
- Brokers
- Configurations

## Usages
```
module "mq_broker {
  source                     = "./module/active-mq"
  broker_name                = "test-broker
  instance_type              = "mq.t3.micro"
  subnet_ids                 = ["subnet-123456789"]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_active-mq"></a> [active\_mq](#module\_active\_mq) | ./module/active-mq | n/a |

## Resources

| Name | Type |
|------|------|


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|

## Outputs

| Name | Description |
|------|-------------|


## Authors

Module managed by [TO THE NEW Pvt. Ltd.](https://github.com/tothenew)

## License

Apache 2 Licensed. See [LICENSE](https://github.com/tothenew/terraform-aws-activemq/blob/main/LICENSE) for full details.