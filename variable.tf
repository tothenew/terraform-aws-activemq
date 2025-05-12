variable "name" {
  type        = string
  description = "A string value to describe prefix of all the resources"
  default     = ""
}

variable "broker_name" {
  description = "The name of the MQ broker"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the MQ broker"
  default     = "mq.t3.micro"
  type        = string
}

variable "username" {
  description = "MQ broker username"
  type        = string
  sensitive   = true
}

variable "password" {
  description = "MQ broker password"
  type        = string
  sensitive   = true
}

variable "engine_version" {
  description = "Engine version of the MQ broker"
  default     = "5.18.4"
  type        = string
}

variable "auto_minor_version_upgrade" {
  description = "Enable auto minor version upgrade"
  type        = bool
  default     = true
}

variable "publicly_accessible" {
  description = "Whether the broker is publicly accessible"
  type        = bool
  default     = false
}

variable "common_tags" {
  type        = map(string)
  description = "A map to add common tags to all the resources"
  default     = {}
}

variable "default_tags" {
  type        = map(string)
  description = "A map to add common tags to all the resources"
  default = {
    "Scope" : "ActiveMQ"
    "CreatedBy" : "Terraform"
  }
}

variable "active_mq_sg_name" {
  description = "The name of the MQ security group"
  type        = string
}

variable "from_port" {
  description = "security groups from port"
  type        = number
  default     = 0
}

variable "to_port" {
  description = "security groups to port"
  type        = number
  default     = 65535
}