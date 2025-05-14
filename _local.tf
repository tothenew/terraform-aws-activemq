locals {
  service_name_prefix = var.name == "" ? terraform.workspace : var.name
  project_name_prefix = var.name == "" ? terraform.workspace : var.name
  account_name_prefix = var.name == "" ? terraform.workspace : var.name
  common_tags         = length(var.common_tags) == 0 ? var.default_tags : merge(var.default_tags, var.common_tags)
}