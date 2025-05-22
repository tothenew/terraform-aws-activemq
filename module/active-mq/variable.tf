variable "broker_name" {
  description = "The name of the Amazon MQ broker."
  type        = string
}

variable "instance_type" {
  description = "The instance type for the broker."
  type        = string
}

variable "security_groups" {
  description = "List of security group IDs to associate with the broker."
  type        = list(string)
}

variable "subnet_ids" {
  description = "List of subnet IDs to associate with the broker."
  type        = list(string)
}

variable "mq_username" {
  description = "The username for the Amazon MQ broker."
  type        = string
  sensitive   = true
}

variable "mq_password" {
  description = "The password for the Amazon MQ broker."
  type        = string
  sensitive   = true
}

variable "engine_version" {
  description = "The engine version of ActiveMQ."
  type        = string
}

variable "auto_minor_version_upgrade" {
  description = "Enable auto minor version upgrades for the broker."
  type        = bool
}

variable "tags" {
  description = "A map of tags to add to the broker."
  type        = map(string)
}

variable "publicly_accessible" {
  description = "Whether the broker should be publicly accessible."
  type        = bool
  default     = false
}
