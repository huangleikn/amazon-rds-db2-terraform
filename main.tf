provider "aws" {
  region = var.region
}

resource "aws_db_parameter_group" "rds_parameter_group" {
  name        = var.name
  description = var.description
  family      = var.family

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}