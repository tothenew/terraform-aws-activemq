variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "cidr_blocks" {
  type        = list(string)
  description = "A list of CIDR block ID's to allow access"
  default     = ["10.0.0.0/16"]
}

variable "broker_name" {
  description = "The name of the MQ broker"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the MQ broker"
  type        = string
}

variable "subnet_ids" {
  description = "list of VPC subnets for activeMQ"
  type        = list(string)
}

variable "username" {
  description = "MQ broker username"
  type        = string
  sensitive   = true
  default     = "test"
}

variable "password" {
  description = "MQ broker password"
  type        = string
  sensitive   = true
  default     = "7vhgG0F7J8SNA1E0"
}

variable "engine_version" {
  description = "Engine version of the MQ broker"
  default     = "5.17.6"
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


variable "active_mq_sg_name" {
  description = "The name of the MQ security group"
  type        = string
  default     = "active-mq-sg"
}

variable "from_port" {
  description = "security groups from port"
  type        = number
  default     = 61616
}

variable "to_port" {
  description = "security groups to port"
  type        = number
  default     = 61616
}

variable "common_tags" {
  type        = map(string)
  description = "A map to add common tags to all the resources"
  default     = {
    "Project"     = "Internal"
    "Environment" = "Dev"
    "ManagedBy"   = "Terraform"
  }
}

variable "default_tags" {
  type        = map(string)
  description = "A map to add common tags to all the resources"
  default = {
    "Scope" : "ActiveMQ"
    "CreatedBy" : "Terraform"
  }
}
