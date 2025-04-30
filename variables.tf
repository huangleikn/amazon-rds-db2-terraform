variable "aws_region" {
  description = "The AWS region to create the resources in."
  type        = string
  default     = "us-east-1"
}

variable "db_instance_identifier" {
  description = "The name of the database instance."
  type        = string
  default     = "rds-dev"
}

variable "master_username" {
  description = "The master username for the database."
  type        = string
  default     = "masteruser"
}

variable "master_password" {
  description = "The master password for the database."
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "The compute and memory capacity of the database instance."
  type        = string
  default     = "db.m6g.large"
}

variable "allocated_storage" {
  description = "The amount of storage (in GB) to allocate for the database instance."
  type        = number
  default     = 200
}

variable "storage_type" {
  description = "The storage type for the database instance."
  type        = string
  default     = "gp2"
}

variable "engine_version" {
  description = "The version of the database engine."
  type        = string
  default     = "11.5.9.0-64000591/r1"
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group."
  type        = string
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security group IDs to associate with the DB instance."
  type        = list(string)
}

variable "db_parameter_group_name" {
  description = "The name of the DB parameter group."
  type        = string
}

variable "database_port" {
  description = "The port number on which the database accepts connections."
  type        = number
  default     = 50000
}

variable "backup_retention_period" {
  description = "The number of days for which automated backups are retained."
  type        = number
  default     = 7
}

variable "preferred_backup_window" {
  description = "The daily time range during which automated backups are created."
  type        = string
  default     = "07:00-09:00"
}

variable "preferred_maintenance_window" {
  description = "The weekly time range during which system maintenance can occur."
  type        = string
  default     = "sun:04:00-sun:07:00"
}

variable "tags" {
  description = "Tags to apply to the DB instance."
  type        = map(string)
  default     = {
    Name = "rds-dev"
    Backup = "TestDaily"
  }
}

# variable "iops" {
#   description = "Storage IOPS to be allocated"
#   type        = number
# }
