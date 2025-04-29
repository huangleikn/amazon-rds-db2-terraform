variable "name" {
  description = "RDS Subnet Group 的名称"
  type        = string
}

variable "description" {
  description = "RDS Subnet Group 的描述"
  type        = string
}

variable "subnet_ids" {
  description = "用于 RDS 子网组的子网 ID 列表"
  type        = list(string)
}

variable "availability_zones" {
  description = "手动输入的可用区列表，用于确认子网分布在哪些 AZ"
  type        = list(string)
  default     = null
}

variable "region" {
  description = "AWS 区域，例如 us-west-2"
  type        = string
  default     = "us-west-2"
}