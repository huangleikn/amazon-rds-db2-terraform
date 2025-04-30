provider "aws" {
  region = var.aws_region
}

resource "aws_db_instance" "db2_instance" {
  identifier              = var.db_instance_identifier
  engine                  = "db2-se"
  engine_version          = var.engine_version
  instance_class          = var.db_instance_class
  allocated_storage       = var.allocated_storage
  storage_type            = var.storage_type
  db_subnet_group_name    = var.db_subnet_group_name
  vpc_security_group_ids  = var.vpc_security_group_ids
  parameter_group_name    = var.db_parameter_group_name
  username                = var.master_username
  password                = var.master_password
  port                    = var.database_port
  # iops                    = var.iops 
  license_model           = "bring-your-own-license"
  multi_az                = false
  publicly_accessible     = false
  backup_retention_period = var.backup_retention_period
  # preferred_backup_window = var.preferred_backup_window
  # preferred_maintenance_window = var.preferred_maintenance_window
  tags                    = var.tags
  availability_zone       = "eu-central-1c"

  # Enable storage autoscaling
  # storage_throughput = 125
  max_allocated_storage = 1200

  # # Monitoring settings
  # monitoring_interval = 60
  # performance_insights_enabled = false
  # performance_insights_kms_key_arn = "" # If you want to encrypt Performance Insights data, provide a KMS key ARN here.
  # performance_insights_retention_period = 7

  # # Additional configuration
  # enable_performance_insights = false
  # copy_tags_to_snapshot = true
  # deletion_protection = false

  # Database authentication options
  iam_database_authentication_enabled = false

  # Maintenance options
  auto_minor_version_upgrade = true
  apply_immediately = true

  # Encryption at rest
  storage_encrypted = false
  kms_key_id = "" # If you want to encrypt the storage, provide a KMS key ID here.

  # Network configuration
  network_type = "IPV4"

  # Other options
  skip_final_snapshot = true
}