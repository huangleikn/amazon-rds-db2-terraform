variable "name" {
  description = "RDS 参数组的名称"
  type        = string
}

variable "description" {
  description = "RDS 参数组的描述"
  type        = string
}

variable "family" {
  description = "数据库参数组家族，例如 db2-se-11.5"
  type        = string
}

variable "region" {
  description = "AWS 区域，例如 us-west-2"
  type        = string
  default     = "us-west-2"
}