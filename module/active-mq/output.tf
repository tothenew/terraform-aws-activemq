output "mq_broker_endpoints" {
  description = "The endpoints of the Amazon MQ broker"
  value = {
    ip_addresses      = aws_mq_broker.example.instances[*].ip_address
    endpoints         = aws_mq_broker.example.instances[*].endpoints
    # Individual protocol endpoints (if needed)
    mqtt_endpoint     = try(aws_mq_broker.example.instances[0].endpoints[0], null)
    stomp_endpoint    = try(aws_mq_broker.example.instances[0].endpoints[1], null)
    amqp_endpoint     = try(aws_mq_broker.example.instances[0].endpoints[2], null)
    openwire_endpoint = try(aws_mq_broker.example.instances[0].endpoints[3], null)
  }
}

output "mq_broker_arn" {
  description = "The ARN of the Amazon MQ broker"
  value       = aws_mq_broker.example.arn
}

output "mq_broker_web_console_url" {
  description = "The URL of the ActiveMQ Web Console"
  value       = "https://${aws_mq_broker.example.instances[0].endpoints[0]}:8162"
}